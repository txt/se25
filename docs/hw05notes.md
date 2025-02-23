<p><a name=top> </a>&nbsp;</p>
<p align=center>
    <a
    href="/README.md#top"><img
    src="https://img.shields.io/badge/Home-%23ff5733?style=for-the-badge&logo=home&logoColor=white"></a> <a
    href="/docs/syllabus.md#top"><img
    src="https://img.shields.io/badge/Syllabus-%230055ff?style=for-the-badge&logo=openai&logoColor=white"></a> <a
    href="https://docs.google.com/spreadsheets/d/1Jlx-BBsvVqmWhW1L9Fz6u18vPSjGXj1i/edit?usp=sharing&ouid=110996670184359055145&rtpof=true&sd=true"><img
    src="https://img.shields.io/badge/Groups-%23ffd700?style=for-the-badge&logo=users&logoColor=white"></a> <a
    href="https://moodle-courses2425.wolfware.ncsu.edu/course/view.php?id=7150"><img
    src="https://img.shields.io/badge/Moodle-%23dc143c?style=for-the-badge&logo=moodle&logoColor=white"></a> <a
    href="https://discord.gg/whDXzJGP"><img
    src="https://img.shields.io/badge/Discord-%23008080?style=for-the-badge&logo=discord&logoColor=white"></a> <a
    href="https://ncsu.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=958aa5e8-f99e-441f-a545-b26400dfe515"><img
    src="https://img.shields.io/badge/Videos-%23ffa500?style=for-the-badge&logo=youtube&logoColor=white"></a> <a
    href="/LICENSE.md"><img
    src="https://img.shields.io/badge/(c)%20Tim%20Menzies,%202025-%234b4b4b?style=for-the-badge&logoColor=white"></a>
    <br>&nbsp;<br>
    <img width=200 src="/img/banner2.png">
</p>
<h1 align="center">:cyclone:&nbsp;CSC510: Software Engineering<br>NC&nbsp;State, Spring&nbsp;'25</h1>
      

# Additional notes on Make, Gawk, Shell

# **Tutorial Notes: Using `make`, `gawk`, and Shell Scripts for Automation**

## **1. `make` – Automating Software Builds and Processes**

### **1.1 Basics of `make`**
- `make` automates tasks by defining rules consisting of **targets**, **dependencies**, and **commands**.
- A **target** is what you want to create.
  - Appears to the LEFT of "`:`" on line one of a rule
- **Dependencies** specify when a target should be rebuilt.
  - Appears to the RIGHT of "`:`" on line one of a rule
  - May be empty
- **Commands** define how to build the target.
  - Appears as lines 2,3,4.... in a rule
  - May be empty

Example:
```make
output.txt: input.txt
	gawk '{print $1}' input.txt > output.txt
```
- If `input.txt` changes, `output.txt` will be regenerated.
- Target = output.txt
- Dependencies = input.txt
- Command = everything underneath

Note that with make's magic variables, we can write this a bit cleaner:

```make
output.txt: input.txt
	gawk '{print $1}' $^ > $@
```

### **1.2 Understanding Dependencies**
- `make` is lazy: it only runs commands if the target is **older** than its dependencies.
- Example:
```make
processed.txt: raw.txt script.gawk
	gawk -f script.gawk raw.txt > processed.txt
```
- This ensures `processed.txt` is only updated if either `raw.txt` or `script.gawk` changes.

### **1.3 Wildcards and Automation**
- To process all `.txt` files:
```make
processed/%.txt: raw/%.txt
	gawk -f script.gawk $< > $@
```
- `$<` refers to the first dependency, `$@` is the target.

### **1.4 Running Multiple Jobs in Parallel**
- Speed up execution by running jobs in parallel using `&`:
```make
all: file1 file2 file3

file1:
	command &

file2:
	command &

file3:
	command &
```
- `make -j4` runs up to 4 jobs at the same time.

### **1.5 Debugging `make`**
- Use `make -n` to **simulate** execution without running commands.
- Add `@` before a command to **suppress** its output in logs:
```make
target:
	@echo "Building..."
```

---

## **2. `gawk` – Advanced Text Processing**
- `gawk` processes structured text by defining **patterns and actions**.

### **2.1 Basic Syntax**
```gawk
gawk '{print $1, $3}' file.txt
```
- Prints the 1st and 3rd columns.

### **2.2 Filtering Lines**
```gawk
gawk '$2 > 10 {print $1, $2}' data.txt
```
- Prints lines where the second column is greater than 10.

### **2.3 Summing a Column**
```gawk
gawk '{sum += $2} END {print "Total:", sum}' file.txt
```
- Computes the sum of the second column.

### **2.4 Extracting the First Record**
```gawk
gawk 'NR==1 {print; exit}' file.txt
```
- Prints only the first line.

### **2.5 Multi-line Records**
- Process paragraphs instead of lines:
```gawk
gawk 'BEGIN {RS=""; FS="\n"} {print $1}' file.txt
```
- Sets record separator (`RS`) to blank lines, treating paragraphs as records.
- Sets field separator (`FS`) to new lines so now a paragraph record has one field per line.

### **2.6 Using Variables in `make`**
- When using `gawk` inside `make`, **double `$` signs** are needed:
```make
output.txt: input.txt
	gawk '{print $$1, $$2}' input.txt > output.txt
```
- `$$1` is passed to `gawk` as `$1`, avoiding conflicts with `make` variables.

---

## **3. Shell Scripting for Automation**
### **3.1 Using Variables**
```sh
FILENAME="data.txt"
echo "Processing $FILENAME"
```

### **3.2 Loops in Shell Scripts**
```sh
for file in raw/*.txt; do
    gawk -f process.gawk "$file" > "processed/$(basename "$file")"
done
```
- Iterates over all `.txt` files in `raw/`, processes them, and saves output.

### **3.3 Running Commands in the Background**
```sh
./script1.sh &
./script2.sh &
wait
```
- Runs `script1.sh` and `script2.sh` in parallel.

### **3.4 Redirection and Pipes**
```sh
grep "error" log.txt | sort | uniq -c > error_report.txt
```
- Filters `error` messages, sorts them, and counts occurrences.

### **3.5 Debugging Shell Scripts**
- Use `set -x` to **trace execution**:
```sh
#!/bin/bash
set -x
echo "Debugging..."
```
