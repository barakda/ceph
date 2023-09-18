#!/usr/bin/env bash
set -ex

HOSTNAME=$(hostname)
IP=$(echo $(hostname -I) | cut -d ' ' -f1)

echo -e "<exec.client.1sh---- HOST/IP -- $HOSTNAME/$IP ---->"

echo OK

