#!/bin/bash
DEBUG=0

INSTALL_ROOT=/home/apps/SiteSoftwares/openondemand/1.5/wrappers/slurm/bin
SERVER_IP=$(cat $INSTALL_ROOT/masternode.lst)

if [[ $DEBUG == 1  ]]
then
	echo "$(basename $0) $(date +%Y%m%d_%H%M%S): Supplied args=($@)" >> $INSTALL_ROOT/${USER}_logs.txt
fi

ssh $SERVER_IP "scancel $@"
EXIT_CODE=$(echo $?)

exit $EXIT_CODE
