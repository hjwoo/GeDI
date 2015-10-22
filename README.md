## Overview
GeDI (genotype distribution-based inference) is a software implementing collective statistical inference methods applied to genotype-phenotype data. The applicable data type currently implemented is case-control genotyping data, such as those from genome-wide association studies (GWAS). The collective inference is aimed at inferring effects of many variants (single-nucleotide polymorphisms; SNPs) and their interactions simultaneously. The main algorithm used is discrete discriminant analysis (DDA), which is an adaptation of the discriminant analysis to discrete genotype variables. GeDI can also perform independent loci analysis with interactions turned off, where the results reduce to standard GWAS analysis such as those from e.g., [PLINK](http://pngu.mgh.harvard.edu/~purcell/plink/) (or [version-1.9](https://www.cog-genomics.org/plink2)). 
It can also build disease risk models based on inference and perform cross-validation. A typical workflow using GWAS data in fact would include all of these elements. Some parts of the code have been parallelized in message passing inferface (MPI).

The program is distributed under the GNU [General Public License](http://www.gnu.org/licenses/gpl.html).
We ask users to cite [Ref.1](wiki/pubs) when using the data generated by GeDI for publication.

##Documentation

  1. [Installation](wiki/install)

  2. [Basic usage](wiki/usage)

  3. Independent loci [(IL)](wiki/il) analysis

  4. Collective loci [(CL)](wiki/cl) analysis

  5. [Prediction and cross-validation](wiki/CV)

  6. [Statistical tests](wiki/Tests)

  7. [Examples](wiki/Examples)

##[References](wiki/pubs)
