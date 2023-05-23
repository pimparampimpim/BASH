#!/bin/bash

if [[ ! -z $1 ]] && [[ ! -w $2 ]] && [[ -n $3 ]]
then 
    password=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w $2 | head -n $1)
    echo "Генерация нового пароля"
    echo "Завершение генерации пароля"
    echo "$password" > $3
    exit 0

else
    echo 'не хватает аргументов'
    exit 1
fi