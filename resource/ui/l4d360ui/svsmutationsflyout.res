"Resource/UI/CampaignFlyout.res"
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
		"tall"					"125"
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
		"labelText"				"Gun Game"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_gg"
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
		"labelText"				"Gun of the Gods (SvS)"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_shootout"
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
		"labelText"				"Last Man Standing"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_sole"
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
		"labelText"				"Psycho Survivor"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_psycho"
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
		"navDown"				"BtnBack"
		"labelText"				"Pyro Rage"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_pyrorage"
	}
	
	"BtnBack"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnBack"
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
		"navDown"				"BtnPlayMutation1"
		"labelText"				"#L4D360UI_Tooltip_Back"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"FlmCustomMutations0Flyout"
	}
}