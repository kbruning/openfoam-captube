#!/bin/bash
#SBATCH -p debug_queue
#SBATCH -t 00:30:00
#SBATCH -N 2
#SBATCH --ntasks-per-node=44

reconstructPar > Notes/log.reconstructPar
rm -r processor*
