#!/bin/bash

# I don't think we need this - NG useradd level8_ans --create-home --password "$(openssl passwd -1 "password")" --shell /bin/bash --user-group

echo "******************************************************************" >> /home/level8/README.txt;
echo "* Welcome to PolyBandit. This is a polymorphic clone of          *" >> /home/level8/README.txt;
echo "* Overthewire.org's Bandit exercise. The object is to figure out *" >> /home/level8/README.txt;
echo "* what the password is for the next level, then log into that    *" >> /home/level8/README.txt;
echo "* next level's account using SSH.                                *" >> /home/level8/README.txt;
echo "*                                                                *" >> /home/level8/README.txt;
echo "* You are at Level 8                                             *" >> /home/level8/README.txt;
echo "*                                                                *" >> /home/level8/README.txt;
echo "* The password for the next level is in a file called inhere.txt *" >> /home/level8/README.txt;
echo "* but there is a problem when you try to log in.                 *" >> /home/level8/README.txt;
echo "*                                                                *" >> /home/level8/README.txt;
echo "* When you get the password for the next level, log in to the    *" >> /home/level8/README.txt;
echo "* next level with the command:                                   *" >> /home/level8/README.txt;
echo "*         ssh level9@localhost                                   *" >> /home/level8/README.txt;
echo "*                                                                *" >> /home/level8/README.txt;
echo "******************************************************************" >> /home/level8/README.txt;
echo "cat /home/level8/README.txt" >> /home/level8/.bashrc

# this goes in Level 9's setup sudo echo "exit" >> /home/level9/.bashrc;

echo $level9_pass > /home/level8/inhere.txt;
chown level8_ans:level8 /home/level8/inhere.txt;
