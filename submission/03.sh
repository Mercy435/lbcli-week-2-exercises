## Created a SegWit address.
#ADDR=$(bitcoin-cli -regtest -named getnewaddress address_type=p2sh-segwit)
##$ bitcoin-cli -regtest getnewaddress default bech32
#
## Add funds to the address.
#bitcoin-cli -regtest generatetoaddress 101 $ADDR
#
## Return only the Address
#echo $ADDR



# Create a SegWit address (P2SH-wrapped SegWit)
ADDR=$(bitcoin-cli -regtest -named getnewaddress address_type=p2sh-segwit)

# Generate mining rewards to a standard address first
MINER_ADDR=$(bitcoin-cli -regtest getnewaddress)

# Mine 101 blocks to get spendable balance
bitcoin-cli -regtest generatetoaddress 1 $MINER_ADDR

# Send some funds to your SegWit address
bitcoin-cli -regtest sendtoaddress $ADDR 0.01


# Output the SegWit address
echo $ADDR
