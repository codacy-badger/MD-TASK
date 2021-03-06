#!/bin/bash


mkdir out_CM
cd out_CM

BIN_DIR=../..

cp $BIN_DIR/example/* .

echo ""
echo "#### R IGRAPH - CONTACT MAP ####"
echo ""

python $BIN_DIR/contact_map.py --residue ASP31 --prefix wt --topology wt.pdb wt.dcd
python $BIN_DIR/contact_map.py --residue ASN31 --prefix mutant --topology mutant.pdb mutant.dcd
