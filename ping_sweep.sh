#!/bin/bash

# Definindo códigos de cor ANSI
COR_PKA='\e[38;5;197m'  # F5055C
COR_PS='\e[38;5;220m'  # FEB63E
COR_VERDE='\e[92m' # 00FF00
COR_VERMELHO='\e[38;5;196m'   # E10406
RESET='\e[0m'  # Reset para as configurações padrão de cor


if [ "$#" -ne 2 ]; then
    echo -e "----------------------------------------------------"
    echo -e "${COR_PKA}Pk's Academy$RESET - ${COR_PS}Ping Sweep${RESET}"
    echo -e "----------------------------------------------------"
    echo -e "Modo de uso: $0 <IP_inicial> >IP_final>"
    echo -e "----------------------------------------------------"
    echo -e "Exemplo: $0 37.59.174.224 37.59.174.239"
    echo -e "----------------------------------------------------"
else
    echo -e "-----------------------------"
    echo -e "| ${COR_PKA}Pk's Academy${RESET} - ${COR_PS}Ping Sweep${RESET} |"
    echo -e "-----------------------------"

    ip_inicial=$1
    ip_final=$2

    # Extrai o prefixo da rede
    rede=$(echo "$ip_inicial" | cut -d '.' -f 1-3)

    for host in $(seq $(echo $ip_inicial | cut -d '.' -f 4) $(echo $ip_final | cut -d '.' -f 4)); do
        resultado=$(ping -c 1 "$rede.$host" | grep "64 bytes" | cut -d ":" -f 1 | cut -d " " -f 4)
        if [ -n "$resultado" ]; then
            echo -e "${COR_VERDE}Host ${rede}.${host} está respondendo.${RESET}"
        else
            echo -e "${COR_VERMELHO}Host ${rede}.${host} não está respondendo.${COR_VERMELHO}"
        fi
    done
fi
