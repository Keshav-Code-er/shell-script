#!/bin/bash


for i in {1..100}
do
    echo $i

    done

 #all args are in $@

 for i in $@
 do
   yum install $i -y

   done  # [ centos@ip-172-31-94-198 ~/shell-script ]$ sudo sh 09-loops.sh git postfix cyrus-sasl-plain mailx mysql
   