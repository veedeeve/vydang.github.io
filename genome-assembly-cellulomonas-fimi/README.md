# Genome Assembly of Cellulomonas fimi
This project demonstrates a complete workflow for **de novo genome assembly and annotation** of *Cellulomonas fimi* using publicly available sequencing data (SRA: DRR099963). The pipeline includes **quality control, genome assembly, protein prediction, and functional annotation**.

## Background:
The genome data used is from a genome sequencing project and was obtained using Illumina MiSeq paired end sequencing.

## Results 
**Assembly Statistics (Spades_Careful):**
- N50:  `____ kb`
- Total assembly length: `________`
- Genome fraction: `_____%`
- Misassemblies: `__`

**Annotation (Prokka):**
- Predicted coding sequences (CDS): `____`
- rRNAs and tRNAs detected: `__ rRNA, ___ tRNA`
- Functional annotations via SwissProt: `_____%`

**Top SwissProt Protein Hits**
| Accession | E-Value | % Identity | BitScore |
| :-------: | :------: | :-------: | :-------: |
| A3DIJ8 | 1.32E-58 | 94.737 | 179.0|
| A3DIK9 | 0.0 | 100 | 509.0 |
| A3DIL4 | 0.0 | 100 | 741.0 |
| Q9UYB2 | 3.13E-121 | 54.277 | 355.0 |
| P37351 | 3.25E-53 | 57.931 | 169.0 |

## Programming Languages
![Bash](https://img.shields.io/badge/Bash-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Conda](https://img.shields.io/badge/conda-342B029?style=for-the-badge&logo=anaconda&logoColor=white)

## Tools Used
- **Data Retrieval:** `sra-tools`
- **Quality Control:** `Trimmomatic`
- **Quality Check:** `FastQC`, `QUAST`
- **Assembly:** `SPAdes`
- **Annotation:** `Prokka`
- **Functional annotation:** `BLASTp`
- **Data processing:** `awk`, `pandas`

## Workflow
<img width="685" height="355" alt="genome_assembly_workflow" src="https://github.com/user-attachments/assets/0e74e709-0b21-4726-ad46-3692a1022880" />
