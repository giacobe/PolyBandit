#!/bin/bash

echo "******************************************************************" >> /home/level7/README.txt;
echo "* Welcome to PolyBandit. This is a polymorphic clone of          *" >> /home/level7/README.txt;
echo "* Overthewire.org's Bandit exercise. The object is to figure out *" >> /home/level7/README.txt;
echo "* what the password is for the next level, then log into that    *" >> /home/level7/README.txt;
echo "* next level's account using SSH.                                *" >> /home/level7/README.txt;
echo "*                                                                *" >> /home/level7/README.txt;
echo "* You are at Level 7                                             *" >> /home/level7/README.txt;
echo "*                                                                *" >> /home/level7/README.txt;
echo "* Your password is in the inhere.txt file. However, it is not so *" >> /home/level7/README.txt;
echo "* easy to read the file.                                         *" >> /home/level7/README.txt;
echo "*                                                                *" >> /home/level7/README.txt;
echo "* When you get the password for the next level, log in to the    *" >> /home/level7/README.txt;
echo "* next level with the command:                                   *" >> /home/level7/README.txt;
echo "*         ssh level8@localhost                                   *" >> /home/level7/README.txt;
echo "*                                                                *" >> /home/level7/README.txt;
echo "******************************************************************" >> /home/level7/README.txt;
echo "cat /home/level7/README.txt" >> /home/level7/.bashrc

echo $level8_pass > /home/level7/inhere.txt;
chown level7:level7 /home/level7/inhere.txt;

chmod 333 /home/level7/inhere.txt;
