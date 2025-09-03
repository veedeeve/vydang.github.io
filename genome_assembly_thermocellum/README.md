# Genome Assembly of Clostridium Thermocellum
This project demonstrates a complete workflow for **de novo genome assembly and annotation** of *Clostridium thermocellum* using publicly available sequencing data (SRA: SRR15202685). The pipeline includes **quality control, genome assembly, evaluation, gene prediction, and functional annotation**.

## Tools Used
- **Data retrieval:** `sra-tools`
- **Quality control:** `FastQC`, `Trimmomatic`
- **Assembly:** `SPAdes`
- **Assembly evaluation:** `QUAST`
- **Annotation:** `Prokka`
- **Functional annotation:** `BLASTp` vs SwissProt
- **Data processing:** `awk`, Python (`pandas`)
