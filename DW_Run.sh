#!/bin/bash
#SBATCH -p debug_queue
#SBATCH -t 00-00:30:00
#SBATCH -N 2
#SBATCH --ntasks-per-node=44

date

./runParallel.sh
sbatch DW_rmesh.sh

date
