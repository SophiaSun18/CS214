%{
#include <stdio.h>
%}

%%
[0123456789]+           printf("NUMBER\n");
[a-zA-Z][a-zA-Z0-9]*    printf("WORD\n");
[a-zA-Z_][a-zA-Z0-9_]*  printf("WORD\n");
%%
