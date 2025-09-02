#!/usr/bin/env bash

echo
echo -e "      \e]8;;https://github.com/AlexPhoenix42\e\\Powered by ${BLUE}github.com/AlexPhoenix42${RESET} 🌈🚀\e]8;;\e\\"
cat << "EOF"
#
#           ▛▀▖▜▘▛▀▘▛▀▘ ▌ ▌▜▘▛▀▘▌ ▌▛▀▘▛▀▖
#           ▌ ▌▐ ▙▄ ▙▄  ▚▗▘▐ ▙▄ ▌▖▌▙▄ ▙▄▘
#           ▌ ▌▐ ▌  ▌   ▝▞ ▐ ▌  ▙▚▌▌  ▌▚ 
#           ▀▀ ▀▘▘  ▘    ▘ ▀▘▀▀▘▘ ▘▀▀▘▘ ▘
#      🔍 Directory Diff Viewer with vimdiff
#      📁 Compare files, inspect differences
#      🛠️  Usage: ./vimdiffdirs.sh <dir1> <dir2>
#

EOF

dir1="$1"
dir2="$2"

if [ ! -d "$dir1" ] || [ ! -d "$dir2" ]; then
  echo "Usage: $0 <dir1> <dir2>"
  exit 1
fi

diff -qr "$dir1" "$dir2" | grep " differ" | while read -r _ file1 _ file2 _; do
  echo "Opening : $file1 <-> $file2"
  echo "You have: ↓"
  vimdiff "$file1" "$file2" </dev/tty >/dev/tty 2>&1
  echo "--------------------------------"
  echo "Press Enter for next file (or Ctrl+C to stop)..."
  read ans </dev/tty
done

