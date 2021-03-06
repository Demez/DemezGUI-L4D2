"Resource/UI/VersusFlyout.res"
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
		"tall"					"245"
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
		"labelText"				"Big Daddy Versus"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_bigdaddy2versus"
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
		"labelText"				"Big Daddy Versus Realism"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_bigdaddy2versusrealism"
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
		"labelText"				"Death's Door Versus"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_deathsdoorvs"
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
		"labelText"				"Hunting Party Versus"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_huntingpartyvs"
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
		"labelText"				"L4D2 Versus"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_l4d2vs"
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
		"labelText"				"Low Gravity"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_lowgravity"
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
		"labelText"				"Melee's VS the Infected"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_meleevs"
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
		"labelText"				"Special Delivery Versus"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_specialdeliveryvs"
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
		"labelText"				"Tankball Versus"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_tankballvs"
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
		"navDown"				"BtnPlayMutation11"
		"labelText"				"Twisted Tongues"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_twistedtongues"
	}

	"BtnPlayMutation11"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation11"
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
		"navDown"				"BtnBack"
		"labelText"				"VIP Target"
		"tooltiptext"			"#L4D360UI_MainMenu_Versus_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_viptarget"
	}
	
	"BtnBack"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnBack"
		"xpos"					"0"
		"ypos"					"220"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"		
		"navUp"					"BtnPlayMutation11"
		"navDown"				"BtnPlayMutation1"
		"labelText"				"#L4D360UI_Tooltip_Back"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"FlmVersusMutationsFlyout"
	}
}