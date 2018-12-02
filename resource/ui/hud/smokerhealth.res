"Resource/UI/HUD/SmokerHealth.res"
{
	"BackgroundImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"BackgroundImage"
		"xpos"			"187"
		"ypos"			"7"
		"wide"			"224"
		"tall"			"112"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"image"			"HUD/PZ_healthbar_50"
		"zpos"			"-2"
	}

	"Health"
	{
		"ControlName"	"HealthPanel"
		"fieldName"		"Health"
		"xpos"			"248"
		"ypos"			"76"
		"wide"			"126"
		"tall"			"13"
		"visible"		"1"
		"enabled"		"1"
		"zpos"			"1"
	}

	"HealthIcon"
	{
		"ControlName"	"Label"
		"fieldName"		"HealthIcon"
		"visible"		"0"
		"wide"			"0"
		"tall"			"0"
	}

	"HealthNumber"
	{
		"ControlName"	"Label"
		"fieldName"		"HealthNumber"
		"xpos"			"249"
		"ypos"			"46"
		"wide"			"100"
		"tall"			"40"
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%HealthNumber%"
		"textAlignment"	"west"
		"font"			"Credits"
		"zpos"			"2"
	}

	
	"DuckingIcon"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"DuckingIcon"
		"xpos"			"298"
		"ypos"			"20"
		"wide"			"25"
		"tall"			"25"
		"zpos"			"2"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"image"			"hud/crouch_infected"
	}
}