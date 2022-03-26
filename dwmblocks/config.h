//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/														/*Update Interval*/	/*Update Signal*/
	{	"", 	"/home/milutinke/sources/dwmscripts/dwm-weather.sh", 			18000, 				0	},
	{	"", 	"/home/milutinke/sources/dwmscripts/dwm-blocks-cpu.sh", 		5, 					0	},
	{	" ",	"free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",		5,					0	},
	{	"", 	"/home/milutinke/sources/dwmscripts/dwm-blocks-hdd.sh", 		3600, 				0	},
	{	"", 	"/home/milutinke/sources/dwmscripts/dwm-blocks-net-traffic.sh", 5, 					0	},
	{	"", 	"/home/milutinke/sources/dwmscripts/dwm-blocks-updates.sh", 	3600, 				0	},
	{	"", 	"/home/milutinke/sources/dwmscripts/dwm-blocks-keyboard.sh", 	5, 					0	},
	{	"", 	"date '+%d.%m %H:%M'",											60,					0	}
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char *delim = " | ";
static unsigned int delimLen = 5;