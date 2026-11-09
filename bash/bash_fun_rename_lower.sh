#_______________________________________________________________________
# Rename all regular files in a directory to lowercase, replacing
# any run of hyphens and/or whitespace with a single underscore.
#
# Usage: rename_lower [directory]   (defaults to current directory)
#_______________________________________________________________________
rename_lower() {
    local dir=${1:-.} path name new

    for path in "$dir"/*; do
        # Skip directories, symlinks to dirs, and the literal '*'
        # left behind when the directory is empty
        [[ -f $path ]] || continue

        # Strip the leading path to get just the filename
        name=${path##*/}

        # Lowercase the name, then collapse hyphen/whitespace runs
        # into one underscore
        new=$(printf '%s' "$name" \
            | tr '[:upper:]' '[:lower:]' \
            | sed -E 's/[-[:space:]]+/_/g')

        # Nothing to do if the name is already clean
        [[ $name == "$new" ]] && continue

        # Don't overwrite an existing file. The -ef test allows
        # case-only renames on case-insensitive filesystems, where
        # Foo.txt and foo.txt are the same file.
        if [[ -e $dir/$new && ! $path -ef $dir/$new ]]; then
            printf 'skip: %s -> %s (exists)\n' \
                "$name" "$new" >&2
            continue
        fi

        # '--' stops mv from treating names starting with '-' as
        # options
        mv -- "$path" "$dir/$new"
    done
}

