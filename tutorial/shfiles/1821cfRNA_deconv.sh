#!/bin/bash
#SBATCH --job-name=decon1821cfRNA_deconv
#SBATCH --output=decon1821cfRNA_deconv.out
#SBATCH --error=decon1821cfRNA_deconv.err
#SBATCH --qos=normal
#SBATCH --ntasks=1
#SBATCH --partition=quake,owners,normal
#SBATCH --cpus-per-task=1
#SBATCH --mem=20000
#SBATCH --time=24:00:00



source activate deconv

python3 /home/users/hagop/cellfracker2/cellfracker/core/deconv_wrapper.py --basis-matrix-file /home/users/hagop/cellfracker2/cellfracker/tutorial/data/tsp_v1_basisMatrix.txt --mixture-path /home/users/hagop/cellfracker2/cellfracker/tutorial/data/samples_test.csv --biolog-rep-name 1821 --out-path /home/users/hagop/cellfracker2/cellfracker/tutorial/outputs/ --cpm-threshold 0 --deconv-method nusvr --save-predictions --no-cpm-normalization