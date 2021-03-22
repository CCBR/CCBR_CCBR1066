#!/bin/sh
# properties = {"type": "single", "rule": "star_and_arriba", "local": false, "input": ["/data/CCBR_Pipeliner/sandbox/arriba/fastq/SRR1659960.R1.fastq.gz", "/data/CCBR_Pipeliner/sandbox/arriba/fastq/SRR1659960.R2.fastq.gz"], "output": ["/data/CCBR_Pipeliner/sandbox/arriba/fastq/SRR1659960.star.bam", "/data/CCBR_Pipeliner/sandbox/arriba/fastq/SRR1659960_fusions.tsv", "/data/CCBR_Pipeliner/sandbox/arriba/fastq/SRR1659960_fusions_discarded.tsv"], "wildcards": {"sample": "SRR1659960"}, "params": {"batch": "--cpus-per-task=32 --mem=110g --time=48:00:00", "index": "/data/CCBR_Pipeliner/db/PipeDB/Indices/GENOME_REFs/hg38_major_chrs/STAR/2.7.6a/", "base": "/data/CCBR_Pipeliner/sandbox/arriba/output/03_optimized/SRR1659960.star", "assembly": "/data/CCBR_Pipeliner/db/PipeDB/Indices/GENOME_REFs/hg38_major_chrs/ref.fa", "anno": "/data/CCBR_Pipeliner/db/PipeDB/Indices/hg38_basic/genes.gtf", "bl": "/data/sevillas2/arriba/blacklist_hg38_GRCh38_v2.0.0.tsv"}, "log": [], "threads": 1, "resources": {}, "jobid": 12, "cluster": {"gres": "lscratch:256", "mem": "96g", "partition": "norm", "time": "4-00:00:00", "threads": 32, "cores": 16}}
 cd /spin1/home/linux/sevillas2/arriba && \
/usr/local/Anaconda/envs/py3.7/bin/python3.7 \
-m snakemake /data/CCBR_Pipeliner/sandbox/arriba/fastq/SRR1659960.star.bam --snakefile /spin1/home/linux/sevillas2/arriba/Snakefile \
--force -j --keep-target-files --keep-remote \
--wait-for-files /spin1/home/linux/sevillas2/arriba/.snakemake/tmp.jx7a3p4_ /data/CCBR_Pipeliner/sandbox/arriba/fastq/SRR1659960.R1.fastq.gz /data/CCBR_Pipeliner/sandbox/arriba/fastq/SRR1659960.R2.fastq.gz --latency-wait 120 \
 --attempt 1 --force-use-threads \
--wrapper-prefix https://github.com/snakemake/snakemake-wrappers/raw/ \
 --configfiles /data/CCBR_Pipeliner/sandbox/arriba/output/03_optimized/log/20201217_1255_snakemake_config.yaml -p --allowed-rules star_and_arriba --nocolor --notemp --no-hooks --nolock \
--mode 2  && touch /spin1/home/linux/sevillas2/arriba/.snakemake/tmp.jx7a3p4_/12.jobfinished || (touch /spin1/home/linux/sevillas2/arriba/.snakemake/tmp.jx7a3p4_/12.jobfailed; exit 1)

