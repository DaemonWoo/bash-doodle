echo "hello" | tr 'a-z' 'A-Z'

echo 'hello!!!?' | tr -d '!'


echo "name:alex:admin" | cut -d ':' -f 3

echo "abcdef" | cut -c 1-3

set -x
# sed - for transforming text
echo "hello world" | sed 's/world/Bash/'

# awk - for table processing
echo "Alice 25" | awk '{print$2}'

#cat <(echo eab)

cat <<EOF
hello
world
EOF

set +x

grep hello <<< "hello world"
