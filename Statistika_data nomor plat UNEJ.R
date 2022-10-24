#Mean (nilai rata-rata) : 4455,335
#Median : 4419,67
#MOdus : @$60,95
#Range= max-min = 6987 - 2009 = 4978
#Mean deviasi (simpangan rata-rata) : 1287,607
#Standar deviasi (simpangan baku) = 147 ,62895

#Soal :
#(a) Mean; -mari
#(b) Median (nilai tengah; -mari
#(c) Modus (nilai yang paling sering muncul); 
#(d) Range (rentang nilai); -mari
#(e) Mean deviasi (simpangan rata-rata); 
#(f) Standar deviasi (simpangan baku) 

#import data excel
library(readxl)
plat=read_excel('D:/Kuliah/SMS3/Statistika/Plat Nomor.xlsx')

#jumlah xi-fi dan frekuensi
p = sum(plat$xi * plat$fi) 
frek = sum(plat$fi) #jumlah frekuensi

print(plat)

#Range
rang = max(plat$xi)-min(plat$xi)
print(rang)

#Mean
rata=p/frek
print(rata)

#Median
tb = 4225.5
n = frek/2-94
fi=17 #kumulatif <tb
m=553 #panjang kelas
#--Rumus Median--
med=tb+(n/fi)*m
print(med)

#Modus
b1=27
b2=6
b=2008.5
mo=b+(b1/(b1+b2))*553
print(mo)

#Mean Deviasi
SR = sum(plat$fi*(abs(plat$xi - rata)))
SR = SR/frek
print(SR)

#Standar Deviasi
varian = sum(plat$fi*((plat$xi - rata)^2))
varian = (varian/frek)^(1/2)
print(varian)
