#!/bin/bash
set -x

if [[ $# != 1 ]]; then
    echo 'Error: Exactly one argument required'
    return 1
fi


HOMEgfs=$gwf

cd $HOMEgfs

set +x
source ./workflow/gw_setup.sh
set -x

./workflow/create_experiment.py --yaml $1
