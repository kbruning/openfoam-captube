#!/bin/bash

rm -r 0
mkdir 0

blockMesh > Notes/log.blockMesh
decomposePar > Notes/log.decomposeParMake
mpirun -np 44 snappyHexMesh -overwrite -parallel > Notes/log.snappyHexMesh 
mpirun -np 44 checkMesh -parallel > Notes/log.checkMesh
mpirun -np 44 topoSet -parallel > Notes/log.topoSet
reconstructParMesh -mergeTol 1e-3 -constant > Notes/log.reconstructParMesh
#createPatch -overwrite > Notes/log.createPatch
rm -r processor*

rm -r 0
cp -r orig.0 0


