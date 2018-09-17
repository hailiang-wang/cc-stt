#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
source $baseDir/../localrc
source $PY_VENV_HOME/bin/activate

# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir/../app
python kaldigstserver/client.py \
	-u ws://localhost:8070/client/ws/speech \
	-r 16000 ../tmp/20180802150158-I-6000-15927368524.WAV
