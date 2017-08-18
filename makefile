all:

	gcc -o Ash main.c cle.c builtins.c exec.c y.tab.c lex.yy.c err.c -lreadline

install:
	# copy configuration files in the user's home directory
	cp -r .Ash_config ~/
	
	# copy the manual document to one of the directories search by man
	cp doc/Ash.1.gz "/usr/local/man/man1/Ash.1.gz"
	
	# copy the built binary to one of the directories in $PATH
	cp Ash /usr/local/bin
	

clean:
	# remove the built binary file
	rm Ash

