# makefile to create biggerProg

# link object files and system libraries to create executable
echoString: echoString.o readLn.o writeStr.o
			gcc -o echoString echoString.o readLn.o writeStr.o

# compile/assemble source files to create object files
echoString.o: echoString.c readLn.h writeStr.h
			gcc -g -c echoString.c

readLn.o: readLn.c readLn.h
			gcc -g -c readLn.c

writeStr.o: writeStr.c
			gcc -g -c writeStr.c

# remove object files and backup files
clean:s
			rm -i *.o *~
