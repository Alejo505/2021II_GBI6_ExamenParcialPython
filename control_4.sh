import numpy as np
import matplotlib.pyplot as plt
import matplotlib.mlab as mlab
import math
import seaborn as sns
import pandas as pd
import scipy.stats as stats
%matplotlib inline
import numpy as np
i=list(df1["DP_year"])
s=pd.Series(i)
h=list(set(s))
g=s
f=h
h=[0]*len(f)
k=0
for elem in f:
    d=0
    for comp in g:
        if elem ==str(comp):
            d=d+1
    h[k]=d
    k=k+1
mean=np.average(h)
print("media:",mean)
stan=np.std(h)
print("desviación estandar:",stan)
x=np.linspace(mean -3*stan,mean +3*stan, 100)
sigma=stan
label='$\mu = %.1f, \ \sigma^2=%.1f$' %(mean, stan)
y_norm = stats.norm.pdf(x, mean, sigma)
plt.plot(x, y_norm, label=label, c = "blue")
plt.xlabel("Número de publicaciones")
plt.ylabel('Probabilidades')
plt.title('Distribución Normal')
plt.legend(title = "Parámetros")
plt.show()

###############################################################################
df2=df2.drop(79)
i=list(df2["num_auth"])
fig = plt.figure(1, figsize=(10, 10))
ax = fig.add_subplot(111)
bp = ax.boxplot(i)
plt.xlabel('Autores')
plt.ylabel('Artículos')
plt.title('Boxplot de distribucion normales')
plt.show()
###############################################################################
%matplotlib inline
plt.scatter(-78.183406,-1.831239,s=7,alpha=1)
plt.scatter(21.824312,  39.074208,s=6,alpha=1)
plt.scatter(121.774017, 12.879721,s=12,alpha=1)
plt.colorbar()

plt.xlim(-150, 200)
plt.ylim(-100, 100)
# add Ecuador, Greece, Philippines.  
ard = dict(arrowstyle="->")
plt.annotate('Ecuador', xy = ( -78.183406,-1.831239), 
               xytext = (-60.712891,1.09024 ), arrowprops = ard)
plt.annotate('Greece', xy = (21.824312,  39.074208), 
               xytext = (13.639968,29.420695 ), arrowprops= ard)
plt.annotate('Philippines', xy = (121.774017, 12.879721), 
               xytext = (115.92528,5.235004 ), arrowprops= ard)
params = plt.gcf()
plSize = params.get_size_inches()
params.set_size_inches( (plSize[0] * 3, plSize[1] * 3) )
plt.ylabel('Latitud')
plt.xlabel('Longitud')
plt.title("Número de artículos por país <Ecuador genomics>")
países=["Ecuador", "Greece", "Philippines"]
plt.legend(países,title = "Países",title_fontsize=15,fontsize=15,markerscale=5, handlelength=3)
plt.show()
