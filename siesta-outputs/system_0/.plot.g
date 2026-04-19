set title "-o 2 Mn"
plot ".tmp_ioncat" using 1:2 w l title "f"
replot ".tmp_ioncat" using 1:3 w l title "grad f"
