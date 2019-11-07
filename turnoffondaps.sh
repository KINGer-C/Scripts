echo "########################################################################"
echo "## This scrypt will turn off and turn on your DAPSMN running on ipv4 ##"
echo "########################################################################"
clear
cd ~
dapscoin-cli stop
echo "########################################################################"
echo "########## Wating 15 seconds before start the wallet again #############"
echo "########################################################################"
sleep 15s
clear
dapscoind -daemon
echo "########################################################################"
echo "################## MASTERNODE successfully restarted ###################"
echo "########################################################################"
clear
dapscoin-cli masternode status
echo "######################################################################################"
echo "############### If you want to see the status use the follow commands#################"
echo "see the status  - dapscoin-cli masternode status"
echo "see the status automatically every 2 seconds - watch dapscoin-cli masternode status"
echo "######################################################################################"
