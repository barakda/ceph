#!/usr/bin/env bash
set -ex

IP=`cat /etc/ceph/iscsi-gateway.cfg |grep 'trusted_ip_list' | awk -F'[, ]' '{print $3}'`
sudo podman run -it quay.io/ceph/nvmeof-cli:0.0.3 --server-address $IP --server-port 5500 create_bdev --pool nvmeofpool --image myimage --bdev nvmeof
# HOSTNAME=$(hostname)
# IMAGE="quay.io/ceph/nvmeof-cli:0.0.3"
# POOL="nvmeofpool"
# MIMAGE="nvmeofimage"
# BDEV="nvmeofbdev"
# SERIAL="SPDK00000000000001"
# NQN="nqn.2016-06.io.spdk:cnode1"
# PORT="4420"
# SRPORT="5500"
# sudo nvme list
# sudo podman run -it $IMAGE --server-address $IP --server-port $SRPORT create_bdev --pool $POOL --image $MIMAGE --bdev $BDEV
# sudo podman images
# sudo podman ps
# sudo podman run -it $IMAGE --server-address $IP --server-port $SRPORT create_subsystem --subnqn $NQN --serial $SERIAL
# sudo podman run -it $IMAGE --server-address $IP --server-port $SRPORT add_namespace --subnqn $NQN --bdev $BDEV
# sudo podman run -it $IMAGE --server-address $IP --server-port $SRPORT create_listener -n $NQN -g client.$POOL.$HOSTNAME -a $IP -s $PORT
# sudo podman run -it $IMAGE --server-address $IP --server-port $SRPORT add_host --subnqn $NQN --host "*"
# sudo docker run -it $IMAGE --server-address $IP --server-port $SRPORT get_subsystems
# sudo nvme connect -t tcp --traddr $IP -s $PORT -n $NQN
# sudo nvme list
echo OK

