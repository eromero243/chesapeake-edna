for file in data/raw/*_1.fastq.gz; do
	sample=$(basename "$file" _1.fastq.gz)
	echo "Trimming Sample: $sample"
	fastp \
	  -i "data/raw/${sample}_1.fastq.gz" \
	  -I "data/raw/${sample}_2.fastq.gz" \
	  -o "data/trimmed/${sample}_1.trimmed.fastq.gz" \
	  -O "data/trimmed/${sample}_2.trimmed.fastq.gz" \
	  --html "data/qc/fastp/${sample}_fastp.html" \
	  --json "data/qc/fastp/${sample}_fastp.json"
done
