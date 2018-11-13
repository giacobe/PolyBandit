#!/bin/bash

echo "Your password is in the inhere.txt file. However, it is not so easy to read the file." > /home/level7/README.txt;

echo $level8_pass > /home/level7/inhere.txt;
chown level7:level7 /home/level7/inhere.txt;

chmod 333 /home/level7/inhere.txt;
