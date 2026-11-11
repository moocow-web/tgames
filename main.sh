games="./games"
PS3="What game would you like to play?"
gamesList=()
for filepath in "$games"/*; do
    if [[ -e "$filepath" ]]; then
        gamesList+=("$(basename "$filepath")")
    fi
done

select selectedGame in "${gamesList[@]}"; do
    if [[ -n "$selectedGame" ]]; then
        echo "Loading $selectedGame"
        bash ./games/$selectedGame
else
    echo "try again, you mistyped"
fi
done