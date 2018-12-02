"Resource/UI/HUD/ProgressBar.res"
{
	"BackgroundImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"BackgroundImage"
		"xpos"			"-15"
		"ypos"			"-51"
		"wide"			"256"
		"tall"			"128"
		"zpos"			"-1"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"image"			"hud/progressbar_bg"
		"drawColor"		"80 76 82 255"
	}
	
	"BarLabel"
	{
		"ControlName"	"Label"
		"fieldName"		"BarLabel"
		"xpos"			"53"
		"ypos"			"0"
		"wide"			"240"
		"tall"			"12"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"	"west"
		"dulltext"		"0"
		"brighttext"	"0"
		"font"			"PlayerDisplayName"
		"fgcolor_override" "White"
	}
	
	"Bar"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"Bar"
		"xpos"			"49"
		"ypos"			"15"
		"wide"			"152"
		"tall"			"31"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"image"			"vgui/hud/progressbar_fill"
	}

	"AwardIcon"
	{
		"ControlName"	"CIconPanel"
		"fieldName"		"AwardIcon"
		"xpos"			"27"
		"ypos"			"2"
		"wide"			"23"
		"tall"			"23"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"icon"			"icon_healing"
	}

	"Subtext"
	{
		"ControlName"	"Label"
		"fieldName"		"Subtext"
		"xpos"			"26"
		"ypos"			"17"
		"wide"			"300"
		"tall"			"30"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		""
		"textAlignment"	"west"
		"font"			"PlayerDisplaySmall"
		"fgcolor_override" "White"	
	}
}