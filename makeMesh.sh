#!/bin/bash
rm -r 0
mkdir 0

blockMesh > Notes/log.blockMesh
#snappyHexMesh -overwrite > Notes/log.snappyHexMesh 
checkMesh > Notes/log.checkMesh
#topoSet > Notes/log.topoSet

rm -r 0
cp -r orig.0 0
