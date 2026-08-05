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
