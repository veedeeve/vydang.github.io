#!/bin/bash

#genome assembly - thermocellum

#create directory for files
mkdir thermocellum_genome_assembly
cd thermocellum_genome_assembly

#create environment with tools
conda create -n genome_assembly
conda activate genome_assembly

mamba install -c bioconda sra-tools
mamba install -c bioconda fastqc
mamba install -c bioconda trimmomatic
mamba install -c bioconda spades
mamba install -c bioconda blast
mamba install -c prokka

#grab .sra data
prefetch SRR15202685
cd SRR15202685

#split files into forward and reverse
fastq-dump --split-files SRR15202685.sra 

#rename files
mv SRR15202685_1.fastq thermocellum_R1.fastq
mv SRR15202685_2.fastq thermocellum_R2.fastq
mv thermocellum_R* ../ && cd ../

#fastqc
fastqc thermocellum_R1.fastq thermocellum_R2.fastq

#trimmomatic
trimmomatic PE thermocellum_R1.fastq thermocellum_R2.fastq thermocellum_R1_paired.fastq thermocellum_R1_unpaired.fastq thermocellum_R2_paired.fastq thermocellum_R2_unpaired.fastq LEADING:10 TRAILING:20 SLIDINGWINDOW:4:20 MINLEN:100

#quality check
fastqc thermocellum_R1_paired.fastq thermocellum_R2_paired.fastq

#spades assembly -- error correction
spades.py -1 thermocellum_R1_paired.fastq -2 thermocellum_R2_paired.fastq -o spades_corrected --only-error-correction 

mv spades_corrected/corrected/thermocellum_R* ./

#spades assembly
spades.py -1 thermocellum_R1_paired.00.0_0.cor.fastq.gz  -2 thermocellum_R2_paired.00.0_0.cor.fastq.gz -o spades_assembly --only-assembler

#spades careful
spades.py -k 21,33,55,77,99,127 --careful --only-assembler -1 thermocellum_R1_paired.00.0_0.cor.fastq.gz -2 thermocellum_R2_paired.00.0_0.cor.fastq.gz -o spade_careful

#download reference annotated genome
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/015/865/GCF_000015865.1_ASM1586v1/GCF_000015865.1_ASM1586v1_genomic.gff.gz >%> mv GCF_000015865.1_ASM1586v1_genomic.gff.gz thermocellum_anno_ref_genome.gff.gz

#download reference genome
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/015/865/GCF_000015865.1_ASM1586v1/GCF_000015865.1_ASM1586v1_genomic.fna.gz >%> mv GCF_000015865.1_ASM1586v1_genomic.fna.gz thermocellum_ref_genome.fna.gz

#quast (quality check)
quast -o quast_thermo -R thermocellum_ref_genome.fna.gz -g thermocellum_ref_anno_genome.gff.gz -l "Spades_Default, Spades_Careful" spades_assembly/scaffolds.fasta spade_careful/scaffolds.fasta 

#annotate using PROKKA
prokka spade_careful/scaffolds.fasta --outdir prokka_annotation --prefix thermocellum --genus Clostridium --species thermocellum --strain DSM1313 --cpus 4

#conduct BLASTP
mkdir -p swissprot
cd swissprot
wget ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/uniprot_sprot.fasta.gz
gunzip uniprot_sprot.fasta.gz
cd..
makeblastdb -in swissprot/uniprot_sprot.fasta -dbtype prot -out swissprot/swissprot_db
blastp -query prokka_annotation/thermocellum.faa -db swissprot/swissprot_db -out thermocellum_blastp.out -evalue 1e-5 -outfmt 6 -num_threads 4









