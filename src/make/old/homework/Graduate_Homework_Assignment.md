# Graduate-Level Homework: Advanced Makefile Data Processing

## Instructions

Create a Makefile that performs the following operations:

1. **Extract employees over 30 years old** from `data.csv` using `grep`.
2. **Compute the average salary** of those employees using `gawk`.
3. **Reformat the data** by replacing commas with tabs using `sed`.

### Tasks

- Implement a Makefile that automates these operations.
- Use pattern rules to process multiple files.
- Include a `clean` target to remove intermediate files.
- Add a `help` target that prints available commands.

## Example Commands

- Extract data: `grep -E '[3-9][0-9]' data.csv > over_30.csv`
- Compute salary: `gawk -F, '{sum+=$3; count++} END {print "Average Salary:", sum/count}' over_30.csv > salary_avg.txt`
- Reformat: `sed 's/,/\t/g' over_30.csv > formatted.txt`

## Submission

Submit your Makefile and the generated files.
