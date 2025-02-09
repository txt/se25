# Advanced Data-Driven Programming with Makefiles

Our notes here come from [Software Carpentary](https://swcarpentry.github.io/make-novice/index.html) notes
and the amazing [MIT missing semester](https://missing.csail.mit.edu/2020/metaprogramming/)
subject. 

As such, we share their copyright:
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International](https://github.com/idleberg/Creative-Commons-Markdown/blob/main/4.0/by-nc-sa.markdown),


## Introduction

Make is a tool which can run commands to read files, process these files in some way, and write out the processed files. For example, in software development, Make is used to compile source code into executable programs or libraries, but Make can also be used to:

- run analysis scripts on raw data files to get data files that summarize the raw data;
- run visualization scripts on data files to produce plots; and to
-  parse and combine text files and plots to create papers.
- record, in an executable form, all your short cuts 

Make is called a build tool - it builds data files, plots, papers, programs or libraries. It can also update existing files if desired.

Make tracks the dependencies between the files it creates and the files used to create these. If one of the original files (e.g. a data file) is changed, then Make knows to recreate, or update, the files that depend upon this file (e.g. a plot).

Make was first released in April 1977 by Stuart Feldman at Bell Labs. That makes it nearly 50 years old—but it's still widely used since:

- **Ubiquity & Stability** – *Make is deeply embedded in Unix-based systems, well-documented, and universally supported.*
- **Minimal Overhead** – *Newer tools (CMake, Ninja, Bazel) can be heavier, requiring extra dependencies or complex setup.*
- **Declarative & Efficient** – *It tracks dependencies automatically, only rebuilding what's necessary, without overengineering.*
- **Works Everywhere** – *Unlike newer tools, Make runs on virtually any system without special installation or configuration.*

Make was  motivated by a need for tool to automate software compilation dependencies—a problem that was becoming more complex as projects grew. The Make work laid the foundation for modern build automation and dependency management.

That said, if you're dealing with massive parallel builds, cross-platform projects, or non-C/C++ languages, newer tools might be a better fit. e.g.

- **CMake** – Meta-build system that generates Makefiles or Ninja files, common for C/C++.  
- **Ninja** – Fast, minimal build system, often used with CMake.  
- **Meson** – Simpler, faster alternative to CMake, optimized for performance.  
- **Bazel** – Scalable build tool from Google, great for large, multi-language projects.  
- **Gradle** (Java/Kotlin) – Powerful build automation, used for Android development.  
- **Cargo** (Rust) – Rust’s built-in build system and package manager.  
- **Maven** (Java) – Dependency management and build tool for Java applications.  
- **SBT** (Scala/Java) – Optimized for Scala, supports parallel execution.  
- **Just** – Modern, simple task runner, like Make but with cleaner syntax.  
- **Taskfile** – YAML-based task runner, popular in the Go ecosystem.  
- **Rake** (Ruby) – Ruby’s Make-like tool for automation and builds.  
- **Leiningen** (Clojure) –  manages dependencies and tasks.


## Key Makefile Concepts
A Makefile consists of **rules**, **targets**, **dependencies**, and **commands**. The basic structure is:

```
target: dependencies
	command
```

- **target**: The output file or action.
- **dependencies**: Files required to produce the target.
- **command**: The shell command to generate the target.


By default, Make runs a `Makefile` of commands in the local directory (but this can be reset using make -f file.mk).

Example

```make
updata.txt: data.txt
   echo "uping..."
   gawk '{print toupper($$0)}' data.txt > updata.txt
```

> Note that
all command lines _**must**_ start with a tab.
Aso, `$$` is the Make variable that returns `$`
    (so `$$0` is the gawk variable `$0` 
     but `$(SHELL)` is a make variable



Run with:

```sh
make updata.txt
```

In this example?

```
Makefiles are traditionally used for compiling code, but they can
also be powerful tools for automating data-driven workflows. This
tutorial focuses on using make alongside gawk, grep, and sed to
process data efficiently.
```

is processed and saved eslwhere as

```
MAKEFILES ARE TRADITIONALLY USED FOR COMPILING CODE, BUT THEY CAN
ALSO BE POWERFUL TOOLS FOR AUTOMATING DATA-DRIVEN WORKFLOWS. THIS
TUTORIAL FOCUSES ON USING MAKE ALONGSIDE GAWK, GREP, AND SED TO
PROCESS DATA EFFICIENTLY.
```
Note that the commands are only run on the dependencies are new than than the target.

- So if we run this twice, we only see the echo once.

```sh
$ make -s updata.txt
uping...

$ make -s  updata.txt
$
```

    
>  Note that `make -s` siences verbose output. Don't use it during debugging (when youw ant to see those errors)



### Automatic Variables

Make provides several automatic variables that simplify rule definitions:

- `$@` - The target filename.
- `$<` - The first prerequisite (dependency).
- `$^` - All prerequisites.

Example:

```make
%.uppercase: %
	gawk '{print toupper($0)}' $< > $@
```

Run:

```sh
make file.txt.uppercase
```

### Wildcard and Pattern Matching

```make
DATAFILES := $(wildcard dataset/*.txt)
PROCESSED := $(patsubst dataset/%, processed/%, $(DATAFILES))

processed/%.txt: dataset/%.txt
	gawk '{print toupper($0)}' $< > $@
```

### Functions in Makefiles

```make
EXT = txt
FILES = $(wildcard *.$(EXT))

print_files:
	@echo $(FILES)
```

### Self-Documenting Makefiles

```make
.PHONY: help
help:
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
```

Run:

```sh
make help
```

## Data Processing with `gawk`, `grep`, and `sed`

### Extracting Data with `grep`

```make
filter: dataset/data.txt
	grep "pattern" dataset/data.txt > filtered.txt
```

### Processing with `gawk`

```make
analyze: dataset/data.txt
	gawk '{sum += $2} END {print "Total:", sum}' dataset/data.txt > summary.txt
```

### Stream Editing with `sed`

```make
transform: dataset/data.txt
	sed 's/old/new/g' dataset/data.txt > transformed.txt
```

## Conclusion

Makefiles, combined with `gawk`, `grep`, and `sed`, enable powerful data-driven workflows.
