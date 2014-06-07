#!/bin/bash

# set up the environmental variables
# supervisord will not do this for us
source $1
cd data
python data.py # &

# start elasticsearch
sudo update-rc.d elasticsearch defaults 95 10
sudo /etc/init.d/elasticsearch start