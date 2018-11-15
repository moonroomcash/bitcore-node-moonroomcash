#!/bin/bash

# install needed dependencies
sudo apt-get update
sudo apt-get install \
      build-essential pkg-config libc6-dev m4 g++-multilib \
      autoconf libtool ncurses-dev unzip git python \
      zlib1g-dev wget bsdmainutils automake curl

# moonroomcashBitcore
cd
git clone -b Bitcore https://github.com/moonroomcash/moonroomcash.git moonroomcashBitcore
cd moonroomcashBitcore
./zcutil/fetch-params.sh
./zcutil/build.sh -j$(nproc)
cd
echo "Moonroomcashd with extended RPC functionalities is prepared. Please run following command to install insight explorer for moonroomcash"
echo "wget -qO- https://raw.githubusercontent.com/moonroomcash/bitcore-node-moonroomcash/master/installExplorer.sh | bash"
