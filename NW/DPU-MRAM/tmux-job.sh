root_dir=/home/hamidkeb/aim
algorithm=SWG
version=DPU-MRAM
dir="${root_dir}/${algorithm}/${version}"
output_dir="${dir}/output"
performance_log="${dir}/performance.log"
data="/data/hamid/dataset"


#dpu_num=("384")
#tasklets_num=("11")


program1="python3 run*.py -i ${data}/ERR240727-l100-e1-5MPairs -l 100 -e 0.01 -n 5000000 -b -t $tasklets_num -d $dpu_num"
program2="python3 run*.py -i ${data}/SRR826460-l150-e1-5MPairs -l 150 -e 0.01 -n 5000000 -b -d $dpu_num"
program3="python3 run*.py -i ${data}/SRR826471-l250-e1-5MPairs -l 250 -e 0.01 -n 5000000 -b -d $dpu_num"
program4="python3 run*.py -i ${data}/synthetic-l500-e1-5MPairs -l 500 -e 0.01 -n 5000000 -b -d $dpu_num"
program5="python3 run*.py -i ${data}/synthetic-l1000-e5-5MPairs -l 1000 -e 0.05 -n 5000000 -b -d $dpu_num"
program6="python3 run*.py -i ${data}/synthetic-l5000-e1-1MPairs -l 5000 -e 0.01 -n 500000 -b -d $dpu_num -r"
program7="python3 run*.py -i ${data}/synthetic-l10000-e5-1MPairs -l 10000 -e 0.05 -n 500000 -d $dpu_num -r"

#$program1
#$program2
#$program3
#$program4
#$program5
#$program6
#$program7


tasklets_num=17
output_file="/home/hamidkeb/power-incremental-experiment/output_tasklets_${tasklets_num}_new.txt"
touch "$output_file" 
for (( dpu_num=1152; dpu_num<=2304; dpu_num+=128 ))
do
python3 run*.py -i ${data}/ERR240727-l100-e1-5MPairs -l 100 -e 0.01 -n 5000000 -b -t $tasklets_num -d $dpu_num >> "$output_file"
done

#for (( tasklets_num=1; tasklets_num<=18; tasklets_num+=1 ))
#do
#  output_file="/home/hamidkeb/power-incremental-experiment/output_tasklets_${tasklets_num}.txt"
#  touch "$output_file" 
#  for (( dpu_num=128; dpu_num<=2304; dpu_num+=128 ))
#  do
#      python3 run*.py -i ${data}/ERR240727-l100-e1-5MPairs -l 100 -e 0.01 -n 5000000 -b -t $tasklets_num -d $dpu_num >> "$output_file"
#  done
#done


rm dpu-out
rm out
rm performance.log

