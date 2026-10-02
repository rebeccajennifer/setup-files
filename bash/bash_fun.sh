#!/usr/bin/bash
#_______________________________________________________________________
# Similar to 'tree' on Linux: a depth-indented listing of folders and
# files, with unwanted folders and everything under them removed.
# Wraps the Windows tree.com and filters its output, so it needs
# cmd.exe on PATH (Git Bash, MSYS2, Cygwin).
#
# Parameters
#     $1  : Target folder to list. Defaults to '.' when omitted.
#     $2..: Additional shell globs matched against folder names,
#           in addition to the built-in default of '*cache*'.
#           Matching is against the folder's own name, not its
#           path, and is case sensitive. Quote each pattern so
#           bash does not expand it before the function sees it.
#
# Side Effects
#     Defining this function shadows tree.com under the bare name
#     'tree' for the rest of the shell session.
#
# Returns
#     Writes the filtered listing to stdout. Exit status is awk's,
#     so an unreadable target folder yields empty output rather
#     than a non-zero status.
#_______________________________________________________________________
tree() {

    # First arg is the directory to list; default to current
    local dir=${1:-.}

    # Drop the directory arg so "$@" holds only extra patterns
    (( $# )) && shift

    # Defaults plus caller patterns. Quote every pattern here,
    # or bash expands it against the current directory.
    local ignore=('*cache*' "$@")

    # Join into a single colon-delimited string for awk
    local pats
    pats=$(IFS=:; echo "${ignore[*]}")

    (
        # Subshell keeps the cd local to this command
        cd "$dir" || exit 1

        # cmd resolves tree.com internally, so no recursion.
        # //f //a survive Git Bash path mangling; /a gives
        # ASCII branch characters.
        cmd //c tree //f //a
    ) | awk -v pats="$pats" '
    # Translate a shell glob into an anchored regex
    function glob2re(g,   r, i, c) {
        r = "^"
        for (i = 1; i <= length(g); i++) {
            c = substr(g, i, 1)
            if (c == "*") r = r ".*"
            else if (c == "?") r = r "."
            else if (index("\\^$.[]|()*+?{}", c)) r = r "\\" c
            else r = r c
        }
        return r "$"
    }

    # Compile each pattern once
    BEGIN {
        n = split(pats, P, ":")
        for (i = 1; i <= n; i++) RE[i] = glob2re(P[i])
    }

    # Strip the CR that cmd.exe puts on every line
    { sub(/\r$/, "") }

    # Directory lines only: "|   +---name" or "\---name"
    /^[| ]*[+\\]---/ {
        # Column where this entry begins, used as depth
        d = index($0, "---") - 2

        # Directory name follows the "+---" marker
        name = substr($0, d + 5)

        # Back at or above the skipped depth: block is over
        if (skip && d <= p) skip = 0

        # Start skipping a matching dir, recording its depth
        if (!skip) {
            for (i = 1; i <= n; i++) {
                if (name ~ RE[i]) {
                    skip = 1
                    p = d
                    next
                }
            }
        }
    }

    # Print unless inside an ignored block
    !skip
    '
}

