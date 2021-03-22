#swarm -f /home/sevillas2/git/Pipeliner/testing/star_test.slurm --verbose 1 --sbatch "--cpus-per-task=32 --mem=110g --time=48:00:00"

module load STAR; \
STAR \
--runThreadN 8 \
--genomeDir /data/CCBR_Pipeliner/db/PipeDB/Indices/GENOME_REFs/hg38_major_chrs/STAR/2.7.6a/ --genomeLoad NoSharedMemory \
--readFilesIn /data/CCBR_Pipeliner/sandbox/arriba/fastq/SRR1659966.R1.fastq.gz /data/CCBR_Pipeliner/sandbox/arriba/fastq/SRR1659966.R2.fastq.gz --readFilesCommand zcat \
--outFileNamePrefix /data/CCBR_Pipeliner/sandbox/arriba/output/03_optimized/SRR1659966.star \
--outStd BAM_Unsorted --outSAMtype BAM Unsorted --outSAMunmapped Within --outBAMcompression 0 \
--outFilterMultimapNmax 50 --peOverlapNbasesMin 10 --alignSplicedMateMapLminOverLmate 0.5 --alignSJstitchMismatchNmax 5 -1 5 5 \
--chimSegmentMin 10 --chimOutType WithinBAM HardClip --chimJunctionOverhangMin 10 --chimScoreDropMax 30 \
--chimScoreJunctionNonGTAG 0 --chimScoreSeparation 1 --chimSegmentReadGapMax 3 --chimMultimapNmax 50
