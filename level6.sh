#!/bin/bash

specified_user=$[RANDOM%10];
password_spot=$[RANDOM%10];

declare -a LETTERS=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0");

user_count=0;
while [ $user_count -lt 10 ];
do
  char1=$[RANDOM%36];
  char2=$[RANDOM%36];
  char3=$[RANDOM%36];
  char4=$[RANDOM%36];
  char5=$[RANDOM%36];
  char6=$[RANDOM%36];
  char7=$[RANDOM%36];
  char8=$[RANDOM%36];

  rand_user="level6_"${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};

  useradd $rand_user --create-home --password "$(openssl passwd -1 "password")" --shell /bin/bash --user-group
  text_count=0;
  while [ $text_count -lt 10 ];
  do

    if (($user_count == $specified_user && $text_count == $password_spot));
    then

      char1=$[RANDOM%36];
      char2=$[RANDOM%36];
      char3=$[RANDOM%36];
      char4=$[RANDOM%36];
      char5=$[RANDOM%36];
      char6=$[RANDOM%36];
      char7=$[RANDOM%36];
      char8=$[RANDOM%36];

      rand_file=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};
      hint=$rand_file;
      echo $level7_pass > /home/$rand_user/$rand_file.txt;
      chown $rand_user:level6 /home/$rand_user/$rand_file.txt;
      chown $rand_user:level6 /home/$rand_user;
      chmod g+rwx /home/$rand_user;
    else

      char1=$[RANDOM%36];
      char2=$[RANDOM%36];
      char3=$[RANDOM%36];
      char4=$[RANDOM%36];
      char5=$[RANDOM%36];
      char6=$[RANDOM%36];
      char7=$[RANDOM%36];
      char8=$[RANDOM%36];

      text_char1=$[RANDOM%36];
      text_char2=$[RANDOM%36];
      text_char3=$[RANDOM%36];
      text_char4=$[RANDOM%36];
      text_char5=$[RANDOM%36];
      text_char6=$[RANDOM%36];
      text_char7=$[RANDOM%36];
      text_char8=$[RANDOM%36];

      rand_file=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};

      rand_text=${LETTERS[$text_char1]}${LETTERS[$text_char2]}${LETTERS[$text_char3]}${LETTERS[$text_char4]}${LETTERS[$text_char5]}${LETTERS[$text_char6]}${LETTERS[$text_char7]}${LETTERS[$text_char8]};
    
      echo $rand_text > /home/$rand_user/$rand_file.txt;
      chown $rand_user:$rand_user /home/$rand_user/$rand_file.txt;
      fi
      text_count=$((text_count+1));
  done
  user_count=$((user_count+1));
done

echo "******************************************************************" >> /home/level6/README.txt;
echo "* Welcome to PolyBandit. This is a polymorphic clone of          *" >> /home/level6/README.txt;
echo "* Overthewire.org's Bandit exercise. The object is to figure out *" >> /home/level6/README.txt;
echo "* what the password is for the next level, then log into that    *" >> /home/level6/README.txt;
echo "* next level's account using SSH.                                *" >> /home/level6/README.txt;
echo "*                                                                *" >> /home/level6/README.txt;
echo "* You are at Level 6                                             *" >> /home/level6/README.txt;
echo "*                                                                *" >> /home/level6/README.txt;
echo "* The password for the next level is in a file called "$hint".txt*" >> /home/level6/README.txt;
echo "* but it is not in the current user's directory.  You have to    *" >> /home/level6/README.txt;
echo "* find it. It is unknown which user's directory it is in.        *" >> /home/level6/README.txt;
echo "*                                                                *" >> /home/level6/README.txt;
echo "* Good luck finding it.                                          *" >> /home/level6/README.txt;
echo "*                                                                *" >> /home/level6/README.txt;
echo "* When you get the password for the next level, log in to the    *" >> /home/level6/README.txt;
echo "* next level with the command:                                   *" >> /home/level6/README.txt;
echo "*         ssh level7@localhost                                   *" >> /home/level6/README.txt;
echo "*                                                                *" >> /home/level6/README.txt;
echo "******************************************************************" >> /home/level6/README.txt;
echo "cat /home/level6/README.txt" >> /home/level6/.bashrc


