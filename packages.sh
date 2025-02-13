#!/bin/sh

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim tmux network-manager git tig openvpn gcc g++ htop silversearcher-ag mosh pwgen curl lm-sensors cmake postgresql net-tools -y

git config --global user.name "Agnar Martin Bjørnstad"
git config --global user.email "agnar.bjornstad@gmail.com"
git config --global core.editor "vim"

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

# Sublime text
sudo snap install sublime-text --classic

# Spotify
sudo snap install spotify

# Postman
sudo snap install postman

# Set favorite-apps
gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'org.gnome.Terminal.desktop', 'pycharm-professional_pycharm-professional.desktop', 'code_code.desktop', 'slack_slack.desktop', 'discord_discord.desktop', 'org.gnome.Nautilus.desktop']"

# Swap caps<->escape
setxkbmap -option caps:swapescape


# Install docker
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

