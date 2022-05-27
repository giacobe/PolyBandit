#!/bin/bash

echo "Please enter your PSU ID (abc1234):";
read name;

date=$(date);

echo "Setting up the levels of the game... please stand by...";

#level1_5=$name${date:0:10}"level1-5";
#level6_10=$name${date:0:10}"level6-10";
#level11_15=$name${date:0:10}"level11-15";
#level16_20=$name${date:0:10}"level16-20";

#Passwords for IST 451 Spring 2019
#level1_5=$name"LbNvKYAx8z2UtzaCIY7g";
#level6_10=$name"iunyNCeTzDpW4UxOlt";
#level11_15=$name"tLbJNRZX0DuoFbS";
#level16_20=$name"joWrjVhadKLqweras";

#Passwords for Cyber 100 Spring 2021
level1_5=$name"JbhQY4lLEw5YfUON";
level6_10=$name"2RPyQNYOY1sGO4wAT";
level11_15=$name"KFwdrBdRvWuWFsyA";
level16_20=$name"syA3LFSYJsGvrNGDs";

MD51_5=$(echo -n $level1_5 | md5sum);
MD56_10=$(echo -n $level6_10 | md5sum);
MD511_15=$(echo -n $level11_15 | md5sum);
MD516_20=$(echo -n $level16_20 | md5sum);

level1=${MD51_5:0:6};
level2=${MD51_5:6:6};
level3=${MD51_5:12:6};
level4=${MD51_5:18:6};
level5=${MD51_5:24:6};
level6=${MD56_10:0:6};
level7=${MD56_10:6:6};
level8=${MD56_10:12:6};
level9=${MD56_10:18:6};
level10=${MD56_10:24:6};
level11=${MD511_15:0:6};
level12=${MD511_15:6:6};
level13=${MD511_15:12:6};
level14=${MD511_15:18:6};
level15=${MD511_15:24:6};
level16=${MD516_20:0:6};
level17=${MD516_20:6:6};
level18=${MD516_20:12:6};
level19=${MD516_20:18:6};
level20=${MD516_20:24:6};

level0_pass="level0";
level1_pass=$(echo -n $level1 | base64);
level2_pass=$(echo -n $level2 | base64);
level3_pass=$(echo -n $level3 | base64);
level4_pass=$(echo -n $level4 | base64);
level5_pass=$(echo -n $level5 | base64);
level6_pass=$(echo -n $level6 | base64);
level7_pass=$(echo -n $level7 | base64);
level8_pass=$(echo -n $level8 | base64);
level9_pass=$(echo -n $level9 | base64);
level10_pass=$(echo -n $level10 | base64);
level11_pass=$(echo -n $level11 | base64);
level12_pass=$(echo -n $level12 | base64);
level13_pass=$(echo -n $level13 | base64);
level14_pass=$(echo -n $level14 | base64);
level15_pass=$(echo -n $level15 | base64);
level16_pass=$(echo -n $level16 | base64);
level17_pass=$(echo -n $level17 | base64);
level18_pass=$(echo -n $level18 | base64);
level19_pass=$(echo -n $level19 | base64);
level20_pass=$(echo -n $level20 | base64);

export level0_pass;
export level1_pass;
export level2_pass;
export level3_pass;
export level4_pass;
export level5_pass;
export level6_pass;
export level7_pass;
export level8_pass;
export level9_pass;
export level10_pass;
export level11_pass;
export level12_pass;
export level13_pass;
export level14_pass;
export level15_pass;
export level16_pass;
export level17_pass;
export level18_pass;
export level19_pass;
export level20_pass;


# creates new users for levels
adduser level0 --home /home/level0 --disabled-password --shell /bin/bash --gecos ""
adduser level1 --home /home/level1 --disabled-password --shell /bin/bash --gecos ""
adduser level2 --home /home/level2 --disabled-password --shell /bin/bash --gecos ""
adduser level3 --home /home/level3 --disabled-password --shell /bin/bash --gecos ""
adduser level4 --home /home/level4 --disabled-password --shell /bin/bash --gecos ""
adduser level5 --home /home/level5 --disabled-password --shell /bin/bash --gecos ""
adduser level6 --home /home/level6 --disabled-password --shell /bin/bash --gecos ""
adduser level7 --home /home/level7 --disabled-password --shell /bin/bash --gecos ""
adduser level8 --home /home/level8 --disabled-password --shell /bin/bash --gecos ""
adduser level9 --home /home/level9 --disabled-password --shell /bin/bash --gecos ""
adduser level10 --home /home/level10 --disabled-password --shell /bin/bash --gecos ""

# sets passwords for levels
echo -e "$level0_pass\n$level0_pass\n" | passwd level0
echo -e "$level1_pass\n$level1_pass\n" | passwd level1
echo -e "$level2_pass\n$level2_pass\n" | passwd level2
echo -e "$level3_pass\n$level3_pass\n" | passwd level3
echo -e "$level4_pass\n$level4_pass\n" | passwd level4
echo -e "$level5_pass\n$level5_pass\n" | passwd level5
echo -e "$level6_pass\n$level6_pass\n" | passwd level6
echo -e "$level7_pass\n$level7_pass\n" | passwd level7
echo -e "$level8_pass\n$level8_pass\n" | passwd level8
echo -e "$level9_pass\n$level9_pass\n" | passwd level9
echo -e "$level10_pass\n$level10_pass\n" | passwd level10

# add files for levels
bash PolyBandit/level0.sh;
bash PolyBandit/level1.sh;
bash PolyBandit/level2.sh;
bash PolyBandit/level3.sh;
bash PolyBandit/level4_easy.sh;
bash PolyBandit/level5.sh;
bash PolyBandit/level6.sh;
bash PolyBandit/level7.sh;
bash PolyBandit/level8.sh;
bash PolyBandit/level9.sh;
bash PolyBandit/level10.sh;

echo "Now starting the game. Please log in with the password 'level0'";

ssh level0@localhost;