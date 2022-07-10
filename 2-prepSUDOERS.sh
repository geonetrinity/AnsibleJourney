#!/bin/bash
for user in root
do
 for os in ubuntu centos
 do
  for instance in 1 2 3
  do
       echo "--- ${user}@${os}${instance}"
       scp ./AnsibleSUDO ${user}@${os}${instance}:/etc/sudoers.d
       echo ""
  done
 done
done
