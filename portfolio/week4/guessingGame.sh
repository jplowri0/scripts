#!/bin/bash

guessProcess()
{

    if [[ $guessNumber < $setNumber ]]; then
        echo "Too Low"
    elif [[ $guessNumber > $setNumber ]]; then 
        echo "Too High"
    fi
}

wrongGuess()
{
    while [[ $guessNumber != $setNumber ]]; do 
        if (( $guessNumber < 1 || $guessNumber > 100 )); then
            printError "Guess must be between 1 & 100"
        else
            guessProcess
        fi
        read -p "Guess again: " guessNumber
    done
}

printError()
{
    echo -e "\033[31mERROR:\033[0m $1"
}

setNumber=42
read -p "Guess this number: " guessNumber
wrongGuess
echo "Well done!"

#    if [[ $guessNumber < 1 || $guessNumber > 100 ]]; then
#       printError