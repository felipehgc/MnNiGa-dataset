import numpy as np
import matplotlib.pyplot as plt 

ados = np.loadtxt('hea.ados')
coop = np.loadtxt('pdos.Mn_3d-Ga_4p.coop')
cohp = np.loadtxt('pdos.Mn_3d-Ga_4p.cohp')

plt.plot(ados[:,0],ados[:,1])
plt.plot(coop[:,0],coop[:,1])
plt.plot(cohp[:,0],cohp[:,1])
plt.show()