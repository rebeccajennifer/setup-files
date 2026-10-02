#_______________________________________________________________________
# The Visual Studio compilers require a setup script (vcvarsall.bat or
# VsDevCmd.bat) to be run before they work on the command line. That
# script sets INCLUDE, among other things.
#
# This file records the expected include paths in vs_include, compares
# them against the current INCLUDE, and exports VS_ENV_SET=1 on a
# match. Outside scripts read VS_ENV_SET to decide whether the rest of
# the environment still needs configuring.
#
# Source this file; do not execute it. A subshell would discard both
# variables.
#_______________________________________________________________________

export vs_include='C:\Program Files\Microsoft Visual Studio\18\Community\VC\Tools\MSVC\14.51.36231\include;C:\Program Files\Microsoft Visual Studio\18\Community\VC\Tools\MSVC\14.51.36231\ATLMFC\include;C:\Program Files\Microsoft Visual Studio\18\Community\VC\Auxiliary\VS\include;C:\Program Files (x86)\Windows Kits\10\include\10.0.26100.0\ucrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.26100.0\\um;C:\Program Files (x86)\Windows Kits\10\\include\10.0.26100.0\\shared;C:\Program Files (x86)\Windows Kits\10\\include\10.0.26100.0\\winrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.26100.0\\cppwinrt;C:\Program Files (x86)\Windows Kits\NETFXSDK\4.8\include\um'

echo "${BUNNY_STR} Checking for Visual Studio environment..."
echo

if [[ $INCLUDE == "$vs_include" ]]; then
  echo "${BUNNY_STR} Using Visual Studio includes"
  export VS_ENV_SET=1
else
  echo "${BUNNY_STR} No Visual Studio environment detected"
  export VS_ENV_SET=0
fi

