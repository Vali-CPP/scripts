#! /bin/bash

echo "bienvenido a tu instalacion de programas en Linux (Debian Based) V2.0, sientate y disfruta de la vida mientras instalamos toda esta porqueria ;D"

sleep 3

sudo apt update && sudo apt upgrade

sudo apt install -y kitty neovim fish rofi tmux nitrogen transmission zathura

echo "copiando dotfiles del repo princial"

git clone https://github.com/Vali-CPP/Mein-Dotfiles.git ~/mein_dotfile

cd ~/mein_dotfile

cp -r kitty/ ~/.config

cp -r .tmux.conf ~/

echo "Instalando Oh My Fish"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install

echo "Agregando Oh My Fish al .bashrc"

echo "fish" | sudo tee -a ~/.bashrc

echo "Descargando Departure Mono y agregando Departure Mono"

curl --output ~/Downloads/DepartureMono.zip https://departuremono.com/assets/DepartureMono-1.420.zip
sudo unzip ~/Downloads/DepartureMono.zip -d /usr/share/fonts
fc-cache -v

echo "Instalando KickStarter para Nvim"

git clone https://github.com/nvim-lua/kickstart.nvim.git $HOME/.config/nvim
