are -a LETTERS=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0");

password_spot=$[RANDOM%9];

count=0;
while [ $count -lt 10 ];
do
  char1=$[RANDOM%61];
  char2=$[RANDOM%61];
  char3=$[RANDOM%61];
  char4=$[RANDOM%61];
  char5=$[RANDOM%61];
  char6=$[RANDOM%61];
  char7=$[RANDOM%61];
  char8=$[RANDOM%61];

  rand_file=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};

  if (($count == $password_spot));
  then
    echo $level3_pass > /home/level2/$rand_file.txt
    chown level2:level2 /home/level2/$rand_file.txt
    count=$(($count+1));

  else
    string_len=$[RANDOM%50+25];
    count2=0;
    file_string="";
    while [ $count2 -lt $string_len ];
    do
      file_string="$file_string${LETTERS[$[RANDOM%61]]}";
      count2=$(($count2+1));
    done
    echo $file_string > /home/level2/$rand_file.txt
    chown level2:level2 /home/level2/$rand_file.txt
    count=$(($count+1));
  fi
done
