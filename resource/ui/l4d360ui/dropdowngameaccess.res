"resource/UI/DropDownGameAccess.res"
{
	"PnlBackground"
	{
		"ControlName"		"Panel"
		"fieldName"			"PnlBackground"
		"xpos"				"0"
		"ypos"				"0"
		"zpos"				"1"
		"wide"					"156" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"226" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"tall"				"65"
		"visible"			"1"
		"enabled"			"1"
		"paintbackground"	"1"
		"paintborder"		"1"
	}

	"BtnPrivate"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPrivate"
		"xpos"					"0"
		"ypos"					"40"
		"zpos"					"2"
		"wide"					"140"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPublic"
		"navDown"				"BtnFriends"
		"labelText"				"#L4D360UI_Access_Invite"
		"tooltiptext"			"#L4D360UI_Lobby_MakePrivate_Tip"
		"disabled_tooltiptext"	"#L4D360UI_GameSettings_Tooltip_Access_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"GameAccess_private"
		"EnableCondition" 		"LiveRequired"		
	}	
	
	"BtnFriends"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnFriends"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"2"
		"wide"					"140"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnPrivate"
		"navDown"				"BtnPublic"
		"labelText"				"#L4D360UI_Access_Friends"
		"tooltiptext"			"#L4D360UI_Lobby_MakeFriendOnly_Tip"
		"disabled_tooltiptext"	"#L4D360UI_GameSettings_Tooltip_Access_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"GameAccess_friends"
		"EnableCondition" 		"LiveRequired"		
	}
	
	"BtnPublic"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnPublic"
		"xpos"					"0"
		"ypos"					"20"
		"zpos"					"2"
		"wide"					"140"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnFriends"
		"navDown"				"BtnPrivate"
		"labelText"				"#L4D360UI_Access_Public"
		"tooltiptext"			"#L4D360UI_Lobby_OpenToPublic_Tip"
		"disabled_tooltiptext"	"#L4D360UI_GameSettings_Tooltip_Access_Disabled"
		"style"					"FlyoutMenuButton"
		"command"				"GameAccess_public"
		"EnableCondition" 		"LiveRequired"		
	}
	
 	"BtnSyslink"	[$X360]
 	{
 		"ControlName"			"L4D360HybridButton"
 		"fieldName"				"BtnSyslink"
		"xpos"					"0"
 		"ypos"					"60"
 		"zpos"					"2"
 		"wide"					"140"
 		"tall"					"20"
 		"autoResize"			"1"
 		"pinCorner"				"0"
 		"visible"				"1"
 		"enabled"				"1"
 		"tabPosition"			"0"
 		"wrap"					"1"
 		"navUp"					"BtnPublic"
 		"navDown"				"BtnPrivate"
 		"labelText"				"#L4D360UI_Access_LAN"
 		"tooltiptext"			"#L4D360UI_Access_Tooltip_LAN"
 		"style"					"FlyoutMenuButton"
 		"command"				"GameNetwork_lan"
 	}	
}