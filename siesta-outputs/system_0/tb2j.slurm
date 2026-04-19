#!/bin/bash

#SBATCH -n 48
#SBATCH --job-name 1st3rd
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
#module load cuda
#export LD_LIBRARY_PATH="/opt/spack/opt/spack/linux-oracle8-zen2/gcc-12.2.0/ncurses-6.3/lib:$LD_LIBRARY_PATH"

#export CPATH="/home/users/felipegc/woltsoft/SIESTA/readline-devel/include:$CPATH"
#export LD_LIBRARY_PATH="/home/users/felipegc/woltsoft/SIESTA/readline-devel/lib:$LD_LIBRARY_PATH"
#export LUA_DIR=/opt/spack/opt/spack/linux-oracle8-zen2/gcc-12.2.0/lua-5.3.6-opigln4n3bt2pj4qeywsg6ql3ufe3ec2
#export FLOOK_ROOT=/home/users/felipegc/woltsoft/SIESTA/flook

module list

#export CPATH="/home/users/felipegc/woltsoft/SIESTA/readline-devel/include:$CPATH"
#export LIBRARY_PATH="/opt/spack/opt/spack/linux-oracle8-zen2/gcc-12.2.0/lua-5.3.6-opigln4n3bt2pj4qeywsg6ql3ufe3ec2/lib:/home/users/felipegc/woltsoft/SIESTA/readline-devel/lib:$LIBRARY_PATH"

#export LUA_DIR=/opt/spack/opt/spack/linux-oracle8-zen2/gcc-12.2.0/lua-5.3.6-opigln4n3bt2pj4qeywsg6ql3ufe3ec2#
#export LUA_PATH="/opt/spack/opt/spack/linux-oracle8-zen2/gcc-12.2.0/lua-5.3.6-opigln4n3bt2pj4qeywsg6ql3ufe3ec2/share/lua/5.3/?.lua;/opt/spack/opt/spack/linux-oracle8-zen2/gcc-12.2.0/lua-5.3.6-opigln4n3bt2pj4qeywsg6ql3ufe3ec2/share/lua/5.3/?/init.lua;;"
#export LUA_PATH="/home/users/felipegc/woltsoft/SIESTA/flos/?.lua;/home/users/felipegc/woltsoft/SIESTA/flos/?/init.lua;$LUA_PATH;;"

#export LD_PRELOAD="/opt/spack/opt/spack/linux-oracle8-zen2/gcc-12.2.0/ncurses-6.3/lib/libtinfo.so.6"


#srun /home/users/felipegc/woltsoft/SIESTA/siesta-5.2.2/bin/siesta -h
#/home/users/felipegc/woltsoft/SIESTA/siesta-5.2.2/build/bin/siesta -h
#mpirun /home/users/felipegc/woltsoft/SIESTA/siesta-5.2.2/build/bin/siesta < input.fdf  > output.out
#mpirun -np 48 /home/users/felipegc/woltsoft/SIESTA/siesta-5.2.2/bin/siesta < input.fdf  > teste.out

BASE_DIR="/home/users/felipegc/MnNiGa"
source /home/users/felipegc/woltsoft/anaconda3/bin/activate
#/home/users/felipegc/woltsoft/anaconda3/bin/python -u getmags.py
/home/users/felipegc/woltsoft/anaconda3/bin/siesta2J.py --fdf_fname input.fdf --elements Ga Ni Mn --kmesh 5 2 3

