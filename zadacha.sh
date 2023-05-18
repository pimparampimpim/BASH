#!/bin/bash

if [[ ! -z $1 ]] && [[ ! -w $2 ]] && [[ -n $3 ]]
then 
    password=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w $2 | head -n $1)
    echo "Генерация нового пароля"
    sleep 3
    echo "Завершение генерации пароля"    
    sleep 2
    echo "$password" > $3
    exit 0
fi

else
    echo 'не хватает аргументов'
    exit 1
fi