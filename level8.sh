#!/bin/bash

useradd level8_ans --create-home --password "$(openssl passwd -1 "password")" --shell /bin/bash --user-group

echo "The password for the next level is in a file called inhere.txt in level8_ans, but there is a problem when you try to log in. The password is password." > /home/level8/README.txt;

sudo echo "exit" >> /home/level8_ans/.bashrc;

echo $level9_pass > /home/level8_ans/inhere.txt;
chown level8_ans:level8_ans /home/level8_ans/inhere.txt;
