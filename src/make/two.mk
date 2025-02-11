updata.txt: data.txt
	echo "uping..."
	gawk '{print toupper($$0)}' data.txt > updata.txt
