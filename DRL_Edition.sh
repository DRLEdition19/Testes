#!/bin/bash

# Cores ANSI
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
RESET='\033[0m'

# Função para limpar a tela
clear_screen() {
    printf "\033c"
}

# Função para obter a largura do terminal
get_terminal_width() {
    if command -v tput >/dev/null 2>&1; then
        tput cols
    else
        echo 80  # Valor padrão caso tput não esteja disponível
    fi
}

# Função para centralizar texto
center_text() {
    local text="$1"
    local width=$(get_terminal_width)
    local text_length=${#text}
    local padding=$(( (width - text_length) / 2 ))
    
    # Garantir que padding não seja negativo
    if [ $padding -lt 0 ]; then
        padding=0
    fi
    
    printf "%${padding}s" ""
    printf "%s\n" "$text"
}

# Função para exibir letra colorida
print_colored_letter() {
    local letter="$1"
    local color="$2"
    printf "${color}${letter}${RESET}"
}

# Função para animar texto letra por letra
type_text() {
    local text="$1"
    local delay="$2"
    local colors=("$RED" "$GREEN" "$BLUE" "$YELLOW" "$PURPLE" "$CYAN")
    local color_index=0
    
    for (( i=0; i<${#text}; i++ )); do
        local letter="${text:$i:1}"
        local color="${colors[$color_index]}"
        
        printf "${color}${letter}${RESET}"
        sleep "$delay"
        
        # Alternar para a próxima cor
        color_index=$(( (color_index + 1) % ${#colors[@]} ))
    done
    printf "\n"
}

# Função para animar o texto piscando
blink_text() {
    local text="$1"
    local times="$2"
    local delay="$3"
    
    for (( i=0; i<times; i++ )); do
        clear_screen
        printf "\n\n"
        center_text "$text"
        sleep "$delay"
        
        clear_screen
        printf "\n\n"
        sleep "$delay"
    done
}

# Função principal
main() {
    # Ocultar cursor
    printf "\033[?25l"
    
    # Limpar tela inicial
    clear_screen
    
    # Introdução
    printf "\n\n"
    center_text "Apresentando:"
    sleep 1
    clear_screen
    
    # Animação de pontos
    for i in {1..3}; do
        clear_screen
        printf "\n\n"
        center_text "."
        sleep 0.2
        
        clear_screen
        printf "\n\n"
        center_text ".."
        sleep 0.2
        
        clear_screen
        printf "\n\n"
        center_text "..."
        sleep 0.2
    done
    
    # Limpar a tela antes da animação principal
    clear_screen
    printf "\n\n"
    
    # Determinar o padding para centralizar
    local width=$(get_terminal_width)
    local text="DRL Edition"
    local text_length=${#text}
    local padding=$(( (width - text_length) / 2 ))
    
    # Garantir que padding não seja negativo
    if [ $padding -lt 0 ]; then
        padding=0
    fi
    
    # Imprimir o padding
    printf "%${padding}s" ""
    
    # Animar letra por letra
    type_text "DRL Edition" 0.1
    sleep 0.5
    
    # Animação de piscar
    for i in {1..5}; do
        clear_screen
        printf "\n\n"
        center_text "${YELLOW}${BOLD}DRL Edition${RESET}"
        sleep 0.2
        
        clear_screen
        printf "\n\n"
        sleep 0.2
    done
    
    # Exibição final
    clear_screen
    printf "\n\n\n"
    center_text "${YELLOW}${BOLD}★ DRL Edition ★${RESET}"
    center_text "Iniciado com sucesso!"
    printf "\n\n"
    
    # Mostrar cursor novamente
    printf "\033[?25h"
    
    sleep 2
}

# Lidar com interrupções para restaurar o cursor
trap 'printf "\033[?25h"; exit 0' INT TERM EXIT

# Executar o script
main
