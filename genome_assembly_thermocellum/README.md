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
