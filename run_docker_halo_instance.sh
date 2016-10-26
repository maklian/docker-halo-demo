#!/bin/bash

cid=$(docker run -it -d ubtestworun-halo /bin/bash | cut -c 1-12)
echo $cid
sleep 5
docker exec -it -d $cid /opt/cloudpassage/bin/configure --agent-key=5eb42703aaf007b796067c07bae787e6 --tag=docker
docker exec -it -d $cid /etc/init.d/cphalod start
