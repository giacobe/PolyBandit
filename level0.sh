#!/bin/bash

cp Instructions.txt /home/level0

echo "******************************************************************" >> /home/level0/README.txt;
echo "* The password for the next level is in a file called inhere.txt *" >> /home/level0/README.txt;
echo "******************************************************************" >> /home/level0/README.txt;
echo "cat ~/README.txt" >> /home/level0/.bashrc

echo $level1_pass > /home/level0/inhere.txt;
chown level0:level0 /home/level0/inhere.txt;
