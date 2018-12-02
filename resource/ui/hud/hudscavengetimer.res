"Resource/UI/HUD/HudScavengeTimer.res"
{	
	"AllBackground"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"AllTimeBackground"
		"xpos"					"85"
		"ypos"					"0"
		"wide"					"256"
		"tall"					"43"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
	    "PaintBackgroundType"	"2"
		"bgcolor_override"		"0 0 0 150"
	}

	"CurrentTimeBackground"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"CurrentTimeBackground"
		"xpos"					"90"
		"ypos"					"5"
		"wide"					"110"
		"tall"					"33"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
	    "PaintBackgroundType"	"2"
		"bgcolor_override"		"10 10 10 220"
	}

	"CurrentScavengeTimeDigits"
	{
		"ControlName"	"Label"
		"fieldName"		"CurrentScavengeTimeDigits"
		"xpos"			"95"
		"ypos"			"8"
		"zpos"			"1"
		"wide"			"110"
		"tall"			"24"
		"visible"		"1"
		"labelText"		"00:00.00"
		"textAlignment"	"west"
		"font"			"Credits"
	}

	"CurrentScoreBackground"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"CurrentScoreBackground"
		"xpos"					"205"
		"ypos"					"5"
		"wide"					"52"
		"tall"					"33"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"PaintBackgroundType"	"2"
		"bgcolor_override"		"10 10 10 220"
	}
	
	"CurrentScoreLabel"
	{
		"ControlName"	"Label"
		"fieldName"		"CurrentScoreLabel"
		"xpos"			"210"
		"ypos"			"7"
		"zpos"			"1"
		"wide"			"42"
		"tall"			"14"
		"visible"		"1"
		"labelText"		"#L4D_Scoreboard_PZScore"
		"textAlignment"	"center"
		"font"			"OuttroStatsCrawl"
	}

	"CurrentScoreDigits"
	{
		"ControlName"	"Label"
		"fieldName"		"CurrentScoreDigits"
		"xpos"			"208"
		"ypos"			"15"
		"zpos"			"1"
		"wide"			"26"
		"tall"			"24"
		"visible"		"1"
		"labelText"		"0"
		"textAlignment"	"east"
		"font"			"TransitionTitle"
	}

	"Slash"
	{
		"ControlName"	"Label"
		"fieldName"		"Slash"
		"xpos"			"234"
		"ypos"			"15"
		"wide"			"8"
		"tall"			"21"
		"visible"		"1"
		"labelText"		"/"
		"textAlignment"	"south-west"
		"font"			"PlayerDisplayName"
	}

	"ItemsRemainingDigits"
	{
		"ControlName"	"Label"
		"fieldName"		"ItemsRemainingDigits"
		"xpos"			"239"
		"ypos"			"15"
		"wide"			"18"
		"tall"			"21"
		"visible"		"1"
		"labelText"		"0"
		"textAlignment"	"south-west"
		"font"			"PlayerDisplayName"
	}

	"ScavengeTimeToBeatBackgroundImage"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"ScavengeTimeToBeatBackgroundImage"
		"xpos"					"262"
		"ypos"					"5"
		"wide"					"74"
		"tall"					"33"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"PaintBackgroundType"	"2"
		"bgcolor_override"		"10 10 10 220"
	}

	"ScoreToBeatLabel"
	{
		"ControlName"	"Label"
		"fieldName"		"ScoreToBeatLabel"
		"xpos"			"267"
		"ypos"			"7"
		"zpos"			"1"
		"wide"			"38"
		"tall"			"28"
		"wrap"			"1"
		"visible"		"1"
		"labelText"		"#L4D_vs_RoundScore"
		"textAlignment"	"west"
		"font"			"OuttroStatsCrawl"
	}

	"ScoreToBeatDigits"
	{
		"ControlName"	"Label"
		"fieldName"		"ScoreToBeatDigits"
		"xpos"			"305"
		"ypos"			"9"
		"zpos"			"1"
		"wide"			"26"
		"tall"			"24"
		"visible"		"1"
		"labelText"		"0"
		"textAlignment"	"east"
		"font"			"TransitionTitle"
	}
}
