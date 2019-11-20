echo " Stoping node ..."
ExecStop=-/root/PACGlobal/pacglobal-cli -conf=/root/.PACGlobal/pacglobal.conf \
          -datadir=/root/.PACGlobal/ stop
echo "Wallet successfully stoped"
sleep 2;
echo "Deleting files .."
echo "Deleting pacglobal executables"
rm -rf ~/PACGlobal
echo "Done!"
echo "Downloading new wallet"
wget https://github.com/PACGlobalOfficial/PAC/releases/download/035d4df02/pacglobal-035d4df02-lin64.tgz && chmod -x pacglobal-035d4df02-lin64.tgz 
mkdir ~/PACGlobal
sudo tar -xvf pacglobal-035d4df02-lin64.tgz ~/PACGlobal
ExecStart=/root/PACGlobal/pacglobald -daemon -pid=/root/.PACGlobal/pacglobal.pid \
          -conf=/root/.PACGlobal/pacglobal.conf -datadir=/root/.PACGlobal/
echo "Masternode sucessfull updated!"
