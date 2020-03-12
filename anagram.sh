#!/bin/bash -x
prep() #function for some purposes listed below
{
  fold -w! <<< "${1//[^[:alnum:]]/}" | tr '[:upper:]' '[:lower:]' | sort | tr -d '\n' 
                                                                                # 1. Remove all alphanumerics
                                                                                # 2. Convert to all lowercasing all characters 
                                                                                # 3. Sorting all characters
                                                                                # 4. Stripping all newlines 
}
isAnagram(){ #function to check if given 2 arguments are anagrams
  a = $(prep "$1")
  b = $(prep "$2")
[[$a == $b]] && echo "yes" || echo "no"
}
