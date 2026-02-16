# NUDT21 RNA-seq Differential Expression Analysis
--
## Overview

This project presents an end-to-end paired-end RNA-seq analysis pipeline investigating transcriptional changes following NUDT21 knockdown in Homo sapiens. The workflow covers raw data acquisition, quality control, trimming, genome alignment, gene quantification, and differential expression analysis.

The objective is to identify genes significantly altered upon NUDT21 depletion and demonstrate a fully reproducible transcriptomics workflow.

## Dataset
- **BioProject:** PRJNA1305742  
- **Platform:** Illumina NovaSeq X Plus  
- **Library Type:** Paired-end RNA-seq  
- **Organism:** *Homo sapiens*  
- **Reference Genome:** GRCh38  

### Experimental Groups (SRA Accessions)
| Condition | Accession |
|---|---|
| Control | SRR34987610 |
| Control | SRR34987611 |
| NUDT21 Knockdown | SRR34987612 |
| NUDT21 Knockdown | SRR34987613 |

## Experimental Design
Gene expression is compared between:
- Control samples (n=2)
- NUDT21 knockdown samples (n=2)

## Workflow
1. Data acquisition (SRA Toolkit)
2. Quality control (FastQC)
3. Read trimming (Trimmomatic, paired-end)
4. Alignment (HISAT2 + Samtools)
5. Quantification (featureCounts)
6. Differential expression (DESeq2)
