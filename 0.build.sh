#!/bin/bash

if [ "${GOROOT}" == "${GOPATH}" ] ; then
	echo "GOROOT shoudn't same with GOROOT"
	exit 1
fi

if ! which gcc &> /dev/null ; then
	yum install -y gcc
fi

if ! which gcc &> /dev/null ; then
	yum install -y make
fi

make clean && make all
