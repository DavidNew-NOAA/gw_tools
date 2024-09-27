#!/bin/bash
set -x

HOMEgfs=$gwf

cd $HOMEgfs

set +x
source ./workflow/gw_setup.sh
set -x

./workflow/create_experiment.py --yaml ./ci/cases/pr/C96C48_hybatmDA.yaml
##./workflow/create_experiment.py --yaml ./ci/cases/pr/C96C48_ufs_hybatmDA.yaml
##./workflow/create_experiment.py --yaml ./ci/cases/pr/C96C48_hybatmaerosnowDA.yaml
##./workflow/create_experiment.py --yaml ./ci/cases/pr/C48mx500_3DVarAOWCDA.yaml
