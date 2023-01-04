export UPMEM_PROFILE_BASE="backend=simulator"
root_dir=/home/hamid/Documents/master/3/eece571p/project/aim
algorithm=SWG
version=DPU-MRAM
dir="${root_dir}/${algorithm}/${version}"
output_dir="${dir}/output"



dpu_num=(1 2 4 8 16 32 64)
tasklets_num=(1 4 8 16 19)

#dpu_num=(64)
#tasklets_num=(19)



for dpu in ${dpu_num[@]};
do
    for tasklet in ${tasklets_num[@]}
    do
       cd $dir
       filename="${output_dir}/result-DpuNum.${dpu}-TaskletNum.${tasklet}"
       python3 *.py -i ../../Datasets/sample-l100-e1-40K -l 100 -e 0.01 -n 40000 -b -t $tasklet -d $dpu >> $filename
    done
done



#python3 *.py -i ../../Datasets/sample-l100-e1-40K -l 100 -e 0.01 -n 40000 -b -d 64
cd $root_dir




