#!/bin/bash

cid=$(docker run -it -d ubtestworun-halo /bin/bash | cut -c 1-12)
echo $cid
sleep 5
docker exec -it -d $cid /opt/cloudpassage/bin/configure --agent-key=XXXXXXXXXXXX --tag=docker
docker exec -it -d $cid /etc/init.d/cphalod start
