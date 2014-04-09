#! /bin/bash
flex l2z2.lex
gcc lex.yy.c -lfl
./a.out <tst2.txt >tst2out
less tst2out
