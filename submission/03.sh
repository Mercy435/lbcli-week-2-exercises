# Created a SegWit address.
ADDR=$(bitcoin-cli -regtest -named getnewaddress)
#$ bitcoin-cli -regtest getnewaddress default bech32

# Add funds to the address.
bitcoin-cli -regtest generatetoaddress 101 "$ADDR"

# Return only the Address
echo $ADDR




