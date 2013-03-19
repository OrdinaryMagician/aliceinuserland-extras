/*
	say.c : barebones echo
	(C)2012-2013 Marisa Kirisame, UnSX Team.
	Part of Au, the Alice in Userland project.
	Released under the MIT License.
*/
#include <stdio.h>

int main( int argc, char **argv )
{
	argv++;
	while ( *argv && printf("%s%c",*argv++,*argv?' ':'\n') );
	return 0;
}
