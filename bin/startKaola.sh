#!/usr/bin/bash

baseDir="/home/ap/fan/OnionMall/"
config_file="config.json"

PON_PATH=
if [ "$PYTHONPATH" = "" ];then
	PON_PATH=$baseDir
else
	PON_PATH=$PYTHONPATH:$baseDir
fi
export PYTHONPATH=$PON_PATH
export PROJ_PATH=$baseDir
export VERIFY_CODE=$baseDir"input/vc.dat"
export CONF_FILE=$config_file
cd $baseDir
srcDir="/home/ap/fan/OnionMall/gy/netease/"
pythonSrc="kaola.py"
dataDir="/home/ap/fan/OnionMall/data/"
logDir="/home/ap/fan/OnionMall/log/"

if [ "$1" ];then
	userFn=$1
fi
nohup python -u $srcDir$pythonSrc $userFn> $logDir/kaola_$userFn.log 2>&1 &
#python $srcDir$pythonSrc info.kaola.json
