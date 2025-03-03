#!/bin/bash

# Função para limpar a tela
clear_screen() {
    clear
}

# Função para centralizar texto
center_text() {
    local text="$1"
    local width=$(tput cols)
    local padding=$(( (width - ${#text}) / 2 ))
    printf "%${padding}s" ""
    printf "%s\n" "$text"
}

# Cores ANSI
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
RESET='\033[0m'

# Função para animar cada letra
animate_letter() {
    local letter="$1"
    local delay="$2"
    local colors=("$RED" "$GREEN" "$BLUE" "$YELLOW" "$PURPLE" "$CYAN")
    
    for color in "${colors[@]}"; do
        echo -ne "$color$letter$RESET"
        sleep "$delay"
        echo -ne "\b"
    done
    
    echo -ne "$YELLOW$letter$RESET"
}

# Função para fazer o texto aparecer letra por letra
type_text() {
    local text="$1"
    local delay="$2"
    
    for (( i=0; i<${#text}; i++ )); do
        local letter="${text:$i:1}"
        animate_letter "$letter" 0.05
        sleep "$delay"
    done
    echo
}

# Função para animar o texto
animate_text() {
    local text="$1"
    local times="$2"
    local delay="$3"
    
    for (( i=0; i<times; i++ )); do
        clear_screen
        echo
        echo
        center_text ""
        center_text ""
        center_text "$text"
        sleep "$delay"
        
        clear_screen
        echo
        echo
        center_text ""
        center_text "$text"
        center_text ""
        sleep "$delay"
    done
}

# Função principal
main() {
    clear_screen
    
    # Introdução
    echo
    echo
    center_text "Apresentando:"
    sleep 1
    clear_screen
    
    # Animação inicial
    for i in {1..3}; do
        echo
        echo
        center_text "."
        sleep 0.2
        clear_screen
        
        echo
        echo
        center_text ".."
        sleep 0.2
        clear_screen
        
        echo
        echo
        center_text "..."
        sleep 0.2
        clear_screen
    done
    
    # Animação letra por letra
    echo
    echo
    echo -n "                         "
    type_text "DRL Edition" 0.1
    sleep 0.5
    
    # Animação de piscar
    animate_text "${YELLOW}DRL Edition${RESET}" 5 0.2
    
    # Exibição final
    clear_screen
    echo
    echo
    echo
    center_text "${YELLOW}★ DRL Edition ★${RESET}"
    center_text "Iniciado com sucesso!"
    echo
    echo
    sleep 2
}

# Executar o script
main
