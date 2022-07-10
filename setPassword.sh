#!/bin/bash
for user in root
do
 for os in ubuntu centos
 do
  for instance in 1 2 3
  do
    if [ $user == "ansible" ]
    then
       echo "--- ${user}@${os}${instance}"
       sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}
    else
       echo "--- ${user}@${os}${instance}"
       sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}
    fi
  done
 done
done
