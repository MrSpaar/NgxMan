#!/bin/bash

GRAY='\033[90m'
RED='\033[91m'
GREEN='\033[92m'
BOLD='\033[1m'
R='\033[0m'


if ! [ -x "$(command -v nginx)" ]; then
    printf "${BOLD}${GREEN}nginx${R}${GREEN} not found, installing it...${R}\n"

    if [ -x "$(command -v apt)" ]; then
        install_cmd="sudo apt install -y nginx"
    elif [ -x "$(command -v yum)" ]; then
        install_cmd="sudo yum install -y nginx"
    elif [ -x "$(command -v brew)" ]; then
        install_cmd="brew install nginx"
    else
        printf "${RED}No package manager found, please install nginx manually${R}\n"
        exit 1
    fi

    $install_cmd \
        && printf "${BOLD}${GREEN}nginx${R}${GREEN} installed successfully${R}\n" \
        || printf "${RED}nginx installation failed${R}\n"
fi


sudo cp ngxman /bin/ngxman \
    && sudo chmod +x /bin/ngxman \
    && printf "${BOLD}${GREEN}ngxman${R}${GREEN} installed in ${BOLD}/bin/ngxman${R}\n" \
    || printf "${RED}ngxman installation failed${R}\n"

sudo cp ngxman_completer /etc/bash_completion.d/ngxman \
    && printf "${BOLD}${GREEN}ngxman${R}${GREEN} bash completion installed in ${BOLD}/etc/bash_completion.d/ngxman${R}\n" \
    || printf "${RED}ngxman bash completion installation failed${R}\n"

# Get the RC file
if [ -f "~/.zshrc" ]; then
    RC_FILE="~/.zshrc"
elif [ -f "~/.bashrc" ]; then
    RC_FILE="~/.bashrc"
else
    printf "${RED}RC file not found, you can add ${BOLD}source /etc/bash_completion.d/ngxman${R}${RED} to your RC file manually${R}\n"
    exit 1
fi


if grep -q "source /etc/bash_completion.d/ngxman" "$RC_FILE"; then
    printf "${GREEN}ngxman bash completion already sourced in $RC_FILE${R}\n"
else
    echo "source /etc/bash_completion.d/ngxman" >> "$RC_FILE" \
        && printf "${GREEN}ngxman bash completion sourced in $RC_FILE${R}\n" \
        || printf "${RED}ngxman bash completion sourcing failed${R}\n"
fi

source "$RC_FILE" \
    && printf "${GREEN}Ngxman successfully installed${R}\n" \
    || printf "${RED}Ngxman installation failed${R}\n"