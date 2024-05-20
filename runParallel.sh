#!/bin/bash
#setFields > Notes/log.setFields
#decomposePar > Notes/log.decomposePar
mpirun -np 88 foamRun -parallel > Notes/log.incompressibleVoF
##foamRun > Notes/log.incompressibleVoF
#reconstructPar > Notes/log.reconstructPar
#rm -r processor*

