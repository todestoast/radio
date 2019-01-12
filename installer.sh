#!/bin/bash
path='~/.radio'
mkdir $path
cd $path
wget https://www.sqlite.org/2018/sqlite-amalgamation-3260000.zip
unzip sqlite-amalgamation-3260000.zip
cd sqlite-amalgamation-3260000
gcc shell.c sqlite3.c -lpthread -ldl -o sqlite3
