#!/usr/bin/env bash
set -euo pipefail

# Path to your compiled binary
FMPDOS=fmpdos

# Input PDOS file
PDOS=hea.PDOS

# Small helper to keep things tidy
run_fmpdos () {
  local OUT="$1" LABEL="$2" N="$3" L="$4" M="$5"
  echo "→ $LABEL (n=$N, l=$L, m=$M) → $OUT"
  "$FMPDOS" <<EOF
$PDOS
$OUT
$LABEL
$N
$L
$M
EOF
}

# ---- Selections ----
# Mn: 4s and 3d
run_fmpdos "Mn_4s.dat" "Mn" 4 0 9
run_fmpdos "Mn_3d.dat" "Mn" 3 2 9

# Ni: 3d
run_fmpdos "Ni_3d.dat" "Ni" 3 2 9

# Ga: 4p
run_fmpdos "Ga_4p.dat" "Ga" 4 1 9

echo "All done."