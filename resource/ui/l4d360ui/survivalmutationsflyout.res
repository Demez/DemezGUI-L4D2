"Resource/UI/SurvivalFlyout.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"-1"
		"wide"					"180" [$ENGLISH]
		"wide"					"270" [!$ENGLISH]
		"tall"					"225"
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}

	"BtnPlayMutation1"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation1"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnBack"
		"navDown"				"BtnPlayMutation2"
		"labelText"				"Big Daddy Survival Versus"
		"tooltiptext"			"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_bigdaddy2survivalversus"
	}

	"BtnPlayMutation2"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation2"
		"xpos"					"0"
		"ypos"					"20"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation1"
		"navDown"				"BtnPlayMutation3"
		"labelText"				"Bombardment"
		"tooltiptext"			"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_bombardment"
	}

	"BtnPlayMutation3"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation3"
		"xpos"					"0"
		"ypos"					"40"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation2"
		"navDown"				"BtnPlayMutation4"
		"labelText"				"Death's Door Survival"
		"tooltiptext"			"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_deathsdoorsv"
	}

	"BtnPlayMutation4"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation4"
		"xpos"					"0"
		"ypos"					"60"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation3"
		"navDown"				"BtnPlayMutation5"
		"labelText"				"Hordes"
		"tooltiptext"			"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_hordes"
	}

	"BtnPlayMutation5"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation5"
		"xpos"					"0"
		"ypos"					"80"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation4"
		"navDown"				"BtnPlayMutation6"
		"labelText"				"Onslaught"
		"tooltiptext"			"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_onslaught"
	}

	"BtnPlayMutation6"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation6"
		"xpos"					"0"
		"ypos"					"100"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation5"
		"navDown"				"BtnPlayMutation7"
		"labelText"				"Realism Survival"
		"tooltiptext"			"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_realismsurvival"
	}

	"BtnPlayMutation7"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation7"
		"xpos"					"0"
		"ypos"					"120"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation6"
		"navDown"				"BtnPlayMutation8"
		"labelText"				"Special Delivery Survival"
		"tooltiptext"			"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_specialdeliverysv"
	}

	"BtnPlayMutation8"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation8"
		"xpos"					"0"
		"ypos"					"140"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"		
		"navUp"					"BtnPlayMutation7"
		"navDown"				"BtnPlayMutation9"
		"labelText"				"Tank Assault"
		"tooltiptext"			"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_tankassault"
	}

	"BtnPlayMutation9"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation9"
		"xpos"					"0"
		"ypos"					"160"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"		
		"navUp"					"BtnPlayMutation8"
		"navDown"				"BtnPlayMutation10"
		"labelText"				"Uncommon Ground Survival"
		"tooltiptext"			"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_uncommongroundsv"
	}
	
	"BtnPlayMutation10"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation10"
		"xpos"					"0"
		"ypos"					"180"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"		
		"navUp"					"BtnPlayMutation9"
		"navDown"				"BtnBack"
		"labelText"				"United We Stand"
		"tooltiptext"			"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlaySurvivalWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_united"
	}
	
	"BtnBack"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnBack"
		"xpos"					"0"
		"ypos"					"200"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"		
		"navUp"					"BtnPlayMutation10"
		"navDown"				"BtnPlayMutation1"
		"labelText"				"#L4D360UI_Tooltip_Back"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"FlmCusMutationsFlyout"
	}
}