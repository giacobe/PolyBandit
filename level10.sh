#!/bin/bash

useradd level10_account1 --create-home --password "$(openssl passwd -1 "password")" --shell /bin/bash --user-group

useradd level10_account2 --create-home --password "$(openssl passwd -1 "password")" --shell /bin/bash --user-group

echo > home/account1/oneline.txt;
echo > home/account2/oneline.txt;

declare -a LETTERS=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0");

password_spot=$[RANDOM%256];
count=0;
while [ $count -lt 256 ];
do

  if (($count == $password_spot))
  then
    echo $level10_pass > /home/level10_account1/oneline.txt;
    cat /home/level10_account1/inhere.txt /home/level10_account1/oneline.txt > /home/level10_account1/inhere2.txt;
    rm /home/level10_account1/inhere.txt;
    mv /home/level10_account1/inhere2.txt /home/level10_account1/inhere.txt
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

    echo $rand_pass > /home/level10_account1/oneline.txt;
    cat /home/level10_account1/inhere.txt /home/level10_account1/oneline.txt > /home/level10_account1/inhere2.txt;
    rm /home/level10_account1/inhere.txt;
    mv /home/level10_account1/inhere2.txt /home/level10_account1/inhere.txt
    echo $rand_pass > /home/level10_account2/oneline.txt;
    cat /home/level10_account2/inhere.txt /home/level10_account2/oneline.txt > /home/level10_account2/inhere2.txt;
    rm /home/level10_account2/inhere.txt;
    mv /home/level10_account2/inhere2.txt /home/level10_account2/inhere.txt
    chown level10_account1:level10_account1 /home/level10_account1/inhere.txt;
    chown level10_account2:level10_account2 /home/level10_account2/inhere.txt;
  fi
  count=$((count+1));
done
