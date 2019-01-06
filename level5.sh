#!/bin/bash

echo "******************************************************************" >> /home/level5/README.txt;
echo "* Welcome to PolyBandit. This is a polymorphic clone of          *" >> /home/level5/README.txt;
echo "* Overthewire.org's Bandit exercise. The object is to figure out *" >> /home/level5/README.txt;
echo "* what the password is for the next level, then log into that    *" >> /home/level5/README.txt;
echo "* next level's account using SSH.                                *" >> /home/level5/README.txt;
echo "*                                                                *" >> /home/level5/README.txt;
echo "* You are at Level 5                                             *" >> /home/level5/README.txt;
echo "*                                                                *" >> /home/level5/README.txt;
echo "* The password for the next level is in the file called          *" >> /home/level5/README.txt;
echo "* inhere.txt                                                     *" >> /home/level5/README.txt;
echo "*                                                                *" >> /home/level5/README.txt;
echo "* Good luck finding it.                                          *" >> /home/level5/README.txt;
echo "*                                                                *" >> /home/level5/README.txt;
echo "* When you get the password for the next level, log in to the    *" >> /home/level5/README.txt;
echo "* next level with the command:                                   *" >> /home/level5/README.txt;
echo "*         ssh level6@localhost                                   *" >> /home/level5/README.txt;
echo "*                                                                *" >> /home/level5/README.txt;
echo "******************************************************************" >> /home/level5/README.txt;
echo "cat /home/level5/README.txt" >> /home/level5/.bashrc

password_spot1=$[RANDOM%10];
password_spot2=$[RANDOM%10];
password_spot3=$[RANDOM%10];

declare -a LETTERS=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0");

count1=0;
while [ $count1 -lt 10 ];
do
  char1=$[RANDOM%61];
  char2=$[RANDOM%61];
  char3=$[RANDOM%61];
  char4=$[RANDOM%61];
  char5=$[RANDOM%61];
  char6=$[RANDOM%61];
  char7=$[RANDOM%61];
  char8=$[RANDOM%61];

  rand_dir1=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};
  echo "first level dir is "$rand_dir1;
  
  mkdir /home/level5/$rand_dir1;
  count2=0;
  while [ $count2 -lt 10 ];
  do
    char1=$[RANDOM%61];
    char2=$[RANDOM%61];
    char3=$[RANDOM%61];
    char4=$[RANDOM%61];
    char5=$[RANDOM%61];
    char6=$[RANDOM%61];
    char7=$[RANDOM%61];
    char8=$[RANDOM%61];

    rand_dir2=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};
    
    echo "second level dir is "$rand_dir2;

    mkdir /home/level5/$rand_dir1/$rand_dir2;
    count3=0;
    while [ $count3 -lt 10 ];
    do

      if (($count1 == $password_spot1 && $count2 == $password_spot2 && $count3 == $password_spot3));
      then
        echo $level6_pass > home/level5/$rand_dir1/$rand_dir2/inhere.txt
        chown level5:level5 home/level5/$rand_dir1/$rand_dir2/inhere.txt
        count3=$(($count3+1));
      else
        char1=$[RANDOM%61];
        char2=$[RANDOM%61];
        char3=$[RANDOM%61];
        char4=$[RANDOM%61];
        char5=$[RANDOM%61];
        char6=$[RANDOM%61];
        char7=$[RANDOM%61];
        char8=$[RANDOM%61];

        rand_file=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};

	echo "these are not the passwords you're looking for" > home/level5/$rand_dir1/$rand_dir2/$rand_file.txt
        chown level5:level5 home/level5/$rand_dir1/$rand_dir2/$rand_file.txt
        count3=$(($count3+1));
      fi
    done
    cd ..
    count2=$(($count2+1));
  done
  cd ..
  count1=$(($count1+1));
done
