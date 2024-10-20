#!/bin/bash

buildScript/lib/core/init.sh
cd ..
rm -rf sing-box
#git clone -b building https://github.com/PuerNya/sing-box.git sing-box
#git clone -b dev-next-yaott https://github.com/CHIZI-0618/sing-box.git sing-box
git clone -b dev https://github.com/SagerNet/sing-quic.git sing-quic
git clone -b sing-box-b-t-sra https://github.com/White12352/sing-box.git sing-box
git clone -b dev-tl https://github.com/White12352/sing sing
#git clone -b 1.8.14 https://github.com/MatsuriDayo/sing-box.git sing-box-p
#cp -rf sing-box-p/nekoutils sing-box
#rm -rf sing-box-p
#git clone -b main https://github.com/matsuridayo/libneko libneko
#svn co https://github.com/MatsuriDayo/sing-box/branches/1.6.a2/nekoutils sing-box/nekoutils
#awk '/^replace/ && !found {print "replace github.com/sagernet/sing => ../sing"; found=1} 1' sing-box-extra/go.mod > go.mod.tmp && mv -f go.mod.tmp sing-box-extra/go.mod
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
cd sjnm/libcore
go mod tidy
cd ..
buildScript/lib/core/build.sh
