#!/bin/bash

echo "The password for the next level is in a hidden file calle inhere.txt" > /home/level1/README.txt;

echo $level2_pass > /home/level1/.inhere.txt;
chown level1:level1 /home/level1/.inhere.txt;
