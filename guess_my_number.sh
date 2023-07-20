#!/bin/bash

:'
Name: Mohanprasath
Date:20.07.2023
Nationality:Indian
'

system_number=$RANDOM   #Bash fix the random number
no_of_chances=1        # Initializing attempt number as 1
for (( ; ; ))

do
echo "This is your chance no $no_of_chances "
read -p "Guess my number: " user_number            #User input
if [ $user_number -eq $system_number ]             #if Both user & system (bash) numbers are same , proceed the statement and break . Else move to else part
then
  echo "Your guess is correct" 
  echo "You guessd this with $no_of_chances many chances"
  break
else
  echo "Your guess is wrong" 
  if [ $user_number -ge $system_number ]
  then
     echo "Please select some lesser value than $user_number" 
  else 
     echo "Please select some higher value than $user_number"  
  fi
fi
 no_of_chances=$(( no_of_chances+1 ))

done
