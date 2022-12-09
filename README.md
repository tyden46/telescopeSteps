# Telescope Steps
1. Download the files (see download.sh)
2. Run fastqc (see `fastqc.sh`) and multiqc (run `multiqc --interactive .`)
3. Run telescope (see `telescope.sh`)
4. Run rename.sh
5. Download annotation here `https://raw.githubusercontent.com/liniguez/Telescope_MetaAnnotations/main/TE_annotation.v2.0.tsv`
6. Merge telescope output with FullJoin.R script
7. Run MaasLin on output
8. Run additional analyses as needed, check Maggie's paper (https://aacrjournals.org/cancerres/article/81/13/3449/666868) or tyson's manuscript https://docs.google.com/document/d/1aoJDj9SEiR1YRQRbAR2uwIOVcyDn5xgp9oTE-A_O5kI/edit?usp=sharing
