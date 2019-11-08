clear
echo "#################################"
echo "### DAPS MASTERNODE EASY WAY ####"
echo "########## By KINGer-C ##########"
echo "#################################"
sleep 2s
rm -rf dapsipv4.sh
rm -rf dapsipv61_DAPSMN01.sh
rm -rf dapsipv61_DAPSMN02.sh
rm -rf dapsipv61_DAPSMN03.sh
rm -rf dapsipv61_DAPSMN04.sh
rm -rf dapsipv61_DAPSMN05.sh
rm -rf dapsipv61_DAPSMN06.sh
clear
echo "░░░░░▄▄▀▀▀▀▀▀▀▀▀▄▄░░░░░"
echo "░░░░█░░░░░░░░░░░░░█░░░░"
echo "░░░█░░░░░░░░░░▄▄▄░░█░░░"
echo "░░░█░░▄▄▄░░▄░░███░░█░░░"
echo "░░░▄█░▄░░░▀▀▀░░░▄░█▄░░░"
echo "░░░█░░▀█▀█▀█▀█▀█▀░░█░░░"
echo "░░░▄██▄▄▀▀▀▀▀▀▀▄▄██▄░░░"
echo "░▄█░█▀▀█▀▀▀█▀▀▀█▀▀█░█▄░"
echo "▄▀░▄▄▀▄▄▀▀▀▄▀▀▀▄▄▀▄▄░▀▄"
echo "█░░░░▀▄░█▄░░░▄█░▄▀░░░░█"
echo "░▀▄▄░█░░█▄▄▄▄▄█░░█░▄▄▀░"
echo "░░░▀██▄▄███████▄▄██▀░░░"
echo "░░░████████▀████████░░░"
echo "░░▄▄█▀▀▀▀█░░░█▀▀▀▀█▄▄░░"
echo "░░▀▄▄▄▄▄▀▀░░░▀▀▄▄▄▄▄▀░"
sleep 2s
clear
ls -al
echo "##############################################"
echo "             WHAT DO YOU WANNA DO?"
echo "0 - Install the IPV4 DAPSMN00 - .dapscoin"
echo "1 - Install the IPV6 DAPSMN01 - .dapscoin01 "
echo "2 - Install the IPV6 DAPSMN02 - .dapscoin02"
echo "3 - Install the IPV6 DAPSMN03 - .dapscoin03"
echo "4 - Install the IPV6 DAPSMN04 - .dapscoin04"
echo "5 - Install the IPV6 DAPSMN05 - .dapscoin05"
echo "6 - Install the IPV6 DAPSMN06 - .dapscoin06"
echo "##############################################"

read choise
if [ $choise = 0 ]; then
  rm -rf dapsipv4.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv4.sh && chmod 777 dapsipv4.sh && bash dapsipv4.sh
elif [ $choise = '1' ]; then
  rm -rf dapsipv61_DAPSMN01.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN01.sh && chmod 777 dapsipv61_DAPSMN01.sh && bash dapsipv61_DAPSMN01.sh
elif [ $choise = '2' ]; then
  rm -rf dapsipv61_DAPSMN02.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN02.sh && chmod 777 dapsipv61_DAPSMN02.sh && bash dapsipv61_DAPSMN02.sh
elif [ $choise = '3' ]; then
  rm -rf dapsipv61_DAPSMN03.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN03.sh && chmod 777 dapsipv61_DAPSMN03.sh && bash dapsipv61_DAPSMN03.sh
elif [ $choise = '4' ]; then
  rm -rf dapsipv61_DAPSMN04.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN04.sh && chmod 777 dapsipv61_DAPSMN04.sh && bash dapsipv61_DAPSMN04.sh
elif [ $choise = '5' ]; then
  rm -rf dapsipv61_DAPSMN05.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN05.sh && chmod 777 dapsipv61_DAPSMN05.sh && bash dapsipv61_DAPSMN05.sh
elif [ $choise = '6' ]; then
  rm -rf dapsipv61_DAPSMN06.sh && wget https://raw.githubusercontent.com/KINGer-C/Scripts/master/dapsipv61_DAPSMN06.sh && chmod 777 dapsipv61_DAPSMN06.sh && bash dapsipv61_DAPSMN06.sh
else
  echo " Command not found, please restart the instalation"
fi
cd ~
rm -rf daps.sh

