#!/bin/bash

password_spot=$[RANDOM%256];

declare -a LETTERS=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0");

echo > home/level3/oneline.txt;

count=0;
while [ $count -lt 256 ];
do

  if (($count == $password_spot));
  then
    char1=$[RANDOM%61];
    char2=$[RANDOM%61];
    char3=$[RANDOM%61];
    char4=$[RANDOM%61];
    char5=$[RANDOM%61];
    char6=$[RANDOM%61];
    char7=$[RANDOM%61];
    char8=$[RANDOM%61];

    rand_pass=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]}" "" "" "$level4_pass;
    echo $rand_pass > /home/level3/oneline.txt;
    cat /home/level3/inhere.txt /home/level3/oneline.txt > /home/level3/inhere2.txt;
    rm /home/level3/inhere.txt;
    mv /home/level3/inhere2.txt /home/level3/inhere.txt
    hint=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};
    count=$((count+1));
  else
    char1=$[RANDOM%61];
    char2=$[RANDOM%61];
    char3=$[RANDOM%61];
    char4=$[RANDOM%61];
    char5=$[RANDOM%61];
    char6=$[RANDOM%61];
    char7=$[RANDOM%61];
    char8=$[RANDOM%61];
    char9=$[RANDOM%61];
    char10=$[RANDOM%61];
    char11=$[RANDOM%61];
    char12=$[RANDOM%61];
    char13=$[RANDOM%61];
    char14=$[RANDOM%61];
    char15=$[RANDOM%61];
    char16=$[RANDOM%61];

    rand_pass=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]}" "" "" "${LETTERS[$char9]}${LETTERS[$char10]}${LETTERS[$char11]}${LETTERS[$char12]}${LETTERS[$char13]}${LETTERS[$char14]}${LETTERS[$char15]}${LETTERS[$char16]};

    echo $rand_pass > /home/level3/oneline.txt;
    cat /home/level3/inhere.txt /home/level3/oneline.txt > /home/level3/inhere2.txt;
    rm /home/level3/inhere.txt;
    mv /home/level3/inhere2.txt /home/level3/inhere.txt;
    count=$(($count+1));
  fi
done
chown level3:level3 /home/level3/README.txt;
rm /home/level3/oneline.txt;

echo "******************************************************************" >> /home/level3/README.txt;
echo "* Welcome to PolyBandit. This is a polymorphic clone of          *" >> /home/level3/README.txt;
echo "* Overthewire.org's Bandit exercise. The object is to figure out *" >> /home/level3/README.txt;
echo "* what the password is for the next level, then log into that    *" >> /home/level3/README.txt;
echo "* next level's account using SSH.                                *" >> /home/level3/README.txt;
echo "*                                                                *" >> /home/level3/README.txt;
echo "* You are at Level 3                                             *" >> /home/level3/README.txt;
echo "*                                                                *" >> /home/level3/README.txt;
echo "* The password for the next level is next to the phrase "$hint" *" >> /home/level3/README.txt;
echo "*                                                                *" >> /home/level3/README.txt;
echo "* When you get the password for the next level, log in to the    *" >> /home/level3/README.txt;
echo "* next level with the command:                                   *" >> /home/level3/README.txt;
echo "*         ssh level4@localhost                                   *" >> /home/level3/README.txt;
echo "*                                                                *" >> /home/level3/README.txt;
echo "******************************************************************" >> /home/level3/README.txt;

echo "cat /home/level3/README.txt" >> /home/level3/.bashrc


