"Resource/UI/HUD/LocalPlayerPanel.res"
{
	"Splat"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"Splat"
		"xpos"			"38"
		"ypos"			"44"
		"zpos"			"-1"
		"wide"			"120"
		"tall"			"45"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"autoResize"	"0"
		"pinCorner"		"0"
		"image"			"survivor_background"
		"zpos"			"-1"
	}

	"Dead"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"Dead"
		"xpos"			"88"
		"ypos"			"40"
		"wide"			"55"
		"tall"			"55"
		"zpos"			"2"
		"visible"		"0"
		"enabled"		"1"
		"scaleImage"	"1"
		"image"			"hud/overlay_dead"
	}

	"Voice"
	{
		"ControlName"	"TeamDisplayVoicePanel"
		"fieldName"		"Voice"
		"xpos"			"44"
		"ypos"			"25"
		"wide"			"40"
		"tall"			"40"
		"visible"		"1"
		"enabled"		"1"
		"zpos"			"3"
		"voice_icon"	"voice_self"
	}
	
	"Head"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"Head"
		"xpos"			"48"
		"ypos"			"53"
		"wide"			"29"
		"tall"			"29"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
	}
	
	"DuckingIcon"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"DuckingIcon"
		"xpos"			"122"
		"ypos"			"21"
		"wide"			"25"
		"tall"			"25"
		"zpos"			"2"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"image"			"hud/crouch_survivor"
	}
	
	"Health"
	{
		"ControlName"	"HealthPanel"
		"fieldName"		"Health"
		"xpos"			"79"
		"ypos"			"72"
		"wide"			"70"
		"tall"			"11"
		"visible"		"1"
		"enabled"		"1"
		"zpos"			"1"
		"new_material_style"	"0"			
	}
	
	"HealthIcon"
	{
		"ControlName"	"Label"
		"fieldName"		"HealthIcon"
		"xpos"			"81"
		"ypos"			"52"
		"wide"			"20"
		"tall"			"24"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		","
		"textAlignment"	"west"
		"font"			"L4D_Icons"
		"zpos"			"2"
	}

	"HealthNumber"
	{
		"ControlName"	"Label"
		"fieldName"		"HealthNumber"
		"xpos"			"93"
		"ypos"			"53"
		"wide"			"80"
		"tall"			"24"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%HealthNumber%"
		"textAlignment"	"south-west"
		"font"			"Credits"
		"zpos"			"2"
	}
}