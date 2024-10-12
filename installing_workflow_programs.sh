#! /bin/bash

sudo apt update
sudo apt upgrade

echo "Configuraste Git con tu nueva SSH?:"

read respuesta

if (( repuesta != "y" ))
then
	echo "pues vaya y configurela, mamon"
fi

sudo apt install -y i3 kitty neovim fish polybar rofi tmux nitrogen transmission zathura

echo "copiando dotfile del repo princial"

git clone https://github.com/Vali-CPP/Mein-Dotfiles.git ~/mein_dotfile

cd ~/mein_dotfile

cp -r i3/ kitty/ rofi/ polybar/  ~/.config

cp -r .tmux.conf ~/

echo "Instalando Oh My Fish"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

echo "Agregando Oh My Fish al .bashrc"

echo "fish" | sudo tee -a ~/.bashrc

echo "Descargando Departure Mono y agregando Departure Mono"

if [ -d ~/Downloads ];
then
	curl --output-file ~/Downloads/DepartureMono.zip https://departuremono.com/assets/DepartureMono-1.420.zip
	sudo unzip ~/Downloads/DepartureMono.zip -d /usr/share/fonts
	fc-cache -v
else
	curl --output-file ~/Descargas/DepartureMono.zip https://departuremono.com/assets/DepartureMono-1.420.zip
	sudo unzip ~/Descargas/DepartureMono.zip -d /usr/share/fonts
	fc-cache -v
fi

echo "Agregando alias a fish"

fish

alias --save n="sudo nvim"
alias --save update="sudo apt update"
alias --save upgrade="sudo apt upgrade"

echo "Instalando NvChad"

rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
