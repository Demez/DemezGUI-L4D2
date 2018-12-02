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
		"tall"					"385"
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
		"labelText"				"Air Raid"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_airraid"
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
		"labelText"				"BooM60"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_boom60"
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
		"labelText"				"Double Trouble"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_doubletrouble"
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
		"labelText"				"Fire Storm"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_firestorm"
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
		"labelText"				"Infestation"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_infestation"
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
		"labelText"				"Nuclear Gnome"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_nucleargnome"
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
		"labelText"				"Plague of the Dead"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_plague"
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
		"labelText"				"Special Slayer"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithFriends_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithFriends_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_specialslayer"
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
		"labelText"				"Special Surprise"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_specialsurprise"
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
		"labelText"				"Split Decision"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_split"
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
		"navDown"				"BtnPlayMutation12"
		"labelText"				"Suicide Boombers"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_suicideboombers"
	}

	"BtnPlayMutation12"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation12"
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
		"navDown"				"BtnPlayMutation13"
		"labelText"				"Tank Bake"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_tankbake"
	}	

	"BtnPlayMutation13"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation13"
		"xpos"					"0"
		"ypos"					"240"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation12"
		"navDown"				"BtnPlayMutation14"
		"labelText"				"Tank Brawl"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_tankbrawl"
	}	
	
	"BtnPlayMutation14"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation14"
		"xpos"					"0"
		"ypos"					"260"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation13"
		"navDown"				"BtnPlayMutation15"
		"labelText"				"Tank Splitters"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_tanksplitters"
	}
	
	"BtnPlayMutation15"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation15"
		"xpos"					"0"
		"ypos"					"280"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation14"
		"navDown"				"BtnPlayMutation16"
		"labelText"				"Uncommon Ambush"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_uncommonambush"
	}

	"BtnPlayMutation16"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation16"
		"xpos"					"0"
		"ypos"					"300"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation15"
		"navDown"				"BtnPlayMutation17"
		"labelText"				"Witchcraft"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_witchcraft"
	}

	"BtnPlayMutation17"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation17"
		"xpos"					"0"
		"ypos"					"320"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation16"
		"navDown"				"BtnPlayMutation18"
		"labelText"				"Witching Hour"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_witchinghour"
	}

	"BtnPlayMutation18"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPlayMutation18"
		"xpos"					"0"
		"ypos"					"340"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation17"
		"navDown"				"BtnBack"
		"labelText"				"Wrecking Crew"
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip"
		"disabled_tooltiptext"	"#L4D360UI_MainMenu_PlayCoOpWithAnyone_Tip_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"ChangeMutation_wreckingcrew"
	}
	
	"BtnPrev"
	{
		"ControlName"		"L4D360HybridButton"
		"fieldName"			"BtnPrev"
		"xpos"				"0"
		"ypos"				"360"
		"wide"				"140"
		"tall"				"20"
		"autoResize"		"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"wrap"				"1"
		"navUp"				"BtnPlayMutation18"
		"navDown"			"BtnPlayMutation1"
		"navLeft"			"BtnNext"
		"navRight"			"BtnBack"
		"labelText"			"#GameUI_Prev"
		"tooltiptext"		""
		"style"				"FlyoutMenuButton"
		"command"			"FlmCampaignMutations2Flyout"
	}

	"BtnBack"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnBack"
		"xpos"					"80"	[!$ENGLISH]
		"xpos"					"60"
		"ypos"					"360"
		"zpos"					"1"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPlayMutation18"
		"navDown"				"BtnPlayMutation1"
		"navLeft"				"BtnPrev"
		"navRight"				"BtnNext"
		"labelText"				"#L4D360UI_Tooltip_Back"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"FlmCampaignMutationsFlyout"
	}
	
	"BtnNext"
	{
		"ControlName"		"L4D360HybridButton"
		"fieldName"			"BtnNext"
		"xpos"				"205"	[!$ENGLISH]
		"xpos"				"130"
		"ypos"				"360"
		"zpos"				"2"
		"wide"				"140"
		"tall"				"20"
		"autoResize"		"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"wrap"				"1"
		"navUp"				"BtnPlayMutation18"
		"navDown"			"BtnPlayMutation1"
		"navLeft"			"BtnBack"
		"navRight"			"BtnPrev"
		"labelText"			"#GameUI_Next"
		"tooltiptext"		""
		"style"				"FlyoutMenuButton"
		"command"			"FlmCampaignMutations2Flyout"
	}
}