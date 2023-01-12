export UPMEM_PROFILE_BASE="backend=simulator"
root_dir=/home/hamid/Documents/master/3/eece571p/project/aim
algorithm=WFA
version=DPU-MRAM
dir="${root_dir}/${algorithm}/${version}"
output_dir="${dir}/output"
performance_log="${dir}/performance.log"



#dpu_num=(1 2 4 8 16 32 64)
#tasklets_num=(1 4 8 16 19)

dpu_num=(64)
tasklets_num=(19)



for dpu in ${dpu_num[@]};
do
    for tasklet in ${tasklets_num[@]}
    do
       cd $dir
       filename="${output_dir}/jan11-experiment.log"
       python3 run*.py -i ../../Datasets/sample-l100-e1-50 -l 100 -e 0.10 -n 50000 -b -t $tasklet -d $dpu
    done
done



#cd $dir


#dpuNum experiments
#taskletsNum experiments
#readLength experiments
#editDistance experiments
#numReads experiments


#dpuNum experiments

#dpu_num=(1 2 4 8 16 32 64)
#tasklets_num=19
#read_length=100
#edit_distance=0.01
#number_of_reads=50000
#
#
#for dpu in ${dpu_num[@]};
#do
#   echo -e "dpu_num: ${dpu},\t\ttasklets_num: ${tasklets_num},\t\tread_length: ${read_length},\tedit_distance: ${edit_distance},\tnumber_of_reads: ${number_of_reads}" >> $performance_log
#   python3 *.py -i ../../Datasets/sample-l100-e1-50K -l $read_length -e $edit_distance -n $number_of_reads -b -t $tasklets_num -d $dpu
#   echo "" >> $performance_log
#   echo "" >> $performance_log
#done



#taskletsNum experiments

#dpu_num=64
#tasklets_num=(1 4 8 16 19)
#read_length=100
#edit_distance=0.01
#number_of_reads=5000000
#
#
#for tasklets in ${tasklets_num[@]};
#do
#   echo -e "dpu_num: ${dpu_num},\t\ttasklets_num: ${tasklets},\t\tread_length: ${read_length},\tedit_distance: ${edit_distance},\tnumber_of_reads: ${number_of_reads}" >> $performance_log
#   python3 *.py -i ../../Datasets/sample-l100-e1-50K -l $read_length -e $edit_distance -n $number_of_reads -b -t $tasklets -d $dpu_num
#   echo "" >> $performance_log
#   echo "" >> $performance_log
#done






#readLength experiments

#dpu_num=64
#tasklets_num=19
#read_length=(100 150 250 500 1000 5000 10000)
#edit_distance=0.01
#number_of_reads=5000000
#
#
#echo -e "dpu_num: ${dpu_num},\t\ttasklets_num: ${tasklets_num},\t\tread_length: 100,\tedit_distance: ${edit_distance},\tnumber_of_reads: ${number_of_reads}" >> $performance_log
#python3 *.py -i ../../Datasets/sample-l100-e1-50K -l 100 -e $edit_distance -n $number_of_reads -b -t $tasklets_num -d $dpu_num
#echo "" >> $performance_log
#echo "" >> $performance_log
#
#
#echo -e "dpu_num: ${dpu_num},\t\ttasklets_num: ${tasklets_num},\t\tread_length: 150,\tedit_distance: ${edit_distance},\tnumber_of_reads: ${number_of_reads}" >> $performance_log
#python3 *.py -i ../../Datasets/SRR826460-l150-e1-5MPairs -l 150 -e $edit_distance -n $number_of_reads -b -t $tasklets_num -d $dpu_num
#echo "" >> $performance_log
#echo "" >> $performance_log
#
#
#echo -e "dpu_num: ${dpu_num},\t\ttasklets_num: ${tasklets_num},\t\tread_length: 250,\tedit_distance: ${edit_distance},\tnumber_of_reads: ${number_of_reads}" >> $performance_log
#python3 *.py -i ../../Datasets/SRR826471-l250-e1-5MPairs -l 250 -e $edit_distance -n $number_of_reads -b -t $tasklets_num -d $dpu_num
#echo "" >> $performance_log
#echo "" >> $performance_log




#editDistance experiments

#dpu_num=64
#tasklets_num=19
#read_length=100
#edit_distance=(0.01 0.05)
#number_of_reads=5000000
#
#
#for edit in ${edit_distance[@]};
#do
#   echo -e "dpu_num: ${dpu_num},\t\ttasklets_num: ${tasklets_num},\t\tread_length: ${read_length},\tedit_distance: ${edit},\tnumber_of_reads: ${number_of_reads}" >> $performance_log
#   python3 *.py -i ../../Datasets/sample-l100-e1-50K -l $read_length -e $edit -n $number_of_reads -b -t $tasklets_num -d $dpu_num
#   echo "" >> $performance_log
#   echo "" >> $performance_log
#done




#numReads experiments


#dpu_num=64
#tasklets_num=19
#read_length=100
#edit_distance=0.01
#number_of_reads=(50000, 100000, 500000, 1000000, 5000000)
#
#
#echo -e "dpu_num: ${dpu_num},\t\ttasklets_num: ${tasklets_num},\t\tread_length: ${read_length},\tedit_distance: ${edit_distance},\tnumber_of_reads: 50000" >> $performance_log
#python3 *.py -i ../../Datasets/ERR240727-l100-e1-50KPairs -l $read_length -e $edit_distance -n 50000 -b -t $tasklets_num -d $dpu_num
#echo "" >> $performance_log
#echo "" >> $performance_log
#
#
#echo -e "dpu_num: ${dpu_num},\t\ttasklets_num: ${tasklets_num},\t\tread_length: ${read_length},\tedit_distance: ${edit_distance},\tnumber_of_reads: 100000" >> $performance_log
#python3 *.py -i ../../Datasets/ERR240727-l100-e1-100KPairs -l $read_length -e $edit_distance -n 100000 -b -t $tasklets_num -d $dpu_num
#echo "" >> $performance_log
#echo "" >> $performance_log
#
#
#echo -e "dpu_num: ${dpu_num},\t\ttasklets_num: ${tasklets_num},\t\tread_length: ${read_length},\tedit_distance: ${edit_distance},\tnumber_of_reads: 500000" >> $performance_log
#python3 *.py -i ../../Datasets/ERR240727-l100-e1-500KPairs -l $read_length -e $edit_distance -n 500000 -b -t $tasklets_num -d $dpu_num
#echo "" >> $performance_log
#echo "" >> $performance_log
#
#
#echo -e "dpu_num: ${dpu_num},\t\ttasklets_num: ${tasklets_num},\t\tread_length: ${read_length},\tedit_distance: ${edit_distance},\tnumber_of_reads: 1000000" >> $performance_log
#python3 *.py -i ../../Datasets/ERR240727-l100-e1-1MPairs -l $read_length -e $edit_distance -n 1000000 -b -t $tasklets_num -d $dpu_num
#echo "" >> $performance_log
#echo "" >> $performance_log
#
#
#echo -e "dpu_num: ${dpu_num},\t\ttasklets_num: ${tasklets_num},\t\tread_length: ${read_length},\tedit_distance: ${edit_distance},\tnumber_of_reads: 5000000" >> $performance_log
#python3 *.py -i ../../Datasets/ERR240727-l100-e1-5MPairs -l $read_length -e $edit_distance -n 5000000 -b -t $tasklets_num -d $dpu_num
#echo "" >> $performance_log
#echo "" >> $performance_log



cd $root_dir




