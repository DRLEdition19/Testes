#!/bin/bash
clear

# Exibe mensagem inicial
echo "Apresentando..."
sleep 2

# Limpa o terminal
clear

# Informações do sistema
echo -e "Current Date and Time (UTC - YYYY-MM-DD HH:MM:SS formatted):"
echo -e "2025-03-03 15:53:11"
echo -e "Current User's Login: DRLEdition19"
echo

# Frase a ser exibida
phrase="DRL Edition"
final_output=""

# Códigos de cores ANSI
blue="\e[34m"   # cor final: azul
reset="\e[0m"

# Vetor com 5 cores para a animação (exceto azul)
colors=("\e[31m" "\e[32m" "\e[33m" "\e[35m" "\e[37m")

# Loop para cada letra da frase
for (( i=0; i<${#phrase}; i++ )); do
    letter="${phrase:$i:1}"
    
    # Para cada letra, animação com 5 "pisca-piscas" em cores aleatórias
    for j in {1..5}; do
        # Escolhe cor aleatória do vetor
        rand_index=$(( RANDOM % ${#colors[@]} ))
        color="${colors[$rand_index]}"
        
        # Imprime a linha: as letras já fixadas (em azul) + a letra atual na cor aleatória
        # O "\r\033[K" reposiciona o cursor no início e limpa a linha
        echo -ne "\r\033[K${blue}${final_output}${reset}${color}${letter}${reset}"
        sleep 0.1
    done

    # Após a animação, fixa a letra na cor azul
    final_output="${final_output}${letter}"
    echo -ne "\r\033[K${blue}${final_output}${reset}"
    sleep 0.1
done

# Pula uma linha
echo ""

# Arte ASCII após a animação do texto
echo -e "${blue}
██████╗  ██████╗  ██╗         ███████╗██████╗ ██╗████████╗██╗ ██████╗ ███╗   ██╗
██╔══██╗██╔══██╗ ██║         ██╔════╝██╔══██╗██║╚══██╔══╝██║██╔═══██╗████╗  ██║
██║  ██║██████╔╝ ██║         █████╗  ██║  ██║██║   ██║   ██║██║   ██║██╔██╗ ██║
██║  ██║██╔══██╗ ██║         ██╔══╝  ██║  ██║██║   ██║   ██║██║   ██║██║╚██╗██║
██████╔╝██║  ██║ ███████╗    ███████╗██████╔╝██║   ██║   ██║╚██████╔╝██║ ╚████║
╚═════╝ ╚═╝  ╚═╝ ╚══════╝    ╚══════╝╚═════╝ ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝${reset}"

# Pula uma linha
echo ""

# Mensagem final
echo "Obrigado por executar este script!"
