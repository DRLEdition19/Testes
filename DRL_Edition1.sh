#!/bin/bash

# Texto a ser exibido
TEXT="DRL Edition"
LENGTH=${#TEXT}

# Cores ANSI
RESET="\e[0m"
BOLD="\e[1m"
CYAN="\e[36m"

# Limpa o terminal
clear

# Loop para animação
for ((i=0; i<=LENGTH; i++)); do
    clear
    echo -e "${BOLD}${CYAN}${TEXT:0:i}${RESET}"
    sleep 0.2
done

# Mantém o texto na tela por mais tempo
sleep 2
