#create sra text file with sample names
ls *.fastq.gz > /data/sevillas2/arriba/refs/sra_files.txt
sed -i -e 's/.R1.fastq.gz//g' /data/sevillas2/arriba/refs/sra_files.txt
sed -i -e 's/.R2.fastq.gz//g' /data/sevillas2/arriba/refs/sra_files.txt
awk '!seen[$0]++' /data/sevillas2/arriba/refs/sra_files.txt > /data/sevillas2/arriba/refs/sra_files_unique.txt

#download SRA files
#ref: https://www.ncbi.nlm.nih.gov/books/NBK242621/
#proj: https://www.ncbi.nlm.nih.gov/Traces/study/?acc=SRP043081&o=acc_s%3Aa
#fasterq: https://github.com/ncbi/sra-tools/blob/master/tools/fasterq-dump/readme.txt
sh 01_create_submissions.sh
swarm -f /home/sevillas2/git/Pipeliner/testing/02_submit_fq.slurm --verbose 1
swarm -f /home/sevillas2/git/Pipeliner/testing/03_submit_gz.slurm --verbose 1 --time=120:00:00

#rename files
rename _1 .R1 /data/CCBR_Pipeliner/sandbox/arriba/fastq/*_1.fastq.gz
rename _2 .R2 /data/CCBR_Pipeliner/sandbox/arriba/fastq/*_2.fastq.gz

#run original pipeline
Pipeliner, hg38, QC
output: /data/CCBR_Pipeliner/sandbox/arriba/output/01_pipeliner/

#download arriba for blacklist
https://github.com/suhrig/arriba/releases

#old index used in STAR doesn't work with updated version, use Skyler's generated index_dir
/data/CCBR_Pipeliner/db/PipeDB/Indices/GENOME_REFs/hg38_major_chrs/

#test STAR alone before pipeing to arriba - too memory intensive to run on interactive node
swarm -f /home/sevillas2/git/Pipeliner/testing/star_test.slurm --verbose 1
