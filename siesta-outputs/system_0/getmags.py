import numpy as np
from ase.io import read 
import os
import kgrid

atoms = read('hea.XV')

species = atoms.get_atomic_numbers()

uniques = np.unique(species)

kpts=kgrid.calc_kpt_tuple(atoms,cutoff_length = 1/2,mode='kspacing')
 

if len(uniques)==1 and uniques[0] == 25:
    
    os.system(f"siesta2J.py --fdf_fname input.fdf --elements Mn --kmesh {kpts[0]} {kpts[1]} {kpts[2]}")
if len(uniques)==1 and uniques[0] == 28:
    
    os.system(f"siesta2J.py --fdf_fname input.fdf --elements Ni --kmesh {kpts[0]} {kpts[1]} {kpts[2]}")
if len(uniques)==1 and uniques[0] == 31:
    
    os.system(f"siesta2J.py --fdf_fname input.fdf --elements Ga --kmesh {kpts[0]} {kpts[1]} {kpts[2]}")
    

if len(uniques)==2 and np.isin(25,uniques)==False:
    
    os.system(f"siesta2J.py --fdf_fname input.fdf --elements Ga Ni --kmesh {kpts[0]} {kpts[1]} {kpts[2]}")

if len(uniques)==2 and np.isin(28,uniques)==False:
    
    os.system(f"siesta2J.py --fdf_fname input.fdf --elements Ga Mn --kmesh {kpts[0]} {kpts[1]} {kpts[2]}")

if len(uniques)==2 and np.isin(31,uniques)==False:
    
    os.system(f"siesta2J.py --fdf_fname input.fdf --elements Mn Ni --kmesh {kpts[0]} {kpts[1]} {kpts[2]}")

if len(uniques)==3:
    print(kpts)


    os.system(f"siesta2J.py --fdf_fname input.fdf --elements Ga Ni Mn --kmesh {kpts[0]} {kpts[1]} {kpts[2]}")
    
