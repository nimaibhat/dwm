//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/	 							/*Update Interval*/	/*Update Signal*/

	{" ^c#a3be8c^  ", "/home/gbhat08/dwmblocks/scripts/pacupdate",		360,		        9},
	
	{" ^c#81a1c1^  ", "/home/gbhat08/dwmblocks/scripts/memory",	        6,		            1},

	{"",               "/home/gbhat08/dwmblocks/scripts/volume",			    0,		            10},

	{"^c#FF6961^   ", "/home/gbhat08/dwmblocks/scripts/clock",			5,		            0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
