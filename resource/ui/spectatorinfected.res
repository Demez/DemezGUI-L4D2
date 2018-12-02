"Resource/UI/SpectatorGUI.res"
{
	"specgui"
	{
		"ControlName"	"Frame"
		"fieldName"		"specgui"
		"xpos"			"0"
		"ypos"			"0"
		"wide"			"f0"
		"tall"			"f0"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
	}

	"BackgroundImage"
	{
		"ControlName"	"EditablePanel"
		"fieldName"		"BackgroundImage"
		"xpos"			"0"
		"ypos"			"0"
		"wide"			"f0"
		"tall"			"30"
		"zpos"			"-1"
		"visible"		"1"
		"enabled"		"1"
		"autoResize"	"0"
		"pinCorner"		"0"
		"PaintBackgroundType"	"0"
		"bgcolor_override"	"10 10 10 220"
		
		"if_overlap_scavenge_can"
		{
			"ypos"		"64"
		}
		
		"if_overlap_scavenge_timer"
		{
			"ypos"		"64"
		}
	}

	"SpawnModeLabel"
	{
		"ControlName"	"Label"
		"fieldName"		"SpawnModeLabel"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
	}

	"InfectedState"
	{
		"ControlName"		"Label"
		"fieldName"			"InfectedState"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"f0"
		"tall"				"30"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			""
		"textAlignment"		"center"
		"dulltext"			"0"
		"brighttext"		"0"
		"font"				"OuttroStatsCrawlTitles"
		"usetitlesafe"		"2"
		
		"if_overlap_scavenge_can"
		{
			"ypos"		"64"
		}
		
		"if_overlap_scavenge_timer"
		{
			"ypos"		"64"
		}
	}

	"playerlabel"
	{
		"ControlName"	"Label"
		"fieldName"		"playerlabel"
		"xpos"			"0"
		"ypos"			"r80"
		"wide"			"f0"
		"tall"			"26"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"	"0"
		"textAlignment"	"center"
	}
}
