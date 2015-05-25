#!/bin/sh

numThread=5

./putter -e 0 -i INT_DF_CMF_QUOTE.txt -o report.log -n $numThread -s 10000 -r 500 -t 250 -t 300 -t 350 -t 400 -t 450 -t 500 -a node-1:11222 -a node-2:11222
