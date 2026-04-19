from ase.io import read, write
from ase import Atoms

# Define the charges vector from SIESTA Mulliken analysis
spins = [
-0.004832,
-0.004825,
 0.029029,
-0.024517,
 0.003387,
 0.004169,
 0.043464,
 0.043395,
 0.000365,
 0.020280,
 0.535898,
-0.056656,
-0.056339,
-0.056231,
-0.003104,
-0.003085
]

# Path to the final geometry file (update with your actual file path and format)
input_geometry_file = 'atoms_final.cif'  # Could be .XV, .STRUCT_OUT, etc.
output_lammps_file = 'geometry_with_spins.data'

# Read the final structure
atoms = read(input_geometry_file)

# Check that number of atoms matches charges
if len(atoms) != len(spins):
    raise ValueError(f"Number of atoms ({len(atoms)}) does not match number of charges ({len(charges)})")

# Assign charges to each atom
atoms.set_initial_charges(charges = spins)

# Write LAMMPS data file with charges
write(output_lammps_file, atoms, format='lammps-data', atom_style='charge')

print(f"LAMMPS data file written to: {output_lammps_file}")
