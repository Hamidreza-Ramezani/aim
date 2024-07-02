root_dir=/home/hamidkeb/aim
algorithm=WFA
version=DPU-MRAM
dir="${root_dir}/${algorithm}/${version}"
output_dir="${dir}/output"
performance_log="${dir}/performance.log"
data="/data/hamid"


dpu_num=("2176")
tasklets_num=("11")


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


tasklets_num=18
output_file="/home/hamidkeb/aim/WFA/DPU-MRAM/experiment-25-june.txt"
touch "$output_file" 


#for (( dpu_num=128; dpu_num<=2176; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/ERR240727-l100-e1-5MPairs -l 100 -e 0.01 -n 5000000 -b -t 18 -d $dpu_num >> $output_file
#done
#
#echo "------------------------------------------------------------" >> $output_file
#
#
#for (( dpu_num=128; dpu_num<=2176; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/SRR826460-l150-e1-5MPairs -l 150 -e 0.01 -n 5000000 -b -t 18 -d $dpu_num >> $output_file
#done
#
#
#echo "------------------------------------------------------------" >> $output_file
#
#for (( dpu_num=128; dpu_num<=2176; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/SRR826471-l250-e1-5MPairs -l 250 -e 0.01 -n 5000000 -b -t 14 -d $dpu_num >> $output_file
#done
#
#echo "------------------------------------------------------------" >> $output_file
#
#for (( dpu_num=128; dpu_num<=2176; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/small-datasets/synthetic-l500-e1-1MPairs -l 500 -e 0.01 -n 1000000 -t 10 -b -d $dpu_num >> $output_file 
#done
#
#
#echo "------------------------------------------------------------" >> $output_file
#
#for (( dpu_num=128; dpu_num<=2176; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/small-datasets/synthetic-l1000-e1-1MPairs -l 1000 -e 0.01 -n 1000000 -b -t 6 -d $dpu_num >> $output_file
#done
#
#
#echo "------------------------------------------------------------" >> $output_file
#
#for (( dpu_num=128; dpu_num<=2176; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/ERR240727-l100-e5-5MPairs -l 100 -e 0.05 -n 5000000 -b -t 14 -d $dpu_num >> $output_file
#done
#
#
#echo "------------------------------------------------------------" >> $output_file
#
#for (( dpu_num=128; dpu_num<=2176; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/SRR826460-l150-e5-5MPairs -l 150 -e 0.05 -n 5000000 -b -t 11 -d $dpu_num >> $output_file
#done
#
#echo "------------------------------------------------------------" >> $output_file
#
#
#for (( dpu_num=128; dpu_num<=2176; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/SRR826471-l250-e5-5MPairs -l 250 -e 0.05 -n 5000000 -b -t 8 -d $dpu_num >> $output_file
#done
#
#
#echo "------------------------------------------------------------" >> $output_file
#
#for (( dpu_num=128; dpu_num<=2176; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/small-datasets/synthetic-l500-e5-1MPairs -l 500 -e 0.05 -n 1000000 -b -t 4 -d $dpu_num >> $output_file
#done
#
#echo "------------------------------------------------------------" >> $output_file
#
#
#for (( dpu_num=128; dpu_num<=2176; dpu_num+=128 ))
#do
#rm -rf build/
#python3 run*.py -i ${data}/small-datasets/synthetic-l1000-e5-1MPairs -l 1000 -e 0.05 -n 1000000 -b -t 2 -d $dpu_num >> $output_file
#done





dpu_num=2304
#python3 run*.py -i ${data}/ERR240727-l100-e1-5MPairs -l 100 -e 0.01 -n 5000000 -b -t 18 -d $dpu_num 
#python3 run*.py -i ${data}/SRR826460-l150-e1-5MPairs -l 150 -e 0.01 -n 5000000 -b -t 18 -d $dpu_num
#python3 run*.py -i ${data}/SRR826471-l250-e1-5MPairs -l 250 -e 0.01 -n 5000000 -b -t 14 -d $dpu_num 
#python3 run*.py -i ${data}/small-datasets/synthetic-l500-e1-1MPairs -l 500 -e 0.01 -n 1000000 -t 10 -b -d $dpu_num 
#python3 run*.py -i ${data}/small-datasets/synthetic-l1000-e1-1MPairs -l 1000 -e 0.01 -n 1000000 -b -t 6 -d $dpu_num 
#python3 run*.py -i ${data}/ERR240727-l100-e5-5MPairs -l 100 -e 0.05 -n 5000000 -b -t 14 -d $dpu_num 
#python3 run*.py -i ${data}/SRR826460-l150-e5-5MPairs -l 150 -e 0.05 -n 5000000 -b -t 11 -d $dpu_num 
#python3 run*.py -i ${data}/SRR826471-l250-e5-5MPairs -l 250 -e 0.05 -n 5000000 -b -t 8 -d $dpu_num 
python3 run*.py -i ${data}/small-datasets/synthetic-l500-e5-1MPairs -l 500 -e 0.05 -n 1000000 -b -t 4 -d $dpu_num 
#python3 run*.py -i ${data}/small-datasets/synthetic-l1000-e5-1MPairs -l 1000 -e 0.05 -n 1000000 -b -t 2 -d $dpu_num



