#!/bin/bash

specified_user=$[RANDOM%10];
password_spot=$[RANDOM%10];

declare -a LETTERS=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0");

user_count=0;
while [ $user_count -lt 10 ];
do
  char1=$[RANDOM%61];
  char2=$[RANDOM%61];
  char3=$[RANDOM%61];
  char4=$[RANDOM%61];
  char5=$[RANDOM%61];
  char6=$[RANDOM%61];
  char7=$[RANDOM%61];
  char8=$[RANDOM%61];

  rand_user="level6_"${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};

  useradd $rand_user --create-home --password "$(openssl passwd -1 "password")" --shell /bin/bash --user-group
  text_count=0;
  while [ $text_count -lt 10 ];
  do

    if (($user_count == $specified_user && $text_count == $password_spot));
    then

      char1=$[RANDOM%61];
      char2=$[RANDOM%61];
      char3=$[RANDOM%61];
      char4=$[RANDOM%61];
      char5=$[RANDOM%61];
      char6=$[RANDOM%61];
      char7=$[RANDOM%61];
      char8=$[RANDOM%61];

      rand_file=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};
      echo $level6_pass > /home/$rand_user/$rand_file.txt;
      chown $rand_user:$rand_user /home/$rand_user/$rand_file.txt;
    else

      char1=$[RANDOM%61];
      char2=$[RANDOM%61];
      char3=$[RANDOM%61];
      char4=$[RANDOM%61];
      char5=$[RANDOM%61];
      char6=$[RANDOM%61];
      char7=$[RANDOM%61];
      char8=$[RANDOM%61];

      text_char1=$[RANDOM%61];
      text_char2=$[RANDOM%61];
      text_char3=$[RANDOM%61];
      text_char4=$[RANDOM%61];
      text_char5=$[RANDOM%61];
      text_char6=$[RANDOM%61];
      text_char7=$[RANDOM%61];
      text_char8=$[RANDOM%61];

      rand_file=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};

      rand_text=${LETTERS[$text_char1]}${LETTERS[$text_char2]}${LETTERS[$text_char3]}${LETTERS[$text_char4]}${LETTERS[$text_char5]}${LETTERS[$text_char6]}${LETTERS[$text_char7]}${LETTERS[$text_char8]};
    
      echo $rand_text > /home/$rand_user/$rand_file.txt;
      chown $rand_user:$rand_user /home/$rand_user/$rand_file.txt;
      fi
      text_count=$((text_count+1));
  done
  user_count=$((user_count+1));
done
