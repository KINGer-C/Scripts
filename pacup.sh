echo " Stoping node ..."
cd ~/PACGlobal && ./pacglobal-cli stop
echo "Wallet successfully stoped"
sleep 2s
echo "Deleting files .."
echo "Deleting pacglobal executables"
rm -rf ~/PACGlobal
sleep 5s
echo "Done!"
echo "Downloading new wallet"
mkdir ~/PACGlobal 
cd ~
sleep 3s
wget https://github.com/PACGlobalOfficial/PAC/releases/download/035d4df02/pacglobal-035d4df02-lin64.tgz && chmod -x pacglobal-035d4df02-lin64.tgz && tar -xvzf pacglobal-035d4df02-lin64.tgz
sleep 5s
mv -v ~/pacglobal-035d4df02-lin64/pacglobald ~/PACGlobal 
mv -v ~/pacglobal-035d4df02-lin64/pacglobal-cli ~/PACGlobal 
mv -v ~/pacglobal-035d4df02-lin64/pacglobal-tx ~/PACGlobal
mv -v ~/pacglobal-035d4df02-lin64/pacglobal-qt ~/PACGlobal
cd ~/PACGlobal && sudo chmod +x pac*
cd ~ && rm -rf pacglobal-035d4df02-lin64.tgz
cd ~ && rm -rf pacglobal-035d4df02-lin64
sleep 3s
echo "Starting wallet"
systemctl enable pacg.service
systemctl start pacg.service
cd ~/PACGlobal && ./pacglobald
echo "Masternode sucessfull updated!"
rm -rf pacup.sh
