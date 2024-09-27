#!/bin/bash

# Inputs
if [[ $# == 2 ]]; then
    export gwf=$1
    export pslot=$2
else
    echo 'Error: Exactly two arguments required'
    return 1
fi    

# Environment variables needed for setup_ci.sh
export RUNTESTS=$work
export HPC_ACCOUNT="da-cpu"
export ICSDIR_ROOT=/scratch1/NCEPDEV/global/glopara/data/ICSDIR

# Useful directory shortcuts
export expdir=$RUNTESTS/EXPDIR
export comrot=$RUNTESTS/COMROOT
export logs=$comrot/logs/
export gdas=$gwf/sorc/gdas.cd

# Rocoto aliases
alias rview='$gwf/workflow/rocoto_viewer.py -d $expdir/$pslot.db -w $expdir/$pslot.xml'
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
echo $comrot
echo
