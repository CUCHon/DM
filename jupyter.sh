#!/bin/bash

#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --partition=bigTiger
#SBATCH --gres=gpu:1
#SBATCH --time=0-2:00:00
#SBATCH --nodelist=itiger06  #itiger01-11 
#SBATCH --job-name=jupyter

#give PORT a 4_digits_number
PORT= a_4_digits_number

echo "*** Starting Jupyter on: "$(hostname)" at port "$PORT


jupyter notebook --no-browser --ip=0.0.0.0 --port=$PORT
