#!/bin/bash

#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --partition=bigTiger
#SBATCH --gres=gpu:1
#SBATCH --time=0-2:00:00
#SBATCH --nodelist=itiger06
#SBATCH --job-name=jupyter

source jupyter/bin/activate

PORT=8888

echo "*** Starting Jupyter on: "$(hostname)" at port "$PORT


jupyter notebook --no-browser --ip=0.0.0.0 --port=$PORT