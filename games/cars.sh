echo "Basic test game. WASD"
x=10
y=10
printf '\e[3J'
while true; do
    read -n 1 -s key
    case "$key" in
        w|W) y=$((y - 1));;
        a|A) x=$((x - 1));;
        s|S) y=$((y + 1));;
        d|D) x=$((x + 1));;
    esac
    clear && printf '\e[3J'
    printf "\033[$y;${x}H"
    echo "O"
done