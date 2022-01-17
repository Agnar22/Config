#!/bin/sh

sudo apt-get update
sudo apt-get install vim tmux network-manager git tig openvpn gcc g++ htop silversearcher-ag mosh -y

git config --global user.name "Agnar22"
git config --global user.email "agnar.bjornstad@gmail.com"

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


# VS Code
sudo snap install code --classic 

# Pycharm
sudo snap install pycharm-professional --classic

# Slack 
sudo snap install slack --classic

# Discord
sudo snap install discord


gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'org.gnome.Terminal.desktop', 'pycharm-professional_pycharm-professional.desktop', 'code_code.desktop', 'slack_slack.desktop', 'discord_discord.desktop', 'org.gnome.Nautilus.desktop']"

