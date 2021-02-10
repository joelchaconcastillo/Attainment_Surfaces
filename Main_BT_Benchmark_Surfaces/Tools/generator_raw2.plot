Entrada=ARG1; Salida=ARG2
set term post color 18
#set ls 1 pt 7 ps 0.5
#set ls 2 pt 8 ps 0.5
#set ls 3 pt 10 ps 0.5
set xlabel "f1"
set ylabel "f2"
set view 70, 80
set output Salida # "../figures/example_1.ps"
plot Entrada  w p
