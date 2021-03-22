sra_file="/data/sevillas2/arriba/refs/sra_files_unique.txt"

awk '{ print "fasterq-dump " $1 " -O /data/sevillas2/arriba/fastq -t /data/sevillas2/arriba/fastq" }' $sra_file > /home/sevillas2/git/Pipeliner/testing/submit_fq.slurm
awk '{ print "gzip /data/sevillas2/arriba/fastq/" $1 "_1.fastq \n gzip /data/sevillas2/arriba/fastq/" $1 "_2.fastq" }' $sra_file > /home/sevillas2/git/Pipeliner/testing/submit_gz.slurm
