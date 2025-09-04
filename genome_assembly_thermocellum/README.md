# Genome Assembly of Clostridium Thermocellum
This project demonstrates a complete workflow for **de novo genome assembly and annotation** of *Clostridium thermocellum* using publicly available sequencing data (SRA: SRR15202685). The pipeline includes **quality control, genome assembly, evaluation, gene prediction, and functional annotation**.

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
