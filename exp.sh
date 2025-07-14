#!/bin/bash

# Inputs
if [[ $# == 2 ]]; then
    export gwf=$1
    export pslot_base=$2
else
    echo 'Error: Exactly two arguments required'
    return 1
fi

# Environment variables needed for setup_ci.sh
export pslot=$pslot_base
export RUNTESTS=$work
export HPC_ACCOUNT="da-cpu"
export ICSDIR_ROOT=/scratch1/NCEPDEV/global/glopara/data/ICSDIR

#
export WORKFLOW_TESTS="ON"

#
export expdir_base=$RUNTESTS/EXPDIR
export rotdir_base=$RUNTESTS/COMROOT/


rlog_func() {
  arg1="$1"
  arg2="$2"



  echo $logs/
}

# Useful directory shortcuts
export expdir=$RUNTESTS/EXPDIR/$pslot
export rotdir=$RUNTESTS/COMROOT/$pslot
export cidir=$gwf/dev/ci/cases/pr/
export logs=$rotdir/logs/

# Rocoto aliases
alias rstat="rocotostat -d $expdir/$pslot.db -w $expdir/$pslot.xml | grep -E 'SUBMITTING|QUEUED|RUNNING|FAILED|DEAD|UNKNOWN'"
alias rview='$gwf/dev/workflow/rocoto_viewer.py -d $expdir/$pslot.db -w $expdir/$pslot.xml'
alias rrun='rocotorun -d $expdir/$pslot.db -w $expdir/$pslot.xml'
alias rrunc='rocotorun -d $expdir/$pslot.db -w $expdir/$pslot.xml && crontab $expdir/$pslot.crontab'

# Load GDASApp modules
module use $gwf/sorc/gdas.cd/modulefiles
module load GDAS/hera

# Add wxflow to PYTHONPATH
export PYTHONPATH="$PYTHONPATH:$gwf/sorc/wxflow/src"

# Print key environment variable contents
echo $gwf
echo $expdir
echo $rotdir
echo
