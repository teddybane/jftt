# Makefile

OBJS	= bison.o lex.o 

CC	=gcc 
CFLAGS	= -g -Wall -ansi 

calc:		$(OBJS)
		$(CC) $(CFLAGS) -lm $(OBJS) -o calc -lfl

lex.o:		lex.c
		$(CC) $(CFLAGS) -c lex.c -o lex.o

lex.c:		kor.lex 
		flex kor.lex
		cp lex.yy.c lex.c

bison.o:	bison.c
		$(CC) $(CFLAGS) -c -lm bison.c -o bison.o

bison.c:	kor.y
		bison -d -v --debug calc.y
		cp kor.tab.c bison.c
		cmp -s kor.tab.h tok.h || cp kor.tab.h tok.h


clean:
	rm -f *.o *~ kor.c lex.yy.c bison.c tok.h kor.tab.c kor.tab.h kor.output kor 

tests:
	$(CC) $(CFLAGS) tst.calc_h.c -o tst.calc_h
	./tst.calc_h

cleantst: 
	rm tst.calc_h

run:
	./kor < plik_testowy
again:
	make clean
	make
	make run
