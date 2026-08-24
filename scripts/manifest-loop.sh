echo -e "sample-id\tforward-absolute-filepath\treverse-absolute-filepath" > manifest.tsv
for file in data/trimmed/*_1.trimmed.fastq.gz; do
	sample=$(basename "$file" _1.trimmed.fastq.gz)
	fwd=$(realpath "$file")
	rev=$(realpath "data/trimmed/${sample}_2.trimmed.fastq.gz")
	echo -e "${sample}\t${fwd}\t${rev}" >> manifest.tsv
done
