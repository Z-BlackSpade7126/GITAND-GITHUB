congrats() {
    echo "Congratulations! You have given the right answer!"
}

control=0

while [[ $control -eq 0 ]]
do
    echo "What is the number of files in the current directory:"
    read response
    numfiles=$(ls -1 | wc -l)

    echo "You entered: $response"
    echo "The number of files is: $numfiles"

    if [[ $response -eq $numfiles ]]; then
        congrats
        control=1
    elif [[ $response -gt $numfiles ]]; then
        echo "You guessed a number too high"
    else
        echo "You guessed a number too low"
    fi
done
