#!/bin/bash
#SBATCH -p debug_queue
#SBATCH -t 00:30:00
#SBATCH -N 2
#SBATCH --ntasks-per-node=44

chmod +x runParallel.sh
chmod +x makeMesh.sh

./makeMesh.sh
#decomposePar > Notes/log.decomposePar
setFields > Notes/log.setFields
decomposePar > Notes/log.decomposePar


sbatch DW_Run.sh
