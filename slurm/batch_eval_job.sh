#!/bin/bash
#SBATCH --job-name=lcgn_test
#SBATCH --gres=gpu:1
#SBATCH --mem=8GB
#SBATCH --chdir=/scratch/geeticka_c/lcgn
#SBATCH --output=/scratch/geeticka_c/lcgn/slurm/logs/slurm-%A.out

source /scratch/geeticka_c/Anaconda3/etc/profile.d/conda.sh
conda activate visqa
#python exp_gqa/main.py --cfg exp_gqa/cfgs/lcgn_spatial.yaml TEST.SPLIT_VQA submission_all TEST.DUMP_PRED True
python exp_gqa/main.py --cfg exp_gqa/cfgs/lcgn_objects.yaml TEST.SPLIT_VQA submission_all TEST.DUMP_PRED True
#python exp_gqa/main.py --cfg exp_gqa/cfgs/lcgn_scene_graph.yaml TEST.SPLIT_VQA val_balanced

#export PYTHONPATH=/scratch/geeticka_c/lcgn$PYTHONPATH
#echo $PYTHONPATH
