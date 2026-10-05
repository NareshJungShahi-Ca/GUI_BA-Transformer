#!/bin/bash
#SBATCH --job-name=Epochs45_LR_3e-5_regression_classication_hyperleaf
#SBATCH --partition=gpubase_bynode_b5
#SBATCH --gres=gpu:h100:3
#SBATCH --exclude=g4,g5,g30,g31,g32,g33,g34,g35,g36
#SBATCH --cpus-per-task=25
#SBATCH --mem=256G
#SBATCH --time=5-00:00:00
#SBATCH --constraint=h100
#SBATCH --exclusive
#SBATCH --output=%x-%j.out
#SBATCH --error=%x_%j.err

module load python/3.11
module load cuda/12.2

source ~/HSI/bin/activate

cd "/home/naresh/projects/def-saadi/naresh/HSI/BA_Transformer"
srun python 'Regression_Data and model parallel training_3GPU_Classification_HyperLeaf2024-Copy1.py'

