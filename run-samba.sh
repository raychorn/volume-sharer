#!/usr/bin/bash

CID=$(docker ps -aqf "name=samba")
if [ "$CID." == "." ]
then
    echo "samba is not running."
else
    echo "CID=$CID"
    docker rm $CID
fi
docker run -it --name samba -p 139:139 -p 445:445 -v /mnt/d:/mount -d dperson/samba -p
