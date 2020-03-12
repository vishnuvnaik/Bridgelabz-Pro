#!/usr/bin/bash -x
read -p "enter your name:" name #inputting a string and replacing words in it 
if((${#name} > 3))
then
  echo "Hello", $name,"How are you ?"
else
  echo "invalid name"
fi
