parcial: y.tab.c lex.yy.c main.c head.h
	gcc y.tab.c lex.yy.c main.c -o parcial
	
y.tab.c: parcial.y
	yacc -d parcial.y -o y.tab.c
	
lex.yy.c: parcial.l
	lex parcial.l
	
clean:
	rm parcial
	rm lex.yy.c
	rm y.tab.c
	rm y.tab.h