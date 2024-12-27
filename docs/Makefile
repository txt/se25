SHELL:= /bin/bash#
.SILENT: # no output


help : Makefile ## print help
	echo ""; printf "usage: make [OPTIONS]\n\n"
	@awk 'BEGIN {FS="[ \t]*:.*##[ \t]*"}  \
	  NF==2 { printf \
           "  \033[36m%-25s\033[0m %s\n","make " $$1,$$2}'  $< \
	| grep -v awk

ONE=cat $< | awk 'BEGIN {FS="\n";RS=""} {print $$0 ; exit}' 
TWOPLUS=cat $@ | awk 'BEGIN {FS="\n";RS=""} NR==1 { print("\n\n"); next} {print $$0 "\n\n"}'

all: ## save all to Github
	$(MAKE) ../LICENSE.md *.md push

../LICENSE.md: ../README.md Makefile ## update license
	 @echo "$@ ... " ; ($(ONE);  $(TWOPLUS)) > .tmp; mv .tmp $@

*.md: ../README.md Makefile ## add standard header to *md files
	echo "$@ ... " 
	@($(ONE);  $(TWOPLUS)) > .tmp; mv .tmp $@

LOUD = \033[1;34m#
SOFT = \033[0m#

push: ## commit to main
	- echo -en "$(LOUD)Why this push? $(SOFT)" ;  read x ; git commit -am "$$x" ;  git push
	- git status


