#!/bin/bash

echo "SHELL='/bin/bash'
MAILTO=''
*/2 * * * * /apps/rocoto/1.3.7/bin/rocotorun -d $expdir_base/${pslot_base}_C96C48_ufs_hybatmDA/${pslot_base}_C96C48_ufs_hybatmDA.db -w $expdir_base/${pslot_base}_C96C48_ufs_hybatmDA/${pslot_base}_C96C48_ufs_hybatmDA.xml
*/2 * * * * /apps/rocoto/1.3.7/bin/rocotorun -d $expdir_base/${pslot_base}_C48mx500_3DVarAOWCDA/${pslot_base}_C48mx500_3DVarAOWCDA.db -w $expdir_base/${pslot_base}_C48mx500_3DVarAOWCDA/${pslot_base}_C48mx500_3DVarAOWCDA.xml
*/2 * * * * /apps/rocoto/1.3.7/bin/rocotorun -d $expdir_base/${pslot_base}_C48mx500_hybAOWCDA/${pslot_base}_C48mx500_hybAOWCDA.db -w $expdir_base/${pslot_base}_C48mx500_hybAOWCDA/${pslot_base}_C48mx500_hybAOWCDA.xml
*/2 * * * * /apps/rocoto/1.3.7/bin/rocotorun -d $expdir_base/${pslot_base}_C96C48_hybatmsnowDA/${pslot_base}_C96C48_hybatmsnowDA.db -w $expdir_base/${pslot_base}_C96C48_hybatmsnowDA/${pslot_base}_C96C48_hybatmsnowDA.xml
*/2 * * * * /apps/rocoto/1.3.7/bin/rocotorun -d $expdir_base/${pslot_base}_C96C48_hybatmDA/${pslot_base}_C96C48_hybatmDA.db -w $expdir_base/${pslot_base}_C96C48_hybatmDA/${pslot_base}_C96C48_hybatmDA.xml" > $pslot_base.crontab
