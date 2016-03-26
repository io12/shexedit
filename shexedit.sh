#!/bin/bash

if [ -z "$EDITOR" ]; then
	printf "Set the \$EDITOR environment variable to change your editor\n"
	printf "Defaulting to vi\n"
	printf "Press ENTER to continue\n"
	read
	EDITOR="vi"
fi

if ! hash xxd 2> /dev/null; then
	printf "xxd not installed. Please install xxd.\n"
	exit 1
fi

if [ -z "$1" ]; then
	printf "Usage: $0 [file]\n"
	exit 1
fi

tmphex="/tmp/$1.shex"

xxd "$1" > "$tmphex"

"$EDITOR" "$tmphex"

xxd -r "$tmphex" > "$1"

rm -f "$tmphex" > /dev/null

exit
