# Vy Dang  
Bioinformatics | Graduate Student

I am a computational biology researcher building cross-disciplinary expertise in transcriptomics, structural bioinformatics, and high-performance data pipelines. My work focuses on developing workflows across multiple domains of bioinformatics while strengthening both biological insight and computational rigor.

## Current Focus
- Protein structure trajectory modeling
- WGS Analysis: Variant Calling

## Featured Projects

### Genome Assembly and Annotation
De novo genome assembly using short-read sequencing data followed by structural and functional annotation.

**Key results**
- A 3.49 Mb draft genome was assembled across 286 contigs, consistent with expected genome size for C. thermocellum.
- Prokka identified:
  - 2,981 coding sequences (CDS)
  - 55 tRNAs
  - 4 rRNAs
  - 1 tmRNA
-726 high-confidence matches (24.35%) in BLASTP against Swiss-Prot

**Tools:** SPAdes, QUAST, Prokka, BLAST, FastQC, Trimmomatic

[View the full GitHub repository](https://github.com/veedeeve/thermocellum-genome-assembly)

---

### RNA-Seq Differential Expression – NUDT21 Knockdown
End-to-end RNA-seq analysis pipeline for NUDT21 knockdown including read QC, alignment (HISAT2), quantification (featureCounts), differential expression (limma-voom), and GO-based Gene Set Enrichment Analysis (clusterProfiler) in Homo Sapiens

**Key results**
- 11,450 genes significant (FDR < 0.05)
- Ribosome biogenesis & RNA processing pathways strongly affected
- Results suggest that NUDT21 regulates core proliferative and RNA-processing programs

**Tools:** HISAT2, samtools, Subread, FastQC, MultiQC, Trimmomatic, featureCounts, ggplot2, Bioconductor, EnhancedVolcano, limma-voom, clusterProfiler

[View the full GitHub repository](https://github.com/veedeeve/rna-seq-nudt21-functional-analysis)

---

### Protein Structural Trajectory Modeling
Trajectory inference of protein isoforms using RMSD-based clustering and structural similarity analysis.

**Tools:** Python, MDAnalysis, PyTorch

## Technical Skills

**Languages:** Bash, Python, R  
**Bioinformatics:** RNA-seq, alignment, gene quantification, differential expression  
**Tools:** HISAT2, Samtools, featureCounts, FastQC, SRA Toolkit  
**Computing:** Linux, HPC clusters, Conda environments  
**Data Analysis:** DESeq2, PCA, clustering, statistical modeling


