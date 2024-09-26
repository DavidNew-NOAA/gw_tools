#!/bin/bash

# Inputs
if [[ $# == 2 ]]; then
    export HOMEgfs=$1
    export pslot=$2
else
    echo 'Error: Exactly two arguments required'
    return 1
fi    

# Global Workflow environment variables
export ICSDIR_ROOT=/scratch1/NCEPDEV/global/glopara/data/ICSDIR
export HPC_ACCOUNT="da-cpu"
export RUNTESTS=$work/RUNTESTS
export EXPDIR=$work/RUNTESTS/expdir/$pslot
export ROTDIR=$work/RUNTESTS/comrot/$pslot

# Set some useful directories
export logs=$ROTDIR/logs/

# Set aliases
alias rview='$HOMEgfs/workflow/rocoto_viewer.py -d $EXPDIR/$pslot.db -w $EXPDIR/$pslot.xml'
alias rrun='rocotorun -d $EXPDIR/$pslot.db -w $EXPDIR/$pslot.xml'
alias rrunc='rocotorun -d $EXPDIR/$pslot.db -w $EXPDIR/$pslot.xml && crontab $EXPDIR/$pslot.crontab'

# Load GDASApp modules
module use $HOMEgfs/sorc/gdas.cd/modulefiles
module load GDAS/hera

# Print key environment variable contents
echo $EXPDIR
echo $ROTDIR
echo $HOMEgfs
echo
