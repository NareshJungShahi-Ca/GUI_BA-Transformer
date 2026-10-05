#!/bin/bash
#SBATCH --job-name=LR_1e-5__Fertilizer_classication_hyperleaf
#SBATCH --gres=gpu:3
#SBATCH --cpus-per-task=25
#SBATCH --mem=256G
#SBATCH --time=5-00:00
#SBATCH --constraint=h100 
#SBATCH --output=%x-%j.out 

module load python/3.11
module load cuda/12.2

source ~/HSI/bin/activate

cd "/home/naresh/projects/def-saadi/naresh/HSI/BA_Transformer"
srun python 'LR_1e-5_Data and model parallel training_3GPU_Classification_HyperLeaf2024.py'

