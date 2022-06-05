#!/bin/sh

for i in $(cut -d: -f1 /etc/passwd | grep level);
do
  deluser $i --remove;
done
