#!/bin/bash

cp Instructions.txt /home/level0

echo "******************************************************************" >> /home/level0/README.txt;
echo "* Welcome to PolyBandit. This is a polymorphic clone of          *" >> /home/level0/README.txt;
echo "* Overthewire.org's Bandit exercise. The object is to figure out *" >> /home/level0/README.txt;
echo "* what the password is for the next level, then log into that    *" >> /home/level0/README.txt;
echo "* next level's account using SSH.                                *" >> /home/level0/README.txt;
echo "*                                                                *" >> /home/level0/README.txt;
echo "* You are at Level 0                                             *" >> /home/level0/README.txt;
echo "*                                                                *" >> /home/level0/README.txt;
echo "* The password for the next level is in a file called inhere.txt *" >> /home/level0/README.txt;
echo "*                                                                *" >> /home/level0/README.txt;
echo "* When you get the password for the next level, log in to the    *" >> /home/level0/README.txt;
echo "* next level with the command:                                   *" >> /home/level0/README.txt;
echo "*         ssh level1@localhost                                   *" >> /home/level0/README.txt;
echo "*                                                                *" >> /home/level0/README.txt;
echo "******************************************************************" >> /home/level0/README.txt;
echo "cat ~/README.txt" >> /home/level0/.bashrc

echo $level1_pass > /home/level0/inhere.txt;
chown level0:level0 /home/level0/inhere.txt;
