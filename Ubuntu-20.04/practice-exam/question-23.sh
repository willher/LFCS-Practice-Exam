# Create a 1GB SWAP file and add it to the exiting SWAP pool. Ensure it is mounted at boot.***
#
#***NOTE: understand the difference between Swap file and swap partition and be able to complete the above with both
#
#--------------------------------------------------------------------------------------------------------------------

sudo fallocate -l 2G /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

/swapfile swap swap defaults 0 0

