#! /bin/bash

echo "bienvenido a tu instalacion de programas en Linux V1.0, sientate y disfruta de la vida mientras instalamos toda esta porqueria ;D"

sleep 3

sudo apt update
sudo apt upgrade

sudo apt install -y i3 kitty neovim fish polybar rofi tmux nitrogen transmission zathura

echo "copiando dotfile del repo princial"

git clone https://github.com/Vali-CPP/Mein-Dotfiles.git ~/mein_dotfile

cd ~/mein_dotfile

cp -r i3/ kitty/ rofi/ polybar/  ~/.config

cp -r .tmux.conf ~/

echo "Instalando Oh My Fish"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install

echo "Agregando Oh My Fish al .bashrc"

echo "fish" | sudo tee -a ~/.bashrc

echo "Descargando Departure Mono y agregando Departure Mono"

if [ -d ~/Downloads ];
then
	curl --output ~/Downloads/DepartureMono.zip https://departuremono.com/assets/DepartureMono-1.420.zip
	sudo unzip ~/Downloads/DepartureMono.zip -d /usr/share/fonts
	fc-cache -v
else
	curl --output ~/Descargas/DepartureMono.zip https://departuremono.com/assets/DepartureMono-1.420.zip
	sudo unzip ~/Descargas/DepartureMono.zip -d /usr/share/fonts
	fc-cache -v
fi

#echo "Agregando alias a fish"

#alias --save n="sudo nvim"
#alias --save update="sudo apt update"
#alias --save upgrade="sudo apt upgrade"

echo "Instalando KickStarter para Nvim"

git clone https://github.com/nvim-lua/kickstart.nvim.git $HOME/.config/nvim
