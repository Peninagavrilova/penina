#!/usr/bin/env bash
// a guessing games


function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please enter your guess."
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is less then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is greater then the true number"
        else
            echo " Congratulation you got the right answer!"
        break;
        fi
    done
}
