"Resource/UI/HUD/HudScavengeProgress.res"
{	
	"AllBackground"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"AllBackground"
		"xpos"					"3"
		"ypos"					"0"
		"wide"					"78"
		"tall"					"32"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"PaintBackgroundType"	"2"
		"bgcolor_override"		"0 0 0 150"
	}

	"ProgressBackground"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"ProgressBackground"
		"xpos"					"24"
		"ypos"					"5"
		"wide"					"52"
		"tall"					"22"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"PaintBackgroundType"	"2"
		"bgcolor_override"		"10 10 10 220"
	}
	
	"GasCanImage"
	{
		"ControlName"		"CIconPanel"
		"fieldName"			"GasCanImage"
		"xpos"				"3"
		"ypos"				"5"
		"wide"				"22"
		"tall"				"22"
		"scaleImage"		"1"
		"visible"			"1"
		"enabled"			"1"
		"icon"				"icon_gas_can"
	}

	"ItemsCollectedDigits"
	{
		"ControlName"	"Label"
		"fieldName"		"ItemsCollectedDigits"
		"xpos"			"27"
		"ypos"			"4"
		"zpos"			"1"
		"wide"			"26"
		"tall"			"24"
		"visible"		"1"
		"labelText"		"0"
		"textAlignment"	"east"
		"font"			"TransitionTitle"
	}
	
	"ItemDigitDivider"
	{
		"ControlName"	"Label"
		"fieldName"		"ItemsRemainingLabel"
		"xpos"			"53"
		"ypos"			"4"
		"wide"			"8"
		"tall"			"21"
		"visible"		"1"
		"labelText"		"/"
		"textAlignment"	"south-west"
		"font"			"PlayerDisplayName"
	}
	
	"ItemsGoalDigits"
	{
		"ControlName"	"Label"
		"fieldName"		"ItemsGoalDigits"
		"xpos"			"58"
		"ypos"			"4"
		"wide"			"18"
		"tall"			"21"
		"visible"		"1"
		"labelText"		"0"
		"textAlignment"	"south-west"
		"font"			"PlayerDisplayName"
	}
}
