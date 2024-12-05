#!/bin/bash

#our program gola is to install mysql

USERID=$(id -u)

if [ $USERID -NE 0]
then 
   echo "ERROR:: Please run this script with root access"
   exit 1
   fi
   yum install mysql -y