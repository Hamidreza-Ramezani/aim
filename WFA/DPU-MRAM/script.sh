root_dir=/home/hamidkeb/aim
algorithm=WFA
version=DPU-MRAM
dir="${root_dir}/${algorithm}/${version}"
output_dir="${dir}/output"
performance_log="${dir}/performance.log"
data="/data/hamid/dataset"



#dpu_num=(1 2 4 8 16 32 64)
#tasklets_num=(1 4 8 16 19)

dpu_num=("2304")
tasklets_num=("18")


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


rm -rf build/
eval $compile1
#perf stat -e power/energy-ram/ $program1
#likwid-powermeter -m $program1
likwid-perfctr -C 0-63 -g ENERGY -m $program1
#start=`date +%s.%N`
#$program1
#end=`date +%s.%N`
#echo "$end - $start" | bc -l 


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


#program1="python3 run*.py -i ${data}/ERR240727-l100-e1-5MPairs -l 100 -e 0.01 -n 5000000 -b -t $tasklets_num -d $dpu_num"
#program2="python3 run*.py -i ${data}/SRR826460-l150-e1-5MPairs -l 150 -e 0.01 -n 5000000 -b -d $dpu_num"
#program3="python3 run*.py -i ${data}/SRR826471-l250-e1-5MPairs -l 250 -e 0.01 -n 5000000 -b -d $dpu_num"
#program4="python3 run*.py -i ${data}/synthetic-l500-e1-5MPairs -l 500 -e 0.01 -n 5000000 -b -d $dpu_num"
#program5="python3 run*.py -i ${data}/synthetic-l1000-e1-5MPairs -l 1000 -e 0.01 -n 5000000 -b -d $dpu_num"


#$program1
#$program2
#$program3
#$program4
#$program5


#start=`date +%s.%N`
#$program
#end=`date +%s.%N`
#echo "$end - $start" | bc -l 

#compile1="make NR_TASKLETS=18 NR_DPUS=DPU_ALLOCATE_ALL FLAGS=\"-DMAX_SCORE=5 -DREAD_SIZE=112 -DBACKTRACE -DWRAM_SEGMENT=2432\""
#see here: /sys/devices/power/events


#rm dpu-out
#rm out
rm performance.log



