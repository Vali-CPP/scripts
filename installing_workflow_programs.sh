#! /bin/bash

echo "Configuraste Git con tu nueva SSH?:"

read respuesta

if (( repuesta != "yes" or respuesta != "y" ))
then
	echo "pues vaya y configurela, mamon"
fi

sudo apt install -y i3 kitty neovim fish polybar rofi freetube tmux nitrogen

echo "copiando dotfile del repo princial"

git clone https://github.com/Vali-CPP/Mein-Dotfiles.git ~/mein_dotfile

cd ~/mein_dotfile

cp -r i3/ kitty/ rofi/ polybar/  ~/.config

cp -r .tmux.conf ~/

echo "Instalando Oh My Fish"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

echo "Agregando Oh My Fish al .bashrc"

echo "fish" | sudo tee -a ~/.bashrc


