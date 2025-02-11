DATASET = dataset/data.csv
FILTERED = processed/filtered.csv
ANALYZED = processed/summary.txt
TRANSFORMED = processed/salaries.txt

all: $(FILTERED) $(ANALYZED) $(TRANSFORMED)

processed/filtered.csv: $(DATASET)
	grep "Alice\|Bob" $(DATASET) > $@

processed/summary.txt: $(DATASET)
	gawk -F, '{if (NR>1) sum+=$3} END {print "Total Salaries: ", sum}' $(DATASET) > $@

processed/salaries.txt: $(DATASET)
	sed 's/,/|/g' $(DATASET) > $@

.PHONY: clean
clean:
	rm -f processed/*
