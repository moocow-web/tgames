echo "Basic test game. WASD"
while true; do
    read rsn1 key
    case "$key" in
        w|W) echo "W";;
        a|A) echo "A";;
        s|S) echo "S";;
        d|D) echo "D";;
    esac
done