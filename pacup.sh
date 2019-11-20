echo " Stoping node ..."
ExecStop=-/root/PACGlobal/pacglobal-cli -conf=/root/.PACGlobal/pacglobal.conf \
          -datadir=/root/.PACGlobal/ stop
echo "Wallet successfully stoped"
sleep 2
echo "Deleting files .."
echo "Deleting pacglobal executables"
rm -rf ~/PACGlobal
sleep 10
echo "Done!"
echo "Downloading new wallet"
mkdir ~/PACGlobal 
sleep 3
wget https://github.com/PACGlobalOfficial/PAC/releases/download/035d4df02/pacglobal-035d4df02-lin64.tgz && chmod -x pacglobal-035d4df02-lin64.tgz && tar -xvzf pacglobal-035d4df02-lin64.tgz
mv -v ~/pacglobal-035d4df02-lin64/pacglobald ~/PACGlobal 
mv -v ~/pacglobal-035d4df02-lin64/pacglobal-cli ~/PACGlobal 
mv -v ~/pacglobal-035d4df02-lin64/pacglobal-tx ~/PACGlobal
mv -v ~/pacglobal-035d4df02-lin64/pacglobal-qt ~/PACGlobal
sudo chmod +x ~PACGlobal/pacglobal*
rm -rf pacglobal-035d4df02-lin64.tgz
rm -rf pacglobal-035d4df02-lin64
sleep 3
ExecStart=/root/PACGlobal/pacglobald -daemon -pid=/root/.PACGlobal/pacglobal.pid \
          -conf=/root/.PACGlobal/pacglobal.conf -datadir=/root/.PACGlobal/
echo "Masternode sucessfull updated!"
