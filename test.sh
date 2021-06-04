#!/bin/bash
#SBATCH --qos=normal            # Quality of Service
#SBATCH --job-name=infercnv          # Job Name
#SBATCH --nodes=2              # Number of Nodes
#SBATCH --ntasks-per-node=2     # Number of tasks (MPI processes)
#SBATCH --cpus-per-task=8    # Number of threads per task (OMP threads)
#SBATCH --mail-type=ALL
#SBATCH --output=onscreenoutput.out

echo "What is your email address?"
read email
mail -s 'Your script has started' ${email}

#preparatory work before running the sample
module load jags/4.3.0
module load R/4.1.0-intel
module unload gcc/4.7.4
export LD_LIBRARY_PATH=/share/apps/anaconda/3/5.1.0/lib:$LD_LIBRARY_PATH
export R_LIBS=/lustre/project/wdeng7/R_LIB_Share/Library

#Getting user input
echo "Input absolute path of raw_counts_matrix"
read raw_counts_matrix
echo "annotations_file"
read annotations_file
echo "gene_order_file"
read gene_order_file
echo "ref_group_names"
read ref_group_names

Rscript test.R



mail -s 'Your script has finished' 'jyang10@tulane.edu'
