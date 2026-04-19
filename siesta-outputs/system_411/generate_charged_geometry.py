from ase.io import read, write
from ase import Atoms

# Define the charges vector from SIESTA Mulliken analysis
charges = [
    -1.900751, -1.900747, 0.264890, -0.030420, -0.030389, 0.179773, 0.393865, 
    0.394997, 0.250803, 0.705919, 0.705940, 0.330897, 0.285721, 0.285871, 
    0.031822, 0.031809
]

# Path to the final geometry file (update with your actual file path and format)
input_geometry_file = 'atoms.cif'  # Could be .XV, .STRUCT_OUT, etc.
output_lammps_file = 'intial_geometry.data'

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
