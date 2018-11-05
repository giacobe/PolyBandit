#!/bin/bash

useradd account1 --create-home --password "$(openssl passwd -1 "password")" --shell /bin/bash --user-group

useradd account2 --create-home --password "$(openssl passwd -1 "password")" --shell /bin/bash --user-group

echo > home/account1/oneline.txt;
echo > home/account2/oneline.txt;

declare -a LETTERS=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0");

password_spot=$[RANDOM%256];
count=0;
while [ $count -lt 256 ];
do

  if (($count == $password_spot))
  then
    echo $level10_pass > /home/account1/oneline.txt;
    cat /home/account1/inhere.txt /home/account1/oneline.txt > /home/account1/inhere2.txt;
    rm /home/account1/inhere.txt;
    mv /home/account1/inhere2.txt /home/account1/inhere.txt
  else
    char1=$[RANDOM%61];
    char2=$[RANDOM%61];
    char3=$[RANDOM%61];
    char4=$[RANDOM%61];
    char5=$[RANDOM%61];
    char6=$[RANDOM%61];
    char7=$[RANDOM%61];
    char8=$[RANDOM%61];

    rand_pass=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};

    echo $rand_pass > /home/account1/oneline.txt;
    cat /home/account1/inhere.txt /home/account1/oneline.txt > /home/account1/inhere2.txt;
    rm /home/account1/inhere.txt;
    mv /home/account1/inhere2.txt /home/account1/inhere.txt
    echo $rand_pass > /home/account2/oneline.txt;
    cat /home/account2/inhere.txt /home/account2/oneline.txt > /home/account2/inhere2.txt;
    rm /home/account2/inhere.txt;
    mv /home/account2/inhere2.txt /home/account2/inhere.txt
    chown account1:account1 /home/account1/inhere.txt;
    chown account2:account2 /home/account2/inhere.txt;
  fi
  count=$((count+1));
done
