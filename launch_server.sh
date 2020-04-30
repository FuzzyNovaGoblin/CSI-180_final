#!/bin/bash

#fish -c startup
echo starting >> server.log

python ~/serv.py >> server.log
fish -c shutdown

echo stoping >> server.log
echo \n\n\n >> server.log
