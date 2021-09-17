#!/bin/bash

if [ $1 = "-f" ];then
      echo "Takw thwe psswd from file"
      string=$(cat $2)
   else
      string=$1
   fi

goodPasswd=true

# https://unix.stackexchange.com/questions/145150/verify-the-length-of-a-variable
# Checking if there is at list 10 chars
if [ ${#string} -ge 10 ]; then  echo     -e "\e[0;32m$1 good +10 char\e[0m"
else echo     -e "\e[0;31m$1:  bad -10 char \e[0m" ; goodPasswd=false 
fi

# Check if the argumanet conatain at list 1 number
#https://www.golinuxcloud.com/check-if-string-contains-numbers-shell-script/
if [[ $string =~ [0-9] ]];then
      echo "Input contains number"
   else
      echo "Input contains non numerical value" ; goodPasswd=false
   fi
#https://www.golinuxcloud.com/check-if-string-contains-numbers-shell-script/
   if [[ $string =~ [a-z] ]];then
      echo "Input contains  litil char"
   else
      echo "Input contains non  litil char" ; goodPasswd=false
   fi

if [[ $string =~ [A-Z] ]];then
      echo "Input contains  CAPITL char"
   else
      echo "Input contains non  CAPITL char" ; goodPasswd=false
   fi

if [ $goodPasswd = true ]; then
      echo    -e "\e[0;32m$1 good  pswort\e[0m"
   else
    echo     -e "\e[0;31m$1: not good  pswort   \e[0m" ; goodPasswd=false 
   fi
