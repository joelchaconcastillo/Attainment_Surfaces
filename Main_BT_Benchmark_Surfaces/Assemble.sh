CR=0.75
F=0.75
PATH1=/home/joel.chacon/Final_Experiment_Decomposition/moead_cpp_base-L/POF
PATH1=/home/joel.chacon/2021_Decomposition/AVSD_MOEA_D/analysis_bias/moead_cpp_base-L/POF
#POF_MOEAD_BT5_RUN23_seed_46_nobj_2_niche_20.dat_bounded_CR_0.750000_F_0.750000_ratiobias_0.03125
rm data/MOEA_D_*
b=0.031
 #for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7
 for instance in BT1 BT2 BT3 BT4 BT5 BT6 BT7 BT8
 do
    for sed in {1..35}   
    do
    tail -100 $PATH1/POF_MOEAD_${instance}_RUN${sed}_seed*_nobj_2*_CR_${CR}*_F_${F}*_${b}* >> data/MOEA_D_${instance}_2_$b
    echo "" >> data/MOEA_D_${instance}_2_$b
    done
 done
CR=0.5
F=0.5
# for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10
 for instance in BT9
 do
    for sed in {1..35}   
    do
    tail -100 $PATH1/POF_MOEAD_${instance}_RUN${sed}_seed*_nobj_3*_CR_${CR}*_F_${F}*_${b}* >> data/MOEA_D_${instance}_3_$b
    echo "" >> data/MOEA_D_${instance}_3_$b
    done
 done
CR=0.75
F=0.5
 PATH1=/home/joel.chacon/Final_Experiment_Decomposition/R2-EMOA-L-Poly/Results 
 PATH1=/home/joel.chacon/2021_Decomposition/AVSD_MOEA_D/analysis_bias/R2-EMOA_01_2021/Results
 #BT5_2_25_nvar_30_CR_0.75_F_0.5_b_0.03125
 rm data/R2-EMOA_*
 #for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7
 for instance in BT1 BT2 BT3 BT4 BT5 BT6 BT7 BT8
 do
    for sed in {1..35}
    do
    cat $PATH1/${instance}_2_${sed}_*_CR_${CR}*_F_${F}*_${b}*[!R] | tail -100 >> data/R2-EMOA_${instance}_2_$b
     echo "" >> data/R2-EMOA_${instance}_2_$b
    done
 done
CR=0.5
F=0.5
 #for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10
 for instance in BT9
 do
    for sed in {1..35}
    do
    cat $PATH1/${instance}_3_${sed}_*_CR_${CR}*_F_${F}*_${b}*[!R] | tail -100 >> data/R2-EMOA_${instance}_3_$b
     echo "" >> data/R2-EMOA_${instance}_3_$b
    done
 done
CR=0.0
F=0.75
PATH1=/home/joel.chacon/Final_Experiment_Decomposition/vsd-moea-d-base-L-Indicator-Adaptation_ASF_V1/POF
PATH1=/home/joel.chacon/2021_Decomposition/AVSD_MOEA_D/analysis_bias/vsd-moea-d-base-L-Indicator-Adaptation_ASF_V1/POF
#v2_POF_MOEAD_BT5_RUN23_seed_46_nobj_2_nvar_30_DI_0.400000_DF_0.500000_CR_0.000000_F_0.750000__ratiobias_0.03125
#PATH1=/home/joel.chacon/Final_Experiment_Decomposition/vsd-moea-d-base-L-Indicator-Adaptation_ASF_V1_tunning/POF
rm data/VSD-MOEA_D_*
#for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF1 UF2 UF3 UF4 UF5 UF6 UF7
for instance in BT1 BT2 BT3 BT4 BT5 BT6 BT7 BT8
do
   for sed in {1..35}
   do
       tail -100 $PATH1/v2_POF_MOEAD_${instance}_RUN${sed}_seed_*nobj_2*_DI_0.4*_DF_0.5*_CR_${CR}*_F_${F}*_${b}* | cut -f1,2 -d' '  >> data/VSD-MOEA_D_${instance}_2_$b
      echo "" >> data/VSD-MOEA_D_${instance}_2_$b
   done
done
CR=0.0
F=0.75
#for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7 UF8 UF9 UF10
 for instance in BT9
do
   for sed in {1..35}
   do
      tail -100 $PATH1/v2_POF_MOEAD_${instance}_RUN${sed}_seed_*nobj_3*_DI_0.4*_DF_0.5*_CR_${CR}*_F_${F}*_${b}* | cut -f1,2,3 -d' '  >> data/VSD-MOEA_D_${instance}_3_$b
      echo "" >> data/VSD-MOEA_D_${instance}_3_$b
   done
done
CR=0.75
F=0.5
PATH1=/home/joel.chacon/Final_Experiment_Decomposition/jMetalCpp-1.7-DE-L-Poly/NSGAII
PATH1=/home/joel.chacon/2021_Decomposition/AVSD_MOEA_D/analysis_bias/jMetalCpp-1.7-DE-L-Poly/NSGAII
#OBJ_NSGAII_SBX_POLYNOMIAL_EVALUATIONS_25000000_BT1_SEED_10_2_CR_0.750000_F_0.500000_b_0.031250.txt
rm data/NSGA-II_*
 #  for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF1 UF2 UF3 UF4 UF5 UF6 UF7 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
 for instance in BT1 BT2 BT3 BT4 BT5 BT6 BT7 BT8
   do
      for sed in {1..35}
      do
      cat $PATH1/OBJ_NSGAII_SBX_POLYNOMIAL_EVALUATIONS_*_${instance}_SEED_${sed}_2_CR_${CR}*_F_${F}*_${b}*.txt | tail -100 >> data/NSGA-II_${instance}_2_$b
       echo "" >> data/NSGA-II_${instance}_2_$b
      done
   done
CR=0.0
F=0.25
 #  for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF8 UF9 UF10 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
 for instance in BT9
   do
      for sed in {1..35}
      do
      cat $PATH1/OBJ_NSGAII_SBX_POLYNOMIAL_EVALUATIONS_*_${instance}_SEED_${sed}_3_CR_${CR}*_F_${F}*_${b}*.txt | tail -100 >> data/NSGA-II_${instance}_3_$b
      echo "" >> data/NSGA-II_${instance}_3_$b
      done
   done
CR=0.75
F=0.25
rm data/NSGA-III_*
PATH1=/home/joel.chacon/Final_Experiment_Decomposition/NSGA-III-DE-L-Poly/ManyEAs/src/NSGAIII
PATH1=/home/joel.chacon/2021_Decomposition/AVSD_MOEA_D/analysis_bias/NSGA-III-DE-L-Poly-bias/ManyEAs/src/NSGAIII
#OBJ_NSGAIII_DE_250000_BT1_SEED_10_2_vars_30_CR_0.75_F_0.25_b_0.03125.txt
 #  for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF1 UF2 UF3 UF4 UF5 UF6 UF7 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
 for instance in BT1 BT2 BT3 BT4 BT5 BT6 BT7 BT8
   do
      for sed in {1..35}
      do
      cat $PATH1/OBJ_NSGAIII_DE_*_${instance}_SEED_${sed}_2_vars*_CR_${CR}*_F_${F}*_${b}*txt | tail -100 >> data/NSGA-III_${instance}_2_$b
      echo "" >> data/NSGA-III_${instance}_2_$b
      done
   done
CR=0.0
F=0.75

 #  for instance in WFG1 WFG2 WFG3 WFG4 WFG5 WFG6 WFG7 WFG8 WFG9 UF8 UF9 UF10 DTLZ1 DTLZ2 DTLZ3 DTLZ4 DTLZ5 DTLZ6 DTLZ7
 for instance in BT9
   do
      for sed in {1..35}
      do
      cat $PATH1/OBJ_NSGAIII_DE_*_${instance}_SEED_${sed}_3_vars*_CR_${CR}*_F_${F}*_${b}*txt | tail -100 >> data/NSGA-III_${instance}_3_$b
      echo "" >> data/NSGA-III_${instance}_3_$b
      done
   done
