clear
while :
do
echo "######################################"
echo "#            BOOSTRAP MENU           #"
echo "######################################"
echo "# dw - download the boostrap (do IT) #"
echo "# b0 - Boostrap the IPV4 DAPSMN00 -  #"
echo "# b1 - Boostrap  the IPV6 DAPSMN01   #"
echo "# b2 - Boostrap  the IPV6 DAPSMN02   #"
echo "# b3 - Boostrap  the IPV6 DAPSMN03   #"
echo "# b4 - Boostrap  the IPV6 DAPSMN04   #"
echo "# b5 - Boostrap  the IPV6 DAPSMN05   #"
echo "# b6 - Boostrap  the IPV6 DAPSMN06   #"
echo "# e - exit                           #"
echo "######################################"
read choise
clear
if [ $choise = 'dw' ]; then
  wget -N https://github.com/KINGer-C/Scripts/releases/download/blocks/blocks.zip && unzip blocks.zip && rm -rf blocks.zip
elif [ $choise = 'b0' ]; then
  dapscoin-cli stop && sleep 10s && rm -rf ~/.dapscoin/blocks ~/.dapscoin/chainstate ~/.dapscoin/database ~/.dapscoin/.lock ~/.dapscoin/dapscoind.pid && sleep 30s &&  cp -R ~/blocks ~/.dapscoin && sleep 20s && dapscoind -daemon && sleep 10s && watch dapscoin-cli getinfo
elif [ $choise = 'b1' ]; then
  dapscoin-cli01 -rpcuser=DAPSMN01 -rpcpassword=DAPSMN010 -rpcport=53574 stop && sleep 10s && rm -rf ~/.dapscoin01/blocks ~/.dapscoin01/chainstate ~/.dapscoin01/database ~/.dapscoin01/.lock ~/.dapscoin01/dapscoind.pid && sleep 20s && cp -R ~/blocks ~/.dapscoin01 && sleep 30s && dapscoind01 -datadir=/root/.dapscoin01 -wallet=wallet01.dat && sleep 10s && watch dapscoin-cli01 -rpcuser=DAPSMN01 -rpcpassword=DAPSMN010 -rpcport=53574 getinfo
elif [ $choise = 'b2' ]; then
  dapscoin-cli02 -rpcuser=DAPSMN02 -rpcpassword=DAPSMN020 -rpcport=53575 stop && sleep 10s && rm -rf ~/.dapscoin02/blocks ~/.dapscoin02/chainstate ~/.dapscoin02/database ~/.dapscoin02/.lock ~/.dapscoin02/dapscoind.pid && sleep 20s && cp -R ~/blocks ~/.dapscoin02 && sleep 30s && dapscoind02 -datadir=/root/.dapscoin02 -wallet=wallet02.dat && sleep 10s && watch dapscoin-cli02 -rpcuser=DAPSMN02 -rpcpassword=DAPSMN020 -rpcport=53575 getinfo
elif [ $choise = 'b3' ]; then
  dapscoin-cli03 -rpcuser=DAPSMN03 -rpcpassword=DAPSMN030 -rpcport=53576 stop && sleep 10s && rm -rf ~/.dapscoin03/blocks ~/.dapscoin03/chainstate ~/.dapscoin03/database ~/.dapscoin03/.lock ~/.dapscoin03/dapscoind.pid && sleep 20s && cp -R ~/blocks ~/.dapscoin03 && sleep 30s && dapscoind03 -datadir=/root/.dapscoin03 -wallet=wallet03.dat && sleep 10s && watch dapscoin-cli03 -rpcuser=DAPSMN03 -rpcpassword=DAPSMN030 -rpcport=53576 getinfo
elif [ $choise = 'b4' ]; then
  dapscoin-cli04 -rpcuser=DAPSMN04 -rpcpassword=DAPSMN040 -rpcport=53577 stop && sleep 10s && rm -rf ~/.dapscoin04/blocks ~/.dapscoin04/chainstate ~/.dapscoin04/database ~/.dapscoin04/.lock ~/.dapscoin04/dapscoind.pid && sleep 20s && cp -R ~/blocks ~/.dapscoin04 && sleep 30s && dapscoind04 -datadir=/root/.dapscoin04 -wallet=wallet04.dat && sleep 10s && watch dapscoin-cli04 -rpcuser=DAPSMN04 -rpcpassword=DAPSMN040 -rpcport=53577 getinfo
elif [ $choise = 'b5' ]; then
  dapscoin-cli05 -rpcuser=DAPSMN05 -rpcpassword=DAPSMN050 -rpcport=53578 stop && sleep 10s && rm -rf ~/.dapscoin05/blocks ~/.dapscoin05/chainstate ~/.dapscoin05/database ~/.dapscoin05/.lock ~/.dapscoin05/dapscoind.pid && sleep 20s && cp -R ~/blocks ~/.dapscoin05 && sleep 30s && dapscoind05 -datadir=/root/.dapscoin05 -wallet=wallet05.dat && sleep 10s && watch dapscoin-cli05 -rpcuser=DAPSMN05 -rpcpassword=DAPSMN050 -rpcport=53578 getinfo
elif [ $choise = 'b6' ]; then
  dapscoin-cli06 -rpcuser=DAPSMN06 -rpcpassword=DAPSMN060 -rpcport=53579 stop && sleep 10s && rm -rf ~/.dapscoin06/blocks ~/.dapscoin06/chainstate ~/.dapscoin06/database ~/.dapscoin06/.lock ~/.dapscoin06/dapscoind.pid && sleep 20s && cp -R ~/blocks ~/.dapscoin06 && sleep 30s && dapscoind06 -datadir=/root/.dapscoin06 -wallet=wallet06.dat && sleep 10s && watch dapscoin-cli06 -rpcuser=DAPSMN06 -rpcpassword=DAPSMN060 -rpcport=53579 getinfo
elif [ $choise = 'e' ]; then
  rm -rf reindex.sh && break
else 
  echo "Command not found, Please try Again !" && sleep 3s && clear
fi
rm -rf boost.sh
done
