#!/bin/bash

#SBATCH -n 48
#SBATCH --job-name vampire-fm
#SBATCH --nodes 1
#SBATCH --partition par48-x
#SBATCH -o out.txt
#SBATCH -e err.txt

#export OMP_NUM_THREADS=1

#cd $SLURM_SUBMIT_DIR

#### Prepare o ambiente com os devidos módulos #########
# hwloc faz parte das variáveis de ambiente gerais do cluster
module purge
module load hwloc
#module load intel-oneapi
module load intel
module load gcc
module load openmpi
#module load openblas
#module load netlib-scalapack
#module load readline
#module load lua
#module load ncurses
#module load libxcrypt
#module load xz
module load gcc
module load openmpi
module load intel
module load cuda
BASE_DIR="/home/users/felipegc/MnNiGa"

mpirun /home/users/felipegc/woltsoft/vampire/vampire-parallel 
