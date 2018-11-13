#!/bin/bash

echo "Your password is in the inhere.txt file. However, it is not so easy to read the file." > /home/level9/README.txt;

echo $level10_pass > /home/level9/inhere.txt;
chown level9:level9 /home/level9/inhere.txt;

chmod 333 /home/level9/inhere.txt;
