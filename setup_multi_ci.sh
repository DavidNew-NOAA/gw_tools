#!/bin/bash
set -x

# JEDI experiments
exp_array=(
  "C96C48_ufs_hybatmDA"
  "C96C48_hybatmsnowDA"
  "C48mx500_3DVarAOWCDA"
  "C48mx500_hybAOWCDA"
  "C96C48_hybatmDA"
)

HOMEgfs=$gwf

cd "$HOMEgfs" || exit 1

set +x
source ./dev/ush/gw_setup.sh
set -x

# Loop through each YAML file and run the script
for exp in "${exp_array[@]}"; do
    export pslot="${pslot_base}"_"${exp}"
    export expdir=$RUNTESTS/EXPDIR/$pslot
    export rotdir=$RUNTESTS/COMROOT/$pslot
    ./dev/workflow/create_experiment.py --yaml "$cidir"/"${exp}".yaml
done
