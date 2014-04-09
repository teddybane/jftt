/*definitions*/

int slowa = 0;
int wiersze = 0;

%%
/*rules*/ 
^\s*	 
\s*\n 	 
\s+		 putchar(' ')
\n+		 putchar('\n')
\S+      ++slowa
\n 		 ++wiersze


\/\/.*\n 				putchar(' ')
\/\*(.*\n)*?\*\/ 	
\/\*.*\*\/			

\/\*\*(.*\n)*?\*\/ 	/*domyslnie przepisuje*/


%%
/*user code*/
