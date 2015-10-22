#!/bin/bash
data='chr19sim'
gedi=../../src/gedi

# IL analysis using tped/tfam file
${gedi} -il --tped ../${data}.tped --tfam ../${data}.tfam --out il_dda1.dat

# IL analysis under genotypic model
../../src/gedi -il --tped ../${data}.tped --tfam ../${data}.tfam -genotypic --out il_dda2.dat

# IL analysis using logistic regression
../../src/gedi -il -lr --tped ../${data}.tped --tfam ../${data}.tfam --out il_dda3.dat

# IL prediction using parameter file (training set == test set; don't do this in real work)
../../src/gedi -il -pr --tped ../${data}.tped --tfam ../${data}.tfam --par il_dda1.dat --pcut 0.1 --out il_pr.dat

# IL prediction with cross-validation
../../src/gedi -il -pr --tped ../${data}.tped --tfam ../${data}.tfam --pcut 0.1 --out il_pr_cv.dat

# CL analysis with MFA
../../src/gedi -cl --tped ../${data}.tped --tfam ../${data}.tfam --pcut 0.1 --out cl_dda1.dat 

# CL analysis with EE
../../src/gedi -cl -ee --tped ../${data}.tped --tfam ../${data}.tfam --pcut 0.1 --out cl_dda2.dat 

# CL with LR
../../src/gedi -cl -lr --tped ../${data}.tped --tfam ../${data}.tfam --pcut 0.1 --out cl_lr.dat 

# CL prediction (again training==test; no good)
../../src/gedi -cl -pr --par cl_dda1.dat --tped ../${data}.tped --tfam ../${data}.tfam --out cl_pr1.dat

# CL prediction with different prevalence
../../src/gedi -cl -pr --par cl_dda1.dat --tped ../${data}.tped --tfam ../${data}.tfam --prev 0.2 --out cl_pr2.dat

# CL cross-validation with MFA
../../src/gedi -cl -pr --tped ../${data}.tped --tfam ../${data}.tfam --pcut 0.1 --out cl_pr3.dat
