#!/usr/bin/bash
read -p "enter your name:" name
if((${#name} > 3))
then
  echo "Hello", $name,"How are you ?"
else
  echo "invalid name"
fi
