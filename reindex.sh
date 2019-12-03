while :
do
echo "####################################################"
echo "#                WHAT DO YOU WANNA DO?             #"
echo "####################################################"
echo "# rx0 - REINDEX the IPV4 DAPSMN00 - .dapscoin      #"
echo "# rx1 - REINDEX  the IPV6 DAPSMN01 - .dapscoin01   #"
echo "# rx2 - REINDEX  the IPV6 DAPSMN02 - .dapscoin02   #"
echo "# rx3 - REINDEX  the IPV6 DAPSMN03 - .dapscoin03   #"
echo "# rx4 - REINDEX  the IPV6 DAPSMN04 - .dapscoin04   #"
echo "# rx5 - REINDEX  the IPV6 DAPSMN05 - .dapscoin05   #"
echo "# rx6 - REINDEX  the IPV6 DAPSMN06 - .dapscoin06   #"
echo "# e - exit                                         #"
echo "####################################################"
read choise
clear
if [ $choise = 'rx0' ]; then
  dapscoin-cli stop && sleep 10s && dapscoind -reindex && sleep 10s && watch dapscoin-cli getinfo
elif [ $choise = 'rx1' ]; then
  stop02 && sleep 10s && start01 -reindex && sleep 10s && watch getinfo01
elif [ $choise = 'rx2' ]; then
  stop01 && sleep 10s && start02 -reindex && sleep 10s && watch getinfo02
elif [ $choise = 'rx3' ]; then
  stop03 && sleep 10s && start03 -reindex && sleep 10s && watch getinfo03
elif [ $choise = 'rx4' ]; then
  stop04 && sleep 10s && start04 -reindex && sleep 10s && watch getinfo04
elif [ $choise = 'rx5' ]; then
  stop05 && sleep 10s && start05 -reindex && sleep 10s && watch getinfo05
elif [ $choise = 'rx6' ]; then
  stop06 && sleep 10s && start06 -reindex && sleep 10s && watch getinfo06
elif [ $choise = 'e' ]; then
   rm -rf reindex.sh && break
else 
  echo "Command not found, Please try Again !" && sleep 3s
fi
done
