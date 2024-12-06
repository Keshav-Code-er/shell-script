#!/bin/bash

#our program goal is to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
# this function should validate the previous command and inform user it is success or faliure
VALIDATE(){
   # $1 will receive the argument1
   if [ $1 -ne 0 ]
   then
   echo "$2 ... FAILURE"
   exit 1
   else
   echo "$2 ... SUCCESS"
   fi 
}
then 
   echo "ERROR:: Please run this script with root access"
   exit 1
   fi

   # It is our responsibility to check installation is success or not
   yum install mysql -y

  VALIDATE $? "Installing MySQL"


   #Installation of postfix

   yum install postfix -y

   VALIDATE $? "Installing Postfix"

   