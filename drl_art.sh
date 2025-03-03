#!/bin/bash

# Cores ANSI
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# Função para mostrar a data e usuário
show_info() {
    echo -e "${CYAN}═════════════════════════════════════════${NC}"
    echo -e "${YELLOW}Date (UTC): $(date -u '+%Y-%m-%d %H:%M:%S')${NC}"
    echo -e "${YELLOW}User: $USER${NC}"
    echo -e "${CYAN}═════════════════════════════════════════${NC}\n"
}

# Arte ASCII Principal
show_art() {
echo -e "${RED}
╔════════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}
    ██████╗  ██████╗  ██╗      ${GREEN}███████╗██████╗ ██╗████████╗██╗ ██████╗ ███╗   ██╗
    ██╔══██╗ ██╔══██╗ ██║      ${GREEN}██╔════╝██╔══██╗██║╚══██╔══╝██║██╔═══██╗████╗  ██║
    ██║  ██║ ██████╔╝ ██║      ${GREEN}█████╗  ██║  ██║██║   ██║   ██║██║   ██║██╔██╗ ██║
    ██║  ██║ ██╔══██╗ ██║      ${GREEN}██╔══╝  ██║  ██║██║   ██║   ██║██║   ██║██║╚██╗██║
    ██████╔╝ ██║  ██║ ███████╗ ${GREEN}███████╗██████╔╝██║   ██║   ██║╚██████╔╝██║ ╚████║
    ╚═════╝  ╚═╝  ╚═╝ ╚══════╝ ${GREEN}╚══════╝╚═════╝ ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝${NC}"
echo -e "${RED}
╚════════════════════════════════════════════════════════════════════╝${NC}"
}

# Arte decorativa adicional
show_decoration() {
    echo -e "${PURPLE}
    ◢██████◣ ${CYAN}Desenvolvido por:${PURPLE} ◢██████◣
    ████████ ${YELLOW}DRLEdition19${PURPLE}   ████████
    ◥██████◤                 ◥██████◤${NC}\n"
}

# Limpa a tela
clear

# Executa todas as funções
show_info
show_art
show_decoration

# Mensagem adicional
echo -e "${CYAN}═════════════════════════════════════════${NC}"
echo -e "${YELLOW}Copyright © 2025 DRL Edition${NC}"
echo -e "${CYAN}═════════════════════════════════════════${NC}\n"