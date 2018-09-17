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
python2 kaldigstserver/worker.py -u ws://localhost:8070/worker/ws/speech -c aishell/worker.yaml
