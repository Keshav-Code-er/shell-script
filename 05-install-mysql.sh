#!/bin/bash

#our program gola is to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
   echo "ERROR:: Please run this script with root access"
   exit 1
   fi

   # It is our responsibility to check installation is success or not
   yum install mysql -y

   if [ $? -ne 0 ]
   then
   echo "Installation Error"
   exit 1
   else
   echo "Installation Successful"
   fi