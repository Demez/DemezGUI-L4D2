"Resource/UI/HUD/AbilityTimerHud.res"
{
	"BackgroundImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"BackgroundImage"
		"xpos"			"-4"
		"ypos"			"0"
		"wide"			"80"
		"tall"			"80"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"zpos"			"0"
	}

	"AbilityImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"AbilityImage"
		"xpos"			"6"
		"ypos"			"10"
		"wide"			"60"
		"tall"			"60"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"
		"zpos"			"1"
	}

	"Progress"
	{
		"ControlName"	"CircularProgressBar"
		"fieldName"		"Progress"
		"xpos"			"6"
		"ypos"			"10"
		"wide"			"60"
		"tall"			"60"
		"visible"		"1"
		"enabled"		"1"
		"zpos"			"2"
		"fg_image"		"HUD/PZ_charge_meter"
		"variable"		"abilityProgress"
		"bgcolor_override"	"0 0 0 0"
	}
}
