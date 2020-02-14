%{
	extern "C" int yywrap() { }
}%


%%

[ \t]	; // ignore whitespace
\n 	{ ++lineNum; std::cout << std::endl; } // increment line num
[0-9]+\.[0-9]+		{ std::cout << "Found a float: " << yytext << std::endl; ++wordsNum; }
[0-9]+				{ std::cout << "Found an integer: " << yytext << std::end; ++wordsNum; }
[a-zA-Z][a-zA-Z0-9]* {std::cout << "Found a string: " << yytext << std::endl; ++wordsNum; }

%%

int main(int argc, char**argv) {
	yylex():
}
