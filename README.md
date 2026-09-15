# Mn–Ni–Ga Heusler Ternary DFT Dataset

Dataset of spin-polarized DFT calculations for the Mn–Ni–Ga Heusler ternary, associated with the paper:

> **Orbital fingerprinting of magnetism across the Mn–Ni–Ga Heusler ternary**  
> F. Hawthorne, D. A. Damasceno, R. Tromer, R. R. Pelá, C. F. Woellner

---

## Contents

`siesta-outputs/calculationN/` — one folder per calculated structure (370 total), containing SIESTA input and output files.

Each folder includes:
- `input.fdf`, `atoms.fdf` — calculation input
- `output.out` — main SIESTA output
- `hea.XV`, `hea.STRUCT_OUT`, `hea.xyz` — relaxed structure
- `hea.EIG`, `hea.DOS`, `hea.PDOS`, `hea.PDOS.xml` — electronic structure
- `hea.FA`, `hea.MDE` — forces and energy history
- `OUTVARS.yml`, `sg.dat`, `dos.dat`, `fermi.dat` — summary quantities

## Calculations

- **Code:** SIESTA
- **Functional:** PBEsol
- **Pseudopotentials:** Norm-conserving Vanderbilt (PSML)
- **Basis:** Triple-ζ polarized (TZP), mesh cutoff 300 Ry
- **k-points:** Monkhorst–Pack, 0.5 Å⁻¹ spacing
- **Structures:** Cubic SQS supercells (2–10 atoms), generated with `icet`
- **Compositions:** 90 unique compositions spanning the full ternary
- **Magnetic initializations:** FM and AFM; lowest-energy result retained

## Dataset summary

| Ordering | Count |
|----------|-------|
| FiM      | 123   |
| FM       | 108   |
| AFM      | 83    |
| NM       | 56    |
| **Total**| **370** |

## Citation

Dataset DOI: [10.5281/zenodo.19651125](https://doi.org/10.5281/zenodo.19651125)

If you use this dataset, please cite the Zenodo record above. The associated paper is currently under review at APL Machine Learning; its citation will be added here once available.
