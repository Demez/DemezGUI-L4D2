"Resource/UI/HudGhostPanel.res"
{
	"BackgroundFill"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"BackgroundFill"
		"xpos"					"55"
		"ypos"					"35"
		"wide"					"250"
		"tall"					"80"
		"zpos"					"-1"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"PaintBackgroundType"	"2"
		"bgcolor_override"		"0 0 0 150"
	}

	"ClassImage"
	{
		"ControlName"		"CIconPanel"
		"fieldName"			"ClassImage"
		"xpos"				"60"
		"ypos"				"40"
		"zpos"				"1"
		"wide"				"70"
		"tall"				"70"
		"visible"			"1"
		"enabled"			"1"
		"scaleImage"		"1"
		"image"				""
	}
	
	"ClassBackground"
	{
		"ControlName"			"EditablePanel"
		"fieldName"				"ClassBackground"
		"xpos"					"135"
		"ypos"					"40"
		"wide"					"165"
		"tall"					"70"
		"zpos"					"0"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"PaintBackgroundType"	"2"
		"bgcolor_override"		"10 10 10 220"
	}

	"ClassName"
	{
		"ControlName"		"Label"
		"fieldName"			"ClassName"
		"xpos"				"140"
		"ypos"				"44"
		"zpos"				"1"
		"wide"				"155"
		"tall"				"22"
		"visible"			"1"
		"enabled"			"1"
		"textAlignment"		"west"	
		"labelText"			"%classname%"
		"font"				"TransitionTitle"
		"wrap"				"0"
	}

	"SelectSpawn"
	{
		"ControlName"		"Label"
		"fieldName"			"SelectSpawn"
		"wide"				"0"
		"tall"				"0"
		"visible"			"0"
	}

	"Ready"
	{
		"ControlName"		"Label"
		"fieldName"			"Ready"
		"xpos"				"140"
		"ypos"				"64"
		"zpos"				"1"
		"wide"				"165"
		"tall"				"30"
		"visible"			"1"
		"enabled"			"1"
		"textAlignment"		"north-west"	
		"labelText"			"%ready%"
		"font"				"OuttroStatsCrawl"
		"wrap"				"1"
	}

	"Info"
	{
		"ControlName"		"Label"
		"fieldName"			"Info"
		"xpos"				"140"
		"ypos"				"78"
		"zpos"				"1"
		"wide"				"165"
		"tall"				"30"
		"visible"			"1"
		"enabled"			"1"
		"textAlignment"		"north-west"	
		"labelText"			"%info%"
		"font"				"OuttroStatsCrawl"
		"wrap"				"1"
	}

	"SpawnBind"
	{
		"ControlName"	"CBindPanel"
		"fieldName"		"SpawnBind"
		"xpos"			"140"
		"ypos"			"79"
		"zpos"			"2"
		"visible"		"1"
		"enabled"		"1"
	}

	"SpawnLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"SpawnLabel"
		"xpos"				"155"
		"ypos"				"79"
		"zpos"				"1"
		"wide"				"150"
		"tall"				"25"
		"visible"			"1"
		"enabled"			"1"
		"textAlignment"		"west"	
		"labelText"			"#L4D_Zombie_UI_Press_Fire_To_Play"
		"font"				"OuttroStatsCrawlUnderline"
		"wrap"				"1"
		"fgcolor_override"	"255 255 255 255"
	}
}
