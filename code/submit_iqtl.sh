#!/bin/bash

for CHROMID in {1..22}; do
  qsub -l nodes=1:ppn=16 -d . -q daglab -v CHROM=chr$CHROMID -N chr$CHROMID run_iqtl.sh
done

qsub -l nodes=1:ppn=16 -d . -q daglab -v CHROM=chrX -N chrX run_iqtl.sh