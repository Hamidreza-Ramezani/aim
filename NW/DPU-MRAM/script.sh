root_dir=/home/hamidkeb/aim
algorithm=NW
version=DPU-MRAM
dir="${root_dir}/${algorithm}/${version}"
output_dir="${dir}/output"
performance_log="${dir}/performance.log"
data="/data/hamid"
data_small="/data/hamid/small-datasets"

dpu_num=("2304")
tasklets_num=("20")

#2400-DPUs
compile1="make NR_TASKLETS=18 NR_DPUS=2304 FLAGS=\"-DMAX_SCORE=5 -DREAD_SIZE=112 -DBACKTRACE -DWRAM_SEGMENT=2432\""
compile2="make NR_TASKLETS=18 NR_DPUS=2304 FLAGS=\"-DMAX_SCORE=8 -DREAD_SIZE=160 -DBACKTRACE -DWRAM_SEGMENT=2358\""
compile3="make NR_TASKLETS=14 NR_DPUS=2304 FLAGS=\"-DMAX_SCORE=13 -DREAD_SIZE=264 -DBACKTRACE -DWRAM_SEGMENT=3242\""
compile4="make NR_TASKLETS=10 NR_DPUS=2304 FLAGS=\"-DMAX_SCORE=25 -DREAD_SIZE=512 -DBACKTRACE -DWRAM_SEGMENT=5002\""
compile5="make NR_TASKLETS=6 NR_DPUS=2304 FLAGS=\"-DMAX_SCORE=50 -DREAD_SIZE=1024 -DBACKTRACE -DWRAM_SEGMENT=8598\""
program1="./build/host ${data}/ERR240727-l100-e1-5MPairs ./out 5000000"
program2="./build/host ${data}/SRR826460-l150-e1-5MPairs ./out 5000000"
program3="./build/host ${data}/SRR826471-l250-e1-5MPairs ./out 5000000"
program4="./build/host ${data}/synthetic-l500-e1-5MPairs ./out 5000000"
program5="./build/host ${data}/synthetic-l1000-e1-5MPairs ./out 5000000"

#rm -rf build/
#eval $compile1
#perf stat -e power/energy-pkg/,power/energy-ram/ $program1
#rm -rf build/
#eval $compile2
#perf stat -e power/energy-pkg/,power/energy-ram/ $program2
#rm -rf build/
#eval $compile3
#perf stat -e power/energy-pkg/,power/energy-ram/ $program3
#rm -rf build/
#eval $compile4
#perf stat -e power/energy-pkg/,power/energy-ram/ $program4
#rm -rf build/
#eval $compile5
#perf stat -e power/energy-pkg/,power/energy-ram/ $program5

#rm -rf build/
#eval $compile5
#$program5
#dpu-profiling memory-transfer $program1
#rm -rf build/
#eval $compile2
#$program2
#rm -rf build/
#eval $compile3
#$program3
#rm -rf build/
#eval $compile4
#$program4
#rm -rf build/
#eval $compile5
#$program5

program1="python3 run*.py -i ${data}/ERR240727-l100-e1-5MPairs -l 100 -e 0.01 -n 5000000 -b -d $dpu_num"
program2="python3 run*.py -i ${data}/SRR826460-l150-e1-5MPairs -l 150 -e 0.01 -n 5000000 -b -d $dpu_num"
program3="python3 run*.py -i ${data}/SRR826471-l250-e1-5MPairs -l 250 -e 0.01 -n 5000000 -b -d $dpu_num"
program4="python3 run*.py -i ${data}/synthetic-l500-e1-5MPairs -l 500 -e 0.01 -n 5000000 -b -d $dpu_num"
program5="python3 run*.py -i ${data}/synthetic-l1000-e1-1MPairs -l 1000 -e 0.01 -n 1000000 -b -d $dpu_num"

program8="python3 run*.py -i ${data_small}/synthetic-l2000-e1-100KPairs -l 2000 -e 0.01 -n 100000 -b -d $dpu_num"
program9="python3 run*.py -i ${data_small}/synthetic-l2500-e1-100KPairs -l 2500 -e 0.01 -n 100000 -b -d $dpu_num"
program10="python3 run*.py -i ${data_small}/synthetic-l3000-e1-100KPairs -l 3000 -e 0.01 -n 100000 -b -d $dpu_num"
program11="python3 run*.py -i ${data_small}/synthetic-l5000-e1-10KPairs -l 5000 -e 0.01 -n 10000 -b -d $dpu_num"



#rm -rf build/
#$program1
rm -rf build/
$program2
#rm -rf build/
#$program3
#rm -rf build/
#$program4
#rm -rf build/
#$program5
#rm -rf build/
#$program8
#rm -rf build/
#$program9
#rm -rf build/
#$program10
#rm -rf build/
#$program11


#tasklets_num=6
#output_file="/home/hamidkeb/power-incremental-experiment/nw/june27/output_tasklets_${tasklets_num}.txt"
#touch "$output_file" 
#exec > $output_file 2>&1
#
#for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/ERR240727-l100-e1-5MPairs -l 100 -e 0.01 -n 5000000 -b -t 20 -d $dpu_num
#done
#
#echo "------------------------------------------------------------"
#
#
#for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/SRR826460-l150-e1-5MPairs -l 150 -e 0.01 -n 5000000 -b -t 20 -d $dpu_num
#done
#
#
#echo "------------------------------------------------------------"
#
#for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/SRR826471-l250-e1-5MPairs -l 250 -e 0.01 -n 5000000 -b -t 20 -d $dpu_num
#done
#
#echo "------------------------------------------------------------"
#
#for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data_small}/synthetic-l500-e1-1MPairs -l 500 -e 0.01 -n 1000000 -t 19 -b -d $dpu_num
#done
#
#
#echo "------------------------------------------------------------"
#
#for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data_small}/synthetic-l1000-e1-250KPairs -l 1000 -e 0.01 -n 250000 -b -t 6 -d $dpu_num 
#done
#
#
#echo "------------------------------------------------------------"
#
#for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/ERR240727-l100-e5-5MPairs -l 100 -e 0.05 -n 5000000 -b -t 20 -d $dpu_num
#done
#
#
#echo "------------------------------------------------------------"
#
#for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/SRR826460-l150-e5-5MPairs -l 150 -e 0.05 -n 5000000 -b -t 20 -d $dpu_num
#done
#
#echo "------------------------------------------------------------"
#
#
#for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/SRR826471-l250-e5-5MPairs -l 250 -e 0.05 -n 5000000 -b -t 20 -d $dpu_num
#done
#
#
#echo "------------------------------------------------------------"
#
#for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data_small}/synthetic-l500-e5-1MPairs -l 500 -e 0.05 -n 1000000 -b -t 18 -d $dpu_num
#done
#
#echo "------------------------------------------------------------"
#
#
#for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data_small}/synthetic-l1000-e5-250KPairs -l 1000 -e 0.05 -n 250000 -b -t 6 -d $dpu_num 
#done


dpu_num=2304

#python3 run*.py -i ${data}/ERR240727-l100-e1-5MPairs -l 100 -e 0.01 -n 5000000 -b -t 20 -d $dpu_num
#python3 run*.py -i ${data}/SRR826460-l150-e1-5MPairs -l 150 -e 0.01 -n 5000000 -b -t 20 -d $dpu_num
#python3 run*.py -i ${data}/SRR826471-l250-e1-5MPairs -l 250 -e 0.01 -n 5000000 -b -t 20 -d $dpu_num
#python3 run*.py -i ${data_small}/synthetic-l500-e1-5MPairs -l 500 -e 0.01 -n 1000000 -t 19 -b -d $dpu_num
#python3 run*.py -i ${data}/synthetic-l1000-e1-1MPairs -l 1000 -e 0.01 -n 1000000 -b -t 11 -d $dpu_num 
#
#python3 run*.py -i ${data}/ERR240727-l100-e5-5MPairs -l 100 -e 0.05 -n 5000000 -b -t 20 -d $dpu_num
#python3 run*.py -i ${data}/SRR826460-l150-e5-5MPairs -l 150 -e 0.05 -n 5000000 -b -t 20 -d $dpu_num
#python3 run*.py -i ${data}/SRR826471-l250-e5-5MPairs -l 250 -e 0.05 -n 5000000 -b -t 20 -d $dpu_num
#python3 run*.py -i ${data_small}/synthetic-l500-e5-1MPairs -l 500 -e 0.05 -n 1000000 -b -t 18 -d $dpu_num
#python3 run*.py -i ${data}/synthetic-l1000-e5-1MPairs -l 1000 -e 0.05 -n 1000000 -b -t 11 -d $dpu_num 



