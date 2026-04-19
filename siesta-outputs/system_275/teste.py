import sisl as si
H = si.get_sile('hea.XV').read_geometry()
DM = si.get_sile('hea.DM').read_density_matrix()
pops = DM.mulliken() 
print(pops)