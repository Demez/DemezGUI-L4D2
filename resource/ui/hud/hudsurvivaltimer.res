"Resource/UI/HUD/HudSurvivalTimer.res"
{	
	"GoalImage"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"GoalImage"
		"xpos"					"85"
		"ypos"					"17"
		"wide"					"270"
		"tall"					"43"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
	    "PaintBackgroundType"	"2"
		"bgcolor_override"		"0 0 0 150"
	}

	"SurvivalTimerBackgroundImage"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"SurvivalTimerBackgroundImage"
		"xpos"					"240"
		"ypos"					"22"
		"wide"					"110"
		"tall"					"33"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
	    "PaintBackgroundType"	"2"
		"bgcolor_override"		"10 10 10 220"
	}

	"CurrentTimeDigits"
	{
		"ControlName"	"Label"
		"fieldName"		"CurrentTimeDigits"
		"xpos"			"245"
		"ypos"			"25"
		"zpos"			"1"
		"wide"			"110"
		"tall"			"24"
		"visible"		"1"
		"labelText"		"00:00.00"
		"textAlignment"	"west"
		"font"			"Credits"
	}

	"Timer"
	{
		"ControlName"	"CircularProgressBar"
		"fieldName"		"Timer"
		"xpos"			"195"
		"ypos"			"15"
		"wide"			"49"
		"tall"			"49"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
		"bg_image"		"hud\survivalTimerClock"
		"fg_image"		"hud\survivalTimerClockFace"
	}

	"SurvivalTargetTimeBackgroundImage"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"SurvivalTargetTimeBackgroundImage"
		"xpos"					"90"
		"ypos"					"22"
		"wide"					"110"
		"tall"					"33"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
	    "PaintBackgroundType"	"2"
		"bgcolor_override"		"10 10 10 220"
	}
	
	"NextGoalDescriptor"
	{
		"ControlName"	"Label"
		"fieldName"		"NextGoalDescriptor"
		"xpos"			"95"
		"ypos"			"25"
		"wide"			"100"
		"tall"			"12"
		"visible"		"1"
		"labelText"		"Name"
		"textAlignment"	"east"
		"font"			"DefaultSmall"
	}

	"TargetTimeDigits"
	{
		"ControlName"	"Label"
		"fieldName"		"TargetTimeDigits"
		"xpos"			"95"
		"ypos"			"37"
		"wide"			"100"
		"tall"			"12"
		"visible"		"1"
		"labelText"		"00:00.00"
		"textAlignment"	"east"
		"font"			"OuttroStatsCrawlUnderline"
	}
	
	"TargetTransition"
	{
		"ControlName"	"Label"
		"fieldName"		"TargetTransition"
		"xpos"			"95"
		"ypos"			"37"
		"wide"			"100"
		"tall"			"12"
		"visible"		"1"
		"alpha"			"0"
		"labelText"		"00:00.00"
		"textAlignment"	"east"
		"font"			"OuttroStatsCrawlUnderline"
	}

	"AwesomeLabel"
	{
		"ControlName"	"Label"
		"fieldName"		"AwesomeLabel"
		"xpos"			"98"
		"ypos"			"56"
		"wide"			"200"
		"tall"			"12"
		"alpha"			"0"
		"visible"		"1"
		"labelText"		"#L4D_SurvivalTimer_Description_KeepGoing"
		"textAlignment"	"center"
		"font"			"PlayerDisplayHealth"
	}
}
