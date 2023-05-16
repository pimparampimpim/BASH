#!/bin/bash
if [[ ! -z $1 ]]

then
password=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 12 | head -n $1)
echo "Генерация нового пароля"
sleep 3
echo "Завершение генерации пароля"    
sleep 2
echo "Новый пароль: $password"
fi
exit 0

else
echo 'не хватает аргументов'
fi
exit 1
