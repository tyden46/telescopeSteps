for file in */telescope-TE_counts.tsv; do mv -- "$file" "${file%/*}/${file%/*}-telescope-TE_counts.tsv"; done
