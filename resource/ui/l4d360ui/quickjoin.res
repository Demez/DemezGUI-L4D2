"resource/UI/QuickJoin.res"
{
	"LblTitle"
	{
		"ControlName"			"L4D360HybridButton"	
		"fieldName"				"LblTitle"
		"xpos"					"21"	
		"ypos"					"0"		
		"wide"					"240" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"320" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"tall"					"20"	
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				""
		"tooltiptext"			"#L4D360UI_MainMenu_PlayCoopWithFriends_Tip"
		"Font"					"DefaultMedium"
		"fgcolor_override"		"255 255 255 255"
		
		"style"						"MainMenuSmallButton"
		"command"					"SeeAll"		
		"ActivationType"			"1"				
		"FocusDisabledBorderSize"	"1"				
	}
	
	"GplQuickJoinList"
	{
		"ControlName"					"GenericPanelList"
		"fieldName"						"GplQuickJoinList"
		"xpos"							"-1"
		"ypos"							"20"
		"zpos"							"0"
		"wide"							"240"
		"tall"							"300"
		"autoResize"					"1"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"1"
		"panelBorder"					"0"
		"NoDrawPanel"					"1"
		"arrowsVisible"					"0"
	}
}