"resource/UI/DropDownFoundGamesFilterGameStatus.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"			"PnlBackground"
		"xpos"				"0"
		"ypos"				"0"
		"zpos"				"-1"
		"wide"				"156"	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"				"260"	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"tall"				"70"
		"visible"			"1"
		"enabled"			"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}

	"BtnAny"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"			"BtnAny"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"150"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnInGame"
		"navDown"			"BtnInLobby"
		"labelText"			"#L4D360UI_FoundPublicGames_Filter_GameStatus_Any"
		"tooltiptext"			"#L4D360UI_FoundPublicGames_Filter_GameStatus_Any_Tip"
		"style"				"FlyoutMenuButton"
		"command"			"filter_status_"
	}	
	
	"BtnInLobby"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"			"BtnInLobby"
		"xpos"				"0"
		"ypos"				"20"
		"wide"				"150"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnAny"
		"navDown"			"BtnInGame"
		"labelText"			"#L4D360UI_FoundPublicGames_Filter_GameStatus_InLobby"
		"tooltiptext"			"#L4D360UI_FoundPublicGames_Filter_GameStatus_InLobby_Tip"
		"style"				"FlyoutMenuButton"
		"command"			"filter_status_lobby"
	}	
	
	"BtnInGame"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"			"BtnInGame"
		"xpos"				"0"
		"ypos"				"40"
		"wide"				"150"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnInLobby"
		"navDown"			"BtnAny"
		"labelText"			"#L4D360UI_FoundPublicGames_Filter_GameStatus_InGame"
		"tooltiptext"			"#L4D360UI_FoundPublicGames_Filter_GameStatus_InGame_Tip"
		"style"				"FlyoutMenuButton"
		"command"			"filter_status_game"
	}	
}	