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
       ssh ${user}@${os}${instance} "uname -n ; uptime"
       echo ""
    else
       echo "--- ${user}@${os}${instance}"
       sudo ssh ${user}@${os}${instance} "uname -n ; uptime;  sudo -U ansible -l"
       echo ""
    fi
  done
 done
done
