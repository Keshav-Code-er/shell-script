#!/bin/bash


for i in {1..100}
do
    echo $i

    done

 #all args are in $@

 for i in $@
 do
   yum install $i -y

   done   