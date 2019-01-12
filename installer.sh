#!/bin/bash
path=~/.radio

wget https://www.sqlite.org/2018/sqlite-amalgamation-3260000.zip
unzip sqlite-amalgamation-3260000.zip
cd sqlite-amalgamation-3260000
gcc shell.c sqlite3.c -lpthread -ldl -o sqlite3

mkdir $path
mv sqlite3 $path
cd ..
mv README.md radio.db $path
sudo mv radio /usr/local/bin
sudo chmod +x /usr/local/bin/radio
cd ..
sudo rm -r radio
