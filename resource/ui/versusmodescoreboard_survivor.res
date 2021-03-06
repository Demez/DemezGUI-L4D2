"Resource/UI/VersusModeScoreboard_Survivor.res"
{
	"TeamImage"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"TeamImage"
		"xpos"				"0"
		"ypos"				"35"
		"wide"				"50"
		"tall"				"50"
		"scaleImage"		"1"
		"visible"			"1"
		"enabled"			"1"
		"image"				"select_survivors"
		"drawColor"			"100 100 100 150"
		"zpos"				"0"
	}
	
	"Category_Completion"
	{
		"ControlName"		"Label"
		"fieldName"			"Category_Completion"
		"xpos"				"5"
		"ypos"				"28"
		"wide"				"112"
		"tall"				"14"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"#L4D_VSScoreboard_Completion"
		"textAlignment"		"east"
		"dulltext"			"1"
		"brighttext"		"0"
		"font"				"BodyText_medium"
		"fgcolor_override"	"White"
	}
	
	"Category_Completion_Score"
	{
		"ControlName"		"Label"
		"fieldName"			"Category_Completion_Score"
		"xpos"				"122"
		"ypos"				"28"
		"wide"				"36"
		"tall"				"14"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"0"
		"textAlignment"		"west"
		"dulltext"			"1"
		"brighttext"		"0"
		"font"				"BodyText_medium"
		"fgcolor_override"	"White"
	}
	
	"Category_SurvivalBonus"
	{
		"ControlName"		"Label"
		"fieldName"			"Category_SurvivalBonus"
		"xpos"				"5"
		"ypos"				"42"
		"wide"				"112"
		"tall"				"14"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"0"
		"labelText"			"#L4D_VSScoreboard_SurvivalBonus"
		"textAlignment"		"east"
		"dulltext"			"1"
		"brighttext"		"0"
		"font"				"BodyText_medium"
		"fgcolor_override"	"White"
	}
	
	"Category_SurvivalBonus_Score"
	{
		"ControlName"		"Label"
		"fieldName"			"Category_SurvivalBonus_Score"
		"xpos"				"122"
		"ypos"				"42"
		"wide"				"36"
		"tall"				"14"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"1"
		"labelText"			"0"
		"textAlignment"		"west"
		"dulltext"			"1"
		"brighttext"		"0"
		"font"				"BodyText_medium"
		"fgcolor_override"	"White"
	}
	
	"Category_DefibPenalty"
	{
		"ControlName"		"Label"
		"fieldName"			"Category_DefibPenalty"
		"xpos"				"5"
		"ypos"				"56"
		"wide"				"112"
		"tall"				"14"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"0"
		"labelText"			"#L4D_VSScoreboard_DefibPenalty"
		"textAlignment"		"east"
		"dulltext"			"1"
		"brighttext"		"0"
		"font"				"BodyText_medium"
		"fgcolor_override"	"White"
	}
	
	"Category_DefibPenalty_Score"
	{
		"ControlName"		"Label"
		"fieldName"			"Category_DefibPenalty_Score"
		"xpos"				"122"
		"ypos"				"56"
		"wide"				"36"
		"tall"				"14"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"1"
		"labelText"			"0"
		"textAlignment"		"west"
		"dulltext"			"1"
		"brighttext"		"0"
		"font"				"BodyText_medium"
		"fgcolor_override"	"VersusSelected"
	}
	
	"DividerHorizontalLine"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"DividerHorizontalLine"
		"xpos"				"122"
		"ypos"				"70"
		"wide"				"30"
		"tall"				"1"
		"scaleImage"		"1"
		"visible"			"1"
		"enabled"			"1"
		"fillcolor" 		"145 145 145 255"
		"zpos"				"0"
	}
	
	"Category_Chapter"
	{
		"ControlName"		"Label"
		"fieldName"			"Category_Chapter"
		"xpos"				"5"
		"ypos"				"71"
		"wide"				"112"
		"tall"				"14"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"#L4D_vs_TotalScore"
		"textAlignment"		"east"
		"dulltext"			"1"
		"brighttext"		"0"
		"font"				"BodyText_medium"
		"fgcolor_override"	"White"
	}

	"Category_Chapter_Score"
	{
		"ControlName"		"Label"
		"fieldName"			"Category_Chapter_Score"
		"xpos"				"122"
		"ypos"				"71"
		"wide"				"36"
		"tall"				"14"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"0"
		"textAlignment"		"west"
		"dulltext"			"1"
		"brighttext"		"0"
		"font"				"BodyText_medium"
		"fgcolor_override"	"White"
	}
	
	"CompletionProgressBar"
	{
		"ControlName"	"CVersusModeLevelProgressBar"
		"fieldName"		"CompletionProgressBar"
		"xpos"			"0"
		"ypos"			"0"
		"wide"			"150"
		"tall"			"40"
		"zpos"			"1"
		"visible"		"1"
		"enabled"		"1"	
		
		"bar_x"			"5"
		"bar_y"			"5"
		"bar_w"			"155"
		"bar_h"			"4"
		"bar_gap"		"2"
		
		"skull_size"	"14"
		"skull_y"		"-5"
		
		"bar_color"					"130 65 0 175"
		"bar_localplayer_color"		"140 0 0 175"
		"bar_bgcolor"				"0 0 0 175"
	}
}