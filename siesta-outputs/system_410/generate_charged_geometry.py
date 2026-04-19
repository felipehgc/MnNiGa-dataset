from ase.io import read, write
from ase import Atoms

# Define the charges vector from SIESTA Mulliken analysis
charges = [
-2.403530,
-2.403133,
 0.343771,
 0.212481,
 0.207385,
 0.300740,
 0.401306,
 0.401168,
 0.505635,
 0.271842,
 0.268126,
 0.482722,
 0.487711,
 0.487600,
 0.217984,
 0.218193
]

# Path to the final geometry file (update with your actual file path and format)
input_geometry_file = 'atoms_final.cif'  # Could be .XV, .STRUCT_OUT, etc.
output_lammps_file = 'geometry_with_charges.data'

# Read the final structure
atoms = read(input_geometry_file)

# Check that number of atoms matches charges
if len(atoms) != len(charges):
    raise ValueError(f"Number of atoms ({len(atoms)}) does not match number of charges ({len(charges)})")

# Assign charges to each atom
atoms.set_initial_charges(charges = charges)

# Write LAMMPS data file with charges
write(output_lammps_file, atoms, format='lammps-data', atom_style='charge')

print(f"LAMMPS data file written to: {output_lammps_file}")
