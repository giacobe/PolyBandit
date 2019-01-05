#!/bin/bash
echo "******************************************************************" >> /home/level9/README.txt;
echo "* Welcome to PolyBandit. This is a polymorphic clone of          *" >> /home/level9/README.txt;
echo "* Overthewire.org's Bandit exercise. The object is to figure out *" >> /home/level9/README.txt;
echo "* what the password is for the next level, then log into that    *" >> /home/level9/README.txt;
echo "* next level's account using SSH.                                *" >> /home/level9/README.txt;
echo "*                                                                *" >> /home/level9/README.txt;
echo "* You are at Level 9                                             *" >> /home/level9/README.txt;
echo "*                                                                *" >> /home/level9/README.txt;
echo "* The password for the next level is in a file called inhere.txt *" >> /home/level9/README.txt;
echo "* However, it is not so easy to read the file.                   *" >> /home/level9/README.txt;
echo "*                                                                *" >> /home/level9/README.txt;
echo "* When you get the password for the next level, log in to the    *" >> /home/level9/README.txt;
echo "* next level with the command:                                   *" >> /home/level9/README.txt;
echo "*         ssh level10@localhost                                  *" >> /home/level9/README.txt;
echo "*                                                                *" >> /home/level9/README.txt;
echo "******************************************************************" >> /home/level9/README.txt;
echo "cat /home/level9/README.txt" >> /home/level9/.bashrc
echo "#this next line will cause the account to immediately logout" >> /home/level9/.bashrc;
echo "exit" >> /home/level9/.bashrc;

echo $level10_pass > /home/level9/inhere.txt;
chown level9:level9 /home/level9/inhere.txt;

chmod 000 /home/level9/inhere.txt;
