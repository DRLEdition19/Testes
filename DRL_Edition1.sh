#!/bin/bash
clear

# Exibe mensagem inicial
echo "Apresentando..."
sleep 2

# Limpa o terminal
clear

# Informações do sistema
echo -e "Current Date and Time (UTC - YYYY-MM-DD HH:MM:SS formatted):"
echo -e "2025-03-03 15:57:50"
echo -e "Current User's Login: DRLEdition19"
echo

# Códigos de cores ANSI
blue="\e[34m"   # cor final: azul
reset="\e[0m"

# Vetor com 5 cores para a animação (exceto azul)
colors=("\e[31m" "\e[32m" "\e[33m" "\e[35m" "\e[37m")

# Arte ASCII do DRL Edition
ascii_art=(
"██████╗  ██████╗  ██╗         ███████╗██████╗ ██╗████████╗██╗ ██████╗ ███╗   ██╗"
"██╔══██╗██╔══██╗ ██║         ██╔════╝██╔══██╗██║╚══██╔══╝██║██╔═══██╗████╗  ██║"
"██║  ██║██████╔╝ ██║         █████╗  ██║  ██║██║   ██║   ██║██║   ██║██╔██╗ ██║"
"██║  ██║██╔══██╗ ██║         ██╔══╝  ██║  ██║██║   ██║   ██║██║   ██║██║╚██╗██║"
"██████╔╝██║  ██║ ███████╗    ███████╗██████╔╝██║   ██║   ██║╚██████╔╝██║ ╚████║"
"╚═════╝ ╚═╝  ╚═╝ ╚══════╝    ╚══════╝╚═════╝ ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝"
)

# Animação da arte ASCII
for ((k=0; k<5; k++)); do
    clear
    # Mostra informações do sistema novamente após cada clear
    echo -e "Current Date and Time (UTC - YYYY-MM-DD HH:MM:SS formatted):"
    echo -e "2025-03-03 15:57:50"
    echo -e "Current User's Login: DRLEdition19"
    echo
    
    # Escolhe cor aleatória
    rand_index=$(( RANDOM % ${#colors[@]} ))
    color="${colors[$rand_index]}"
    
    # Mostra a arte ASCII na cor atual
    for line in "${ascii_art[@]}"; do
        echo -e "${color}${line}${reset}"
    done
    sleep 0.2
done

# Mostra a versão final em azul
clear
echo -e "Current Date and Time (UTC - YYYY-MM-DD HH:MM:SS formatted):"
echo -e "2025-03-03 15:57:50"
echo -e "Current User's Login: DRLEdition19"
echo
for line in "${ascii_art[@]}"; do
    echo -e "${blue}${line}${reset}"
done

# Pula uma linha
echo ""

# Mensagem final
echo "Obrigado por executar este script!"
