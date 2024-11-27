#!/bin/bash

if [ ! -e /mc/ServerStart.sh ]; then
    cd /server && cp -r . /mc
    cd /mc
    echo "eula=true" >> eula.txt
    chmod 700 ServerStart.sh
fi

cd /mc
screen -dmLS mc bash ServerStart.sh
screen -x
