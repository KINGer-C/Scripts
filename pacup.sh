echo " Stoping node ..."
cd ~/PACGlobal && ./pacglobal-cli stop
echo "Wallet successfully stoped"
sleep 2;
echo "Deleting files .."
echo "Deleting pacglobal executables"
rm -rf PACGlobal
echo "Done!"
echo "Downloading new wallet"
wget https://github.com/PACGlobalOfficial/PAC/releases/download/035d4df02/pacglobal-035d4df02-lin64.tgz && chmod -x pacglobal-035d4df02-lin64.tgz 
mkdir PACGlobal
sudo tar -xvf pacglobal-035d4df02-lin64.tgz ~/PACGlobal
cd ~/PACGlobal && ./paccoind
echo "Masternode sucessfull updated!"
