#for k in ../Improvement-Rank #NSGAII GDE3 MOMBI2 VSD-MOEA SMS-EMOA UMOEAD
for k in ../VSD-MOEA-D #NSGAII GDE3 MOMBI2 VSD-MOEA SMS-EMOA UMOEAD
do
	for i in 2;# 3 ;#10;
	do
	   for j in $k/"$i"obj/Summary/*;
	   do
	       FILE=$(basename $j )
	#	./plot-attainments2/source/plot-att $j -k $i -r 60 -a 17 -mm -1 -1 -1 >  $k/"$i"obj/AttainmentSurfaces/$FILE
		ENTRADA=$k/"$i"obj/AttainmentSurfaces/$FILE
		SALIDA=$k/"$i"obj/EPS/$FILE.ps
		SALIDA2=$k/"$i"obj/EPS/Raw_$FILE.ps
		if [ "$i" = "3" ]; then
#		gnuplot -c 'generator.plot' $ENTRADA $SALIDA
		gnuplot -c 'generator_raw.plot' $j $SALIDA2
		else
#		gnuplot -c 'generator2.plot' $ENTRADA $SALIDA
		gnuplot -c 'generator_raw2.plot' $j $SALIDA2
		fi
	   done
	done
done
