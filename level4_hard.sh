#!/bin/bash

password_spot1=$[RANDOM%100];
password_spot2=$password_spot1+1;
password_spot3=$password_spot2+1;
password_spot4=$password_spot3+1;
password_spot5=$password_spot4+1;
password_spot6=$password_spot5+1;
password_spot7=$password_spot6+1;
password_spot8=$password_spot7+1;

declare -a LETTERS=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0");

declare -a WORDS=("inside" "jazz" "moth" "lamp" "light" "glass" "mattress" "pillow" "television" "whale" "spoon" "overt" "grab" "pull" "delicate" "obstruct" "tendency" "sore" "cloth" "redundant" "staking" "meek" "implant" "homely" "plan" "screw" "motivate" "stereo" "typed" "protective" "lacking" "verify" "camp" "wire" "umbrella" "eager" "weight" "competition" "shed" "irate" "seat" "scab" "square" "undo" "bat" "like" "pot" "land" "watch" "patch" "ripe" "eyes" "rabid" "brother" "nondescript" "use" "retire" "heal" "infect" "assert" "calculating" "versed" "teeny" "father" "ashamed" "occupy" "boundless" "reaction" "mom" "forbiden" "dangle" "concerned" "fantastic" "efficient" "convict" "sentence" "glamorous" "creator" "cow" "taking" "glib" "cruel" "tedious" "gain" "say" "wide-eyed" "stranger" "elbow" "wax" "beam" "burly" "order" "behold" "baseball" "library" "pollute" "sassy" "bread" "war" "slip" "silent" "fat" "soft" "unable" "ducks" "mellow" "sophisticated" "gag" "shock" "wealth" "summer" "stir" "tire" "replace" "bring" "vie" "refuse" "print" "sit" "nail" "snack" "sneeze" "assorted" "cracker" "converge" "psychedelic" "co-operate" "disturb" "pray" "hope" "substance" "nonchalant" "capture" "signal" "fretful" "consult" "ubiquitous" "output" "thirsty" "crayon" "many" "healthy" "quit" "expand" "rail" "wrench" "under" "stand" "hold" "late" "pump" "admit" "vein" "football" "flowery" "valuable" "outrageous" "fang" "grind" "secretary" "rhetorical" "love" "observant" "enlighten" "lock" "extend" "reset" "stitch" "run" "tremble" "anxious" "tourist" "expensive" "consort" "stone" "special" "magic" "justify" "redo" "exclaim" "boiling" "beggar" "weapon" "translate" "dogs" "fragile" "cook" "impossible" "selection" "insidious" "cattle" "envy" "bright" "teeth" "scarf" "polish" "rich" "clean" "indulge" "glow" "nation" "sponge" "aloof" "plod" "tree" "locket" "match" "tidy" "stingy" "rid" "little" "smelly" "male" "salute" "cause" "yawn" "scan" "question" "hinder" "pushy" "hit" "idolize" "deserted" "gun" "husky" "vacuous" "tank" "unequaled" "sacrifice" "remarkable" "call" "participate" "talk" "wrist" "observe" "zonked" "weave" "slink" "cakes" "tart" "stick" "recollect" "crush" "number" "material" "detach" "hall" "ultra" "spoil" "aboard" "bray" "curtain" "lie" "mould" "enchanting" "structure");

count=0;
while [ $count -le ${#WORDS[@]} ];
do
  char1=$[RANDOM%61];
  char2=$[RANDOM%61];
  char3=$[RANDOM%61];
  char4=$[RANDOM%61];
  char5=$[RANDOM%61];
  char6=$[RANDOM%61];
  char7=$[RANDOM%61];
  char8=$[RANDOM%61];

  if [ "${WORDS[$count]}" == "idolize" ];
  then
    ans=${level5_pass:0:1}${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]};
  elif [ "${WORDS[$count]}" == "implant" ];
  then
    ans=${level5_pass:1:1}${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]};
  elif [ "${WORDS[$count]}" == "impossible" ];
  then
    ans=${level5_pass:2:1}${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]};
  elif [ "${WORDS[$count]}" == "indulge" ];
  then
    ans=${level5_pass:3:1}${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]};
  elif [ "${WORDS[$count]}" == "infect" ];
  then
    ans=${level5_pass:4:1}${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]};
  elif [ "${WORDS[$count]}" == "inside" ];
  then
    ans=${level5_pass:5:1}${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]};
  elif [ "${WORDS[$count]}" == "insidious" ];
  then
    ans=${level5_pass:6:1}${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]};
  elif [ "${WORDS[$count]}" == "irate" ];
  then
    ans=${level5_pass:7:1}${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]};
  else
    ans=${LETTERS[$char1]}${LETTERS[$char2]}${LETTERS[$char3]}${LETTERS[$char4]}${LETTERS[$char5]}${LETTERS[$char6]}${LETTERS[$char7]}${LETTERS[$char8]};
  fi
  echo ${WORDS[$count]}" "$ans > /home/level4/oneline.txt;
  cat /home/level4/README.txt /home/level4/oneline.txt > /home/level4/README2.txt;
  rm /home/level4/README.txt;
  mv /home/level4/README2.txt /home/level4/README.txt;
  count=$((count+1));
done
chown level4:level4 /home/level4/README.txt
