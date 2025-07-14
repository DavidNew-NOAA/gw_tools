#!/bin/bash
set -x

if [[ $# != 1 ]]; then
    echo 'Error: Exactly one argument required'
    return 1
fi


HOMEgfs=$gwf

export pslot=$pslot_base

cd $HOMEgfs

set +x
source ./dev/ush/gw_setup.sh
set -x

./dev/workflow/create_experiment.py --yaml $1
