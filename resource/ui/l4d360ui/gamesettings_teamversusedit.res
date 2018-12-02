"Resource/UI/GameSettings_VersusEdit.res"
{
	"GameSettings"
	{
		"ControlName"				"Frame"
		"fieldName"					"GameSettings"
		"xpos"						"0"
		"ypos"						"0"
		"wide"						"f0"
		"tall"						"260"
		"autoResize"				"0"
		"pinCorner"					"0"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
	}
	
	"ImgBackground"
	{
		"ControlName"			"L4DMenuBackground"
		"fieldName"				"ImgBackground"
		"xpos"					"0"
		"ypos"					"179"
		"zpos"					"-1"
		"wide"					"f0"
		"tall"					"144"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"		
		"enabled"				"1"
		"tabPosition"			"0"
		"fillColor"				"0 0 0 0"
	} 
		
	"ImgLevelImage"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgLevelImage"
		"xpos"					"c55"//thumb_x
		"ypos"					"115"//thumb_y
		"wide"					"218"//thumb_width
		"tall"					"109"//thumb_height
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"maps/any"
		"scaleImage"			"1"
	}
	"ImgLevelImageFrame"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"ImgLevelImageFrame"
		"xpos"					"c55"//frame_x
		"ypos"					"115"//frame_y
		"wide"					"218"//frame_width
		"tall"					"109"//frame_height
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"urikgamemenu/campaignFrame"
		"scaleImage"			"1"
	}	
	// Campaign dropdown
	"DrpMission"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpMission"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"ypos"					"115"
		"zpos"					"1"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"tall"					"15"		
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"BtnCancel" 
		"navDown"				"DrpMissionExtended"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"					"L4D360HybridButton"
			"fieldName"						"BtnDropButton"
			"xpos"							"0"
			"ypos"							"0"
			"zpos"							"2"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
			"wideatopen"					"160" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
			"wideatopen"					"180" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]//wideatopen
			"tall"							"15"	
			"autoResize"					"1"
			"pinCorner"						"0"
			"visible"						"1"
			"enabled"						"1"
			"tabPosition"					"0"
			"labelText"						"#L4D360UI_GameSettings_Mission"
			"tooltiptext"					"#L4D360UI_GameSettings_Tooltip_Mission"
			"disabled_tooltiptext"			"#L4D360UI_GameSettings_Tooltip_Mission_Disabled"
			"style"							"DropDownButton"
			"command"						"FlmMissionVersus"
		}
	}
	
	// Campaign flyout	
	"FlmMissionVersus"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmMissionVersus"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnCampaign1"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownMissionVersus.res"
	}
	
	"DrpMissionExtended"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpMissionExtended"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"ypos"					"115"		
		"zpos"					"1"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"tall"					"15"		
		"visible"				"0"
		"enabled"				"1"
		"navUp"					"DrpMission"
		"navDown"				"DrpChapter"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"					"L4D360HybridButton"
			"fieldName"						"BtnDropButton"
			"xpos"							"0"
			"ypos"							"0"
			"zpos"							"2"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
			"wideatopen"					"160" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
			"wideatopen"					"180" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]//wideatopen
			"tall"							"15"	
			"autoResize"					"1"
			"pinCorner"						"0"
			"visible"						"1"
			"enabled"						"1"
			"tabPosition"					"0"
			"labelText"						"#L4D360UI_GameSettings_Mission"
			"tooltiptext"					"#L4D360UI_GameSettings_Tooltip_Mission"
			"disabled_tooltiptext"			"#L4D360UI_GameSettings_Tooltip_Mission_Disabled"
			"style"							"DropDownButton"
			"command"						"FlmMissionVersusExtended"
		}
	}
	
	"FlmMissionVersusExtended"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmMissionVersusExtended"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnCampaign1"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownMissionVersusExtended.res"
	}
	// Chapter Dropdown
	"DrpChapter"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpChapter"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"ypos"					"135"		
		"zpos"					"1"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"tall"					"15"		
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"DrpMissionExtended"
		"navDown"				"DrpServerType"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"					"L4D360HybridButton"
			"fieldName"						"BtnDropButton"
			"xpos"							"0"
			"ypos"							"0"
			"zpos"							"2"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
			"wideatopen"					"160" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
			"wideatopen"					"180" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]//wideatopen
			"tall"							"15"	
			"autoResize"					"1"
			"pinCorner"						"0"
			"visible"						"1"
			"enabled"						"1"
			"tabPosition"					"0"
			"labelText"						"#L4D360UI_GameSettings_Chapter"
			"tooltiptext"					"#L4D360UI_GameSettings_Tooltip_Chapter"
			"disabled_tooltiptext"			"#L4D360UI_GameSettings_Tooltip_Chapter_Disabled"
			"style"							"DropDownButton"
			"command"						""
		}
	}
	
	//flyouts		
	"FlmChapterXXautogenerated"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmChapterFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnChapter1"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownChapter.res"
	}
	"DrpServerType"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpServerType"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"ypos"					"155"	
		"zpos"					"1"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"tall"					"15"	
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"DrpChapter"
		"navDown"				"DrpSwitchMode"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"2"
		"wide"					"280"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"350"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
			"wideatopen"			"160"
			"tall"					"15"	
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"0"
			"labelText"				"#L4D360UI_Lobby_Change_ServerType"
			"tooltiptext"			"#L4D360UI_Lobby_Change_ServerType_Tip"
			"style"					"DropDownButton"
			"command"				"FlmServerType"
		}
	}
		
	"FlmServerType"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmServerType"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnOfficial"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownServerType.res"
	}
	"DrpSwitchMode"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpSwitchMode"
		"xpos"					"c-250"
		"ypos"					"175"
		"zpos"					"1"
		"wide"					"280"
		"tall"					"15"
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"DrpServerType"
		"navDown"				"BtnCancel"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"2"
			"wide"					"280"
			"wideatopen"			"160"
			"tall"					"15"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"0"
			"labelText"				"CHANGEMENT DE MODE"			[$FRENCH]
			"labelText"				"ÄNDERUNGSMODUS"				[$GERMAN]
			"labelText"				"MODIFICA DELLA MODALITÀ DI"	[$ITALIAN]
			"labelText"				"モードの変更"						[$JAPANESE]
			"labelText"				"모드 변경"							[$KOREAN]
			"labelText"				"ZMIANA TRYBU"					[$POLISH]
			"labelText"				"ALTERAR O MODO"				[$PORTUGUESE]
			"labelText"				"ИЗМЕНИТЬ РЕЖИМ"				[$RUSSIAN]
			"labelText"				"更改模式"						[$SCHINESE || $TCHINESE]
			"labelText"				"CAMBIAR EL MODO DE"			[$SPANISH]
			"labelText"				"#L4D360UI_MainMenu_ChangeScriptedMode"
			"tooltiptext"			"Convert the game to another team mode."
			"style"					"DropDownButton"
			"command"				"FlmSwitchMode"
			"allcaps"				"1"
		}
	}
	
	"FlmSwitchMode"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSwitchMode"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnMode1"
		"ResourceFile"			"resource/UI/L4D360UI/DropDownSwitchMode8_Team.res"
	}
	"IconSwitchToTeamScavenge"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconSwitchToTeamScavenge"
		"xpos"					"c-265"		
		"ypos"					"175"		
		"wide"					"15"		
		"tall"					"15"		
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_button_settings"
		"scaleImage"			"1"
	}
	
	"BtnSwitchToTeamScavenge"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnSwitchToTeamScavenge"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"ypos"					"175"	
		"wide"					"220"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"335"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]//btnswithicons
		"tall"					"15"	
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"?condition?challenge"
		{
			"visible"			"0"
		}
		"enabled"				"0"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"DrpServerType"
		"navDown"				"BtnCancel" 
		"labelText"				"#L4D360UI_Lobby_SwitchTo_teamscavenge"
		"tooltiptext"			"#L4D360UI_Lobby_SwitchTip_teamscavenge"
		"style"					"DefaultButton"
		"command"				"SwitchGameModeTo_teamscavenge"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
    "IconBackArrow" 
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBackArrow"
		"xpos"					"c-268"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"xpos"					"c-316"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"ypos"					"195"
		"wide"					"15"
		"tall"					"15"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_button_arrow_left"
		//drawcolor_special_event_autoreplace
		"scaleImage"			"1"
	}
	"BtnCancel"	
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCancel"
		"xpos"					"c-250"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"xpos"					"c-298"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"ypos"					"195"
		"zpos"					"0"
		"wide"					"220"  [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"335"  [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]//btnswithicons
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"1"
		"wrap"					"1"
		"navUp"					"DrpSwitchMode"
		"navDown"				"DrpMission"
		"labelText"				"#L4D360UI_Back_Caps"
		"tooltiptext"			"#L4D360UI_Tooltip_Back"
		"style"					"DefaultButton"
		"command"				"Back"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
}
