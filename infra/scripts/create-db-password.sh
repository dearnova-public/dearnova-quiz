#!/bin/bash

read -p 'DB User: ' dbUser
read -s -p 'DB Password: ' dbPassword

printf "\n"

md5=`md5 -q -s $dbPassword$dbUser`
pgmd5=`printf "md5%s" "$md5"`

echo $pgmd5 | pbcopy
printf "$pgmd5"
printf "\nMD5 Copied to clipboard\n"