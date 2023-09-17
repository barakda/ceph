get host/ip
===========
  $ HOST=$(python3 -c "import socket; print(socket.getfqdn())")
  $ IP=`hostname -i | awk '{print $1}'`
  $ echo -e "<exec.client.1t---- HOST/IP -- $HOST/$IP ---->"
