# # #!/bin/bash

sudo apt-get update

tools=(
    "git"
    "htop"
    "gcc"
    "make"
    "cmake"
    "nodejs"
    "python3"
    "python3-pip"
    "vscode"
    "postman"
    "mongodb -y"
    "postgresql"
    "npm"
    "tmux"
    "NCDU"
    )

nvm="https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh"

for tool in "${tools[@]}"; do
    read -p "Do you want to install $tool? (Y/N) " confirm
    if [[ $confirm == "y" ]]; then
        sudo apt-get install "$tool"
    fi 
done

read -p "Do you want to install NVM (node version manager) ? (Y/N)" confirm
if [[ $confirm == "Y" ]]; then 
    curl -o- "$nvm" | bash 
fi