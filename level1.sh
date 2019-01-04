#!/bin/bash

echo "******************************************************************" >> /home/level1/README.txt;
echo "* Welcome to PolyBandit. This is a polymorphic clone of          *" >> /home/level1/README.txt;
echo "* Overthewire.org's Bandit exercise. The object is to figure out *" >> /home/level1/README.txt;
echo "* what the password is for the next level, then log into that    *" >> /home/level1/README.txt;
echo "* next level's account using SSH.                                *" >> /home/level1/README.txt;
echo "*                                                                *" >> /home/level1/README.txt;
echo "* You are at Level 0                                             *" >> /home/level1/README.txt;
echo "*                                                                *" >> /home/level1/README.txt;
echo "* The password for the next level is in a hidden file            *" >> /home/level1/README.txt;
echo "* called inhere.txt                                              *" >> /home/level1/README.txt;
echo "*                                                                *" >> /home/level1/README.txt;
echo "******************************************************************" >> /home/level1/README.txt;
echo "cat ~/README.txt" >> /home/level1/.bashrc

echo $level2_pass > /home/level1/.inhere.txt;
chown level1:level1 /home/level1/.inhere.txt;
