up%.txt: %.txt
	echo "uping..." $<
	gawk '{print toupper($$0)}' $< > $@
