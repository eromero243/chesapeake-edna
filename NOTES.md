  GNU nano 8.7.1                                           NOTES.md *
# Project Lab Notebook & Troubleshooting Log

## 2026-07-23
### What I Worked On:
- Set up directory structure for Chesapeake Bay eDNA project (data/raw, 'scripts', 'results', etc.).
- Initialized Git repository

### Commands Learned / Used:
- 'pwd': Print Working Directory, gives me the exact absolute path im on. (Helped me when I got lost in subfolders)
- 'nano': Terminal text editor.
- 'git status': Check repository state.
- 'git add .': Staging or saving to your history.
- 'git commit -m "Blah Blah": Commits to the save and gives it a label.

### Challenges & Fixes:
- Got stuck trying to 'cd chesapeake-edna' while already inside 'data/raw'
-**Fix:** Learned that 'cd' looks for subfloders relative to current location. Used 'cd ~/chesapeake-edna' to go back
you can also use 'cd..' or 'cd../..' to jump back up.

### Next Action:
- Search NCBI SRA for 18s or COI edna water samples from Chesapeake Bay
- Create a spreadsheet of candidate studies
- Select 12-20 sample accesion numbers (comparing historical vs recent years)
- Download metadata CSV file to 'metadata/' folder

## 2026-07-26
### What I Worked On:
- Searching and selecting raw metabarcoding eDNA data from NCBI SRA
- Found backup data I can use if I change directions in my project Accession: PRJNA1330277
# Project Lab Notebook & Troubleshooting Log

## 2026-07-23
### What I Worked On:
- Set up directory structure for Chesapeake Bay eDNA project (data/raw, 'scripts', 'results', etc.).
- Initialized Git repository

### Commands Learned / Used:
- 'pwd': Print Working Directory, gives me the exact absolute path im on. (Helped me when I got lost in subfolders)
- 'nano': Terminal text editor 
- 'git status': Check repository state

### Challenges & Fixes:
- Got stuck trying to 'cd chesapeake-edna' while already inside 'data/raw'
-**Fix:** Learned that 'cd' looks for subfloders relative to current location. Used 'cd ~/chesapeake-edna' to go back
you can also use 'cd..' or 'cd../..' to jump back up.

### Next Action:
- Search NCBI SRA for 18s or COI edna water samples from Chesapeake Bay
- Create a spreadsheet of candidate studies
- Select 12-20 sample accesion numbers (comparing historical vs recent years)
- Download metadata CSV file to 'metadata/' folder

## 2026-08-04
### What I Worked On: 
- Downloaded 10 SRA run accession files for Chesapeake Bay eDNA fouling species analysis 
- Organized sequence files using Unix commands ('mv', 'rm -r')
- Compressed raw seauence files into 'fastq.gz' format using 'gzip data/raw/*.fastq' to save disk storage
- Updated '.gitignore' using 'echo "data/raw/" >> .gitignore' to exclude large sequencing files from Git tracking 

### Commands Learned / Used: 
- 'cat': Used to quickly view text file contents in the terminal
- 'echo' + '>>': Used to append text lines into files without opening an editor
- '*': Wildcard / matches anything
- 'mv': move folders in dr
- rm -r: remove folders or files rm only removes files -r to use on folders
- 'fasterq-dump': used to download fastq files from SRA

### # Challenges and Fixes:
- When using 'fasterq-dump', new data and raw folders where created despite having them creating this dir 
'data/raw/data/raw' this was because i was already on 'data/raw' and had to cd back 'home', i fixed the mistake 
using 'mv' and 'rm -r'

### Next Action: 
- Quality Control, assess the quality of my raw sequencing reads.

## 2026-08-13

### What I Worked On:
- Installed FastQC and MultiQC tools on the Ubuntu environment ('apt' / 'pip')
- Generated individual quality metrics across all 18 '.fastq.gz' raw files using FastQC
- Aggregated all 18 reports into a single HTML report ('data/qc/multiqc_report.html') using MultiQC
- Analyzed sequence quality, duplication rates, read counts, and GC content across dataset
- Ignored 'data/qc/' in '.gitignore' for storage

### Results & Diagnostics
- Base Quality Score: All 18 files passed with average Phred scores >30 (high accuracy, green zone)
- Dupltication (82-94%): High duplication is expected due to target PCR amplification in eDNA marker gene sequencing
- Read Integrity: Confirmed non-empty FASTQ files using 'zcat <file> | head -n 400 | wc -l'.

### Next Action:
- Install 'fastp' to perform adapter trimming and quality filtering before moving onto QIIME 2 / DADA2

## 2026-08-21

### What I Worked On:
- Created trimming pipeline script `scripts/trim.sh` using `fastp` for paired-end FASTQ processing.
- Successfully trimmed adapter sequences and low-quality bases across all 10 eDNA raw sample pairs.
- Verified post-trimming quality with MultiQC (`data/qc/multiqc_trimmed/`):
- Read retention rate: >94-99% across samples.
- Quality score distribution maintained in high-quality range (>30)

### Challenges & Fixes:
- Single-line `for` loop silent syntax failures, fixed by adding semicolons (`;`) before
 `do`, inside the block, and before `done` when compressing multi-line syntax.
- Wrapping issues in Ubuntu causing broken variable strings, moved code out of terminal and saved it into shell script using `nano` 

### Next Action:
- Import trimmed FASTQ reads into DADA2 / QIIME 2 for primer removal and
 ASV inference.
