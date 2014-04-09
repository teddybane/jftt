%{
int slowa = 0;
int wiersze = 0;
%} 
%%
^\s*	 
\s*\n 	 
\s+		 putchar(' ');
\n+		 putchar('\n');
\S+      	 ++slowa;
\n 		 ++wiersze;
%%

main()
{
	yylex();
	
}
