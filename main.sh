#!/bin/bash

echo "[+] --- Flask projects's name: ---"
read name
mkdir $name
cd $name
echo [+] --- Directory $name created ---

python3 -m venv venv
echo [+] --- Virtual Enviroment initialized ---

. venv/bin/activate
echo [+] --- Virtual Enviroment activated ---

pip install Flask
echo [+] --- Flask installed ---

cp -r ~/workspace/cflask/files/src ./
echo [+] --- Files has reated ---
ls | batcat --theme=TwoDark
tree src/ | batcat --theme=TwoDark

echo [+] ----- Project $name created -----
