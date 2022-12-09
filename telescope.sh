#!/bin/bash

#SBATCH --time=1-10:00:00   # walltime
#SBATCH --array=0-35
#SBATCH -p defq
list=("SRR14108895"
"SRR14108896"
"SRR14108897"
"SRR14108898"
"SRR14108899"
"SRR14108900"
"SRR14108901"
"SRR14108902"
"SRR14108903"
"SRR14108904"
"SRR14108905"
"SRR14108906"
"SRR14108907"
"SRR14108908"
"SRR14108909"
"SRR14108910"
"SRR14108911"
"SRR14108912"
"SRR14108913"
"SRR14108914"
"SRR14108915"
"SRR14108916"
"SRR14108917"
"SRR14108918"
"SRR14108919"
"SRR14108920"
"SRR14108921"
"SRR14108928"
"SRR14108929"
"SRR14108930"
"SRR14108931"
"SRR14108932"
"SRR14108933"
"SRR14108934"
"SRR14108935"
"SRR14108936")
filename=${list[${SLURM_ARRAY_TASK_ID}]}
#mkdir telescope-hg38-"$filename"-directory
#bowtie2 -p 40 -k 100 --very-sensitive-local --score-min "L,0,1.6" --rg-id $filename -x /lustre/groups/cbi/Users/tyden46/interferonHervs/Telescope_Refs/hg38 -q -1 "$filename"_1.fastq -2 "$filename"_2.fastq -S sam-hg38-"$filename".sam 2>&1 | tee multi.log
telescope bulk assign --theta_prior 200000 --max_iter 200 --updated_sam --outdir telescope-hg38-"$filename"-directory sam-hg38-"$filename".sam /lustre/groups/cbi/Users/tyden46/interferonHervs/Telescope_Refs/HERV_rmsk.hg38.v2.2.gtf 2>&1 | tee telescope.log
IFS=$SAVEIFS   # Restore IFS
