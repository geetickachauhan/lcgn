#!/bin/bash
#SBATCH --job-name=lcgn_train
#SBATCH --gres=gpu:1
#SBATCH --mem=8GB
#SBATCH --chdir=/scratch/geeticka_c/lcgn
#SBATCH --output=/scratch/geeticka_c/lcgn/slurm/logs/slurm-%A.out

source /scratch/geeticka_c/Anaconda3/etc/profile.d/conda.sh
conda activate visqa
#python exp_gqa/main.py --cfg exp_gqa/cfgs/lcgn_scene_graph.yaml train True
#python exp_gqa/main.py --cfg exp_gqa/cfgs/lcgn_objects.yaml train True
python exp_gqa/main.py --cfg exp_gqa/cfgs/lcgn_spatial.yaml train True

#export PYTHONPATH=/scratch/geeticka_c/lcgn$PYTHONPATH
#echo $PYTHONPATH
