#!/bin/bash
#SBATCH --job-name=E70_fertilizer_cpu_hyperleaf
#SBATCH --cpus-per-task=90
#SBATCH --mem=256G
#SBATCH --time=7-00:00:00
#SBATCH --output=%x-%j.out
#SBATCH --error=%x_%j.err

module load python/3.11.5

source ~/HSI/bin/activate

cd "/home/naresh/projects/def-saadi/naresh/HSI/BA_Transformer/all_experiment/fertilizer/"
srun python Classification_HyperLeaf2024.py

