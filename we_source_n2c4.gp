
#gnuplot -persist  -e "file='00002'" pro_tetg.gp
load "template.gp"
 
set yrange [1E2:*]
set xrange [1.8:2.3]
set size square
set xtics 0.1
set y2tics
set y2range [0:*]
set ytics nomirror
set logscale y
set key outside
#set ylabel  "Energy [eVm^-^3]"
#set y2label "E [Td]"
set y2label font "Arial, 25"
#set lmargin 15

#plot file.".dat" u ($1/100):(($49+$50)*$3) axis x1y1 w l lw 2 lc rgb"blue" title "W electron collision" #
#plot file.".dat" u ($1/100):($44*0.9) axis x1y1 w l lw 2 lc rgb"red" title "W  photo electron" 
plot file.".dat" u ($1/100):($8*$8*$3/$28*1.7588*1E11*5.88*1E-12) axis x1y1 w l lw 2 lc rgb"blue" title "W  by field" 
replot "./080_spe/output_density/00020.dat" u ($1/100):($28*0.84) w l lw 2 lc rgb"purple" title"W by N_2(c_4)
#replot file.".dat" u ($1/100):($44*0.9*5.88*1E-12) axis x1y1 w l lw 2 lc rgb"red" title "W  photo electron"
replot file.".dat" u ($1/100):($9) axis x1y2 w l lw 2 lc rgb"black" title "E_e_f_f" 
#replot file.".dat" u ($1/100):($8*$8*$3/$28*1.7588*1E11-($49+$50)*$3) axis x1y1 w l lw 2 lc rgb"black" title "Source term now" 

#replot file.".dat" u ($1/100):($14) axis x1y2 w l dt(10,5) lw 2 lc rgb"magenta" title "Electron Temperature"

#set arrow from 189,1E10 to 189,1E30 nohead dt (10,5) lc rgb "medium-blue" 

replot

