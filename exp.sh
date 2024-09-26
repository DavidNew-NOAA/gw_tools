#!/bin/bash

if [[ $# == 2 ]]; then
    export HOMEgfs=$1
    export PSLOT=$2
else
    echo 'Error: Exactly two arguments required'
    return 1
fi    

# Global workflow environment variables
export EXPDIR=$work/expdir/$PSLOT
export ROTDIR=$work/comrot/$PSLOT

# Some useful directories
export logs=$ROTDIR/logs/

# Set aliases
alias rview='$HOMEgfs/workflow/rocoto_viewer.py -d $EXPDIR/$PSLOT.db -w $EXPDIR/$PSLOT.xml'
alias rrun='rocotorun -d $EXPDIR/$PSLOT.db -w $EXPDIR/$PSLOT.xml'
alias rrunc='rocotorun -d $EXPDIR/$PSLOT.db -w $EXPDIR/$PSLOT.xml && crontab $EXPDIR/$PSLOT.crontab'

# Load GDASApp modules
module use $HOMEgfs/sorc/gdas.cd/modulefiles
module load GDAS/hera

# Print key environment variable contents
echo $EXPDIR
echo $ROTDIR
echo $HOMEgfs
echo
