# Makefile

OBJS	= bison.o lex.o 

CC	= clang++
CFLAGS	= -g -Wall  

calc:		$(OBJS)
		$(CC) $(CFLAGS) -lm $(OBJS) -o calc -lfl

lex.o:		lex.c
		$(CC) $(CFLAGS) -c lex.c -o lex.o

lex.c:		calc.lex 
		flex calc.lex
		cp lex.yy.c lex.c

bison.o:	bison.c
		$(CC) $(CFLAGS) -c -lm bison.c -o bison.o

bison.c:	calc.y
		bison -d -v --debug calc.y
		cp calc.tab.c bison.c
		cmp -s calc.tab.h tok.h || cp calc.tab.h tok.h


clean:
	rm -f *.o *~ lex.c lex.yy.c bison.c tok.h calc.tab.c calc.tab.h calc.output calc 

tests:
	$(CC) $(CFLAGS) tst.calc_h.c -o tst.calc_h
	./tst.calc_h

cleantst: 
	rm tst.calc_h

run:
	./calc < plik_testowy
again:
	make clean
	make
	make run
