#!/bin/bash

for i in $(cut -d: -f1 /etc/passwd | grep level);
do
  userdel $i --force --remove;
done
