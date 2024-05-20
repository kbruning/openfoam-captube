# openfoam-captube
2D sloped wall capillary rise example with openfoam

Run commands for 88 subdomains:

  rm -r 0
  mkdir 0
  blockMesh > Notes/log.blockMesh
  checkMesh > Notes/log.checkMesh
  rm -r 0
  cp -r orig.0 0

  setFields > Notes/log.setFields
  decomposePar > Notes/log.decomposePar

  mpirun -np 88 foamRun -parallel > Notes/log.incompressibleVoF

  reconstructPar > Notes/log.reconstructPar
  rm -r processor*

Geometry:

  Tube inlet diameter: 0.75 mm

  Tube outlet diameter: 0.45 mm

  Tube height: 8 mm, oriented in +y direction


Oil parameters at 20°C:

  density: 917 kg/m^3

  kinematic viscosity: 9.160e-5 m^2/s

  interfacial tension: 0.032

  contact angle with air and solid: 75°


