# This file is licensed under the GPLv2+. Please see COPYING for more information.

clip() {
   (echo "${1}" | { read pwd; powershell.exe "Set-Clipboard '${pwd//\'/\'\'}'"; sleep ${CLIP_TIME:-10}; powershell.exe "Set-Clipboard ''"; } &) &> /dev/null
   echo "Copied ${2} to clipboard. Will clear in ${CLIP_TIME:-10} seconds."
}

