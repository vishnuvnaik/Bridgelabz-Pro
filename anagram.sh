prep()
{
fold -w! <<< "${1//[^[:alnum:]]/}" | tr '[:upper:]' '[:lower:]' | sort | tr -d '\n'
}
isAnagram(){
a = $(prep "$1")
b = $(prep "$2")
[[$a == $b]] && echo "yes" || echo "no"
}
