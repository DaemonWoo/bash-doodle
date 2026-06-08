#!/bin/bash

tmpfile=$(mktemp)
echo "hello" > "$tmpfile"

trap 'rm -f "$tmpfile"' EXIT

set -e
trap 'echo "Ошибка на строке $LINENO с командой: $BASH_COMMAND"' ERR

echo "До ошибки"
false  # эта команда вернёт код 1 и вызовет trap
echo "После ошибки"  # не выполнится из-за set -e