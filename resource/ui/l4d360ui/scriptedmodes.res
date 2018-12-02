"Resource/UI/L4D360UI/ScriptedModes.res"
{
	"ScriptedModes" //#L4D360UI_CustomCampaigns_FriendsTitle #L4D360UI_CustomCampaigns_SystemLinkTitle
	{
		"ControlName"					"Frame"
		"fieldName"						"ScriptedModes"
		"xpos"							"0"
		"ypos"							"0"
		"wide"							"f0"
		"tall"							"f0"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
	}
	
	"Divider1"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Divider1"
		"xpos"					"c-385"	[$WIN32WIDE]
		"ypos"					"70"	[$WIN32WIDE]
		"wide"					"475"	[$WIN32WIDE]
		"xpos"					"c-296"	[!$WIN32WIDE]
		"ypos"					"70"	[!$WIN32WIDE]	
		"zpos"					"0"	
		"wide"					"360"	[!$WIN32WIDE]
		"tall"					"3"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"divider_urik"
		"scaleImage"			"1"
		"drawcolor"				"050 050 050 255"
	}

	"Divider2"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"Divider2"
		"xpos"					"c-385"	[$WIN32WIDE]
		"ypos"					"359"	[$WIN32WIDE]
		"wide"					"475"	[$WIN32WIDE]
		"xpos"					"c-296"	[!$WIN32WIDE]
		"ypos"					"359"	[!$WIN32WIDE]	
		"zpos"					"0"	
		"wide"					"360"	[!$WIN32WIDE]
		"tall"					"3"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"divider_urik"
		"scaleImage"			"1"
		"drawcolor"				"050 050 050 255"
	}

	"GplScriptedModes"
	{
		"ControlName"				"GenericPanelList"
		"fieldName"				"GplScriptedModes"
		"xpos"					"c-385"	[$WIN32WIDE]
		"ypos"					"71"	[$WIN32WIDE]
		"wide"					"475"	[$WIN32WIDE]
		"tall"					"290"	[$WIN32WIDE]
		"xpos"					"c-296"	[!$WIN32WIDE]
		"ypos"					"71"	[!$WIN32WIDE]
		"wide"					"360"	[!$WIN32WIDE]	
		"tall"					"290"	[!$WIN32WIDE]
		"zpos"					"1"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"1"
		"panelBorder"			"0"//Urik: removed that buggy annoying gap
		"bgcolor_override" 				"0 0 0 0"
	}

	"LblNoModes"
	{
		"ControlName"		"Label"
		"fieldName"			"LblNoModes"
		"xpos"				"c-280"
		"ypos"				"195"
		"wide"				"274"
		"tall"				"60" 
		"zpos"				"5"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"				"DefaultMedium"
		"textAlignment"		"center"
		"labelText"			"#L4D360UI_No_MutationModes_Installed"
	}
	
	"LblName"
	{
		"ControlName"		"Label"
		"fieldName"			"LblName"
		"xpos"				"c224"	[$WIN32WIDE]
		"ypos"				"70"	[$WIN32WIDE]
		"wide"				"158"	[$WIN32WIDE]
		"tall"				"69"	[$WIN32WIDE] 
		"xpos"				"c70"	[!$WIN32WIDE]
		"ypos"				"140"	[!$WIN32WIDE]
		"wide"				"228"	[!$WIN32WIDE]
		"tall"				"36" 	[!$WIN32WIDE]
		"zpos"				"1"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"				"DefaultLarge"
		"textAlignment"		"center"	[$WIN32WIDE]
		"centerwrap"				"1"	[$WIN32WIDE]
		"textAlignment"		"center"	[!$WIN32WIDE]
		"centerwrap"				"1"	[!$WIN32WIDE]
		//"bgcolor_override"	"0 0 255 50"
	}

	"LblPlayers"
	{
		"ControlName"		"Label"
		"fieldName"			"LblPlayers"
		"xpos"				"c100"	[$WIN32WIDE]
		"ypos"				"141"	[$WIN32WIDE]
		"wide"				"282"	[$WIN32WIDE]
		"tall"				"15" 	[$WIN32WIDE]
		"xpos"				"c70"	[!$WIN32WIDE]
		"ypos"				"178"	[!$WIN32WIDE]
		"wide"				"228"	[!$WIN32WIDE]
		"tall"				"15" 	[!$WIN32WIDE]
		"zpos"				"1"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"Font"				"DefaultMedium"
		"textAlignment"		"west"
		"wrap"				"0"
		"dulltext"			"1"
		//"bgcolor_override"	"0 0 255 50"
	}

	"LblMissions"
	{
		"ControlName"		"Label"
		"fieldName"			"LblMissions"
		"xpos"				"c100"	[$WIN32WIDE]
		"ypos"				"158"	[$WIN32WIDE]
		"wide"				"282"	[$WIN32WIDE]
		"tall"				"15" 	[$WIN32WIDE]
		"xpos"				"c70"	[!$WIN32WIDE]
		"ypos"				"195"	[!$WIN32WIDE]
		"wide"				"228"	[!$WIN32WIDE]
		"tall"				"15" 	[!$WIN32WIDE]
		"zpos"				"1"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"Font"				"DefaultMedium"
		"textAlignment"		"west"
		"wrap"				"0"
		"dulltext"			"1"
		//"bgcolor_override"	"0 0 255 50"
	}

	"LblAuthor"
	{
		"ControlName"		"Label"
		"fieldName"			"LblAuthor"
		"xpos"				"c100"	[$WIN32WIDE]
		"ypos"				"175"	[$WIN32WIDE]
		"wide"				"282"	[$WIN32WIDE]
		"tall"				"15" 	[$WIN32WIDE]
		"xpos"				"c70"	[!$WIN32WIDE]
		"ypos"				"213"	[!$WIN32WIDE]
		"wide"				"228"	[!$WIN32WIDE]
		"tall"				"15" 	[!$WIN32WIDE]
		"zpos"				"1"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"Font"				"DefaultMedium"
		"textAlignment"		"west"
		"wrap"				"0"
		"dulltext"			"1"
		//"bgcolor_override"	"0 0 255 50"
	}
	
	"LblDescription"
	{
		"ControlName"		"Label"
		"fieldName"			"LblDescription"
		"xpos"				"c100"	[$WIN32WIDE]
		"ypos"				"192"	[$WIN32WIDE]
		"wide"				"282"	[$WIN32WIDE]
		"tall"				"283" 	[$WIN32WIDE]
		"xpos"				"c70"	[!$WIN32WIDE]
		"ypos"				"230"	[!$WIN32WIDE]
		"zpos"				"1"
		"wide"				"228"	[!$WIN32WIDE]
		"tall"				"249" 	[!$WIN32WIDE]
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"Font"				"DefaultVerySmall"
		"textAlignment"		"north-west"
		"wrap"				"1"
		"brighttext"		"1"
		"dulltext"			"0"
		//"bgcolor_override"	"0 0 255 50"
	}
	
	"ImgAddonIconSpinner"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgAddonIconSpinner"
		"xpos"					"c100"		[$WIN32WIDE]	
		"ypos"					"16"	[$WIN32WIDE]
		"wide"					"108"	[$WIN32WIDE]
		"tall"					"54"	[$WIN32WIDE]
		"xpos"					"c150"	[!$WIN32WIDE]		
		"ypos"					"16"	[!$WIN32WIDE]
		"zpos"					"10"
		"wide"					"108"	[!$WIN32WIDE]
		"tall"					"54"	[!$WIN32WIDE]
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"scaleImage"		"1"
		"image"					"searching_animation"
	}	

	"ImgAddonIcon"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgAddonIcon"
		"xpos"				"c100"	[$WIN32WIDE]
		"ypos"				"70"	[$WIN32WIDE]
		"xpos"				"c124"	[!$WIN32WIDE]
		"ypos"				"70"	[!$WIN32WIDE]
		"zpos"				"1"
		"wide"				"122"
		"tall"				"69"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"scaleImage"		"1"
	}	
	
	"LblFilters"
	{
		"ControlName"				"Label"
		"fieldName"					"LblFilters"
		"xpos"						"c-337" [$WIN32WIDE]
		"xpos"						"c-253" [!$WIN32WIDE]
		"ypos"						"365"
		"zpos"						"2"
		"wide"						"255"
		"tall"						"15"
		"autoResize"				"1"
		"pinCorner"					"0"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"labelText"					"#L4D360UI_FoundPublicGames_Filter_Label"
		"textAlignment"				"north-west"
		"Font"						"DefaultMedium"
		"fgcolor_override"			"MediumGray"
		"AllCaps"					"1"
	}

	"DrpFilterPlayers"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpFilterPlayers"
		"xpos"					"c-337" [$WIN32WIDE]
		"xpos"					"c-253" [!$WIN32WIDE]
		"ypos"					"380"
		"zpos"					"1"
		"wide"					"320"
		"tall"					"15"
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"DrpFilterModeType"
		"navDown"				"DrpFilterModeType"
		
		// button and label
		"BtnDropButton"
		{
			"ControlName"		"L4D360HybridButton"
			"fieldName"			"BtnDropButton"
			"xpos"				"0"
			"ypos"				"0"
			"zpos"				"2"
			"wide"				"250"
			"wideatopen"		"200"
			"tall"				"15"
			"autoResize"		"1"
			"pinCorner"			"0"
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"labelText"			"КОЛ-ВО ИГРОКОВ" [$RUSSIAN]
			"labelText"			"#L4D360UI_ModeSelect_Filter_Players" [!$RUSSIAN]
			"tooltiptext"		""
			"style"				"DropDownButton"
			"command"			"FlmFilterPlayers"
			"allcaps"			"1"
		}
	}

	"FlmFilterPlayers"
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmFilterPlayers"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"4"
		"InitialFocus"		"BtnAny"
		"ResourceFile"		"resource/UI/L4D360UI/DropDownModeSelectFilterPlayers.res"
	}

	"DrpFilterModeType"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpFilterModeType"
		"xpos"				"c-337" [$WIN32WIDE]
		"xpos"				"c-253" [!$WIN32WIDE]
		"ypos"				"398"
		"zpos"				"1"
		"wide"				"320"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"navUp"				"DrpFilterPlayers"
		"navDown"			"DrpFilterPlayers"
		
		// button and label
		"BtnDropButton"
		{
			"ControlName"	"L4D360HybridButton"
			"fieldName"		"BtnDropButton"
			"xpos"			"0"
			"ypos"			"0"
			"zpos"			"2"
			"wide"			"250"
			"wideatopen"	"200"
			"tall"			"15"
			"autoResize"	"1"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"tabPosition"	"0"
			"labelText"		"ТИП" [$RUSSIAN]
			"labelText"		"#L4D360UI_ModeSelect_Filter_ModeType" [!$RUSSIAN]
			"tooltiptext"	""
			"style"			"DropDownButton"
			"command"		"FlmFilterModeType"
			"allcaps"			"1"
		}
	}

	"FlmFilterModeType"
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmFilterModeType"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"4"
		"InitialFocus"		"BtnAny"
		"ResourceFile"		"resource/UI/L4D360UI/DropDownModeSelectFilterModeType.res"
	}
	
	"IconVisitWorkshop"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconVisitWorkshop"
		"xpos"					"c-226"
		"ypos"					"399"
		"wide"					"15"
		"tall"					"15"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_modwrench"
		"drawcolor"				"150 150 150 255"
		"scaleImage"			"1"
	}

	"BtnVisitWorkshop"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnVisitWorkshop"
		"xpos"					"c-211"
		"ypos"					"399"
		"zpos"					"2"
		"wide"					"250"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_ADDON_VISIT_WORKSHOP"	//"VIEW ON WORKSHOP"
		"style"					"RedButton"		// actually teal!
		"command"				"VisitWorkshop"
		"proportionalToParent"	"1"
		"usetitlesafe" 			"0"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"allcaps"				"1"
	}	

	"IconForwardArrow"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconForwardArrow"
		"xpos"					"c-358" [$WIN32WIDE]
		"xpos"					"c-274" [!$WIN32WIDE]
		"ypos"					"437"
		"wide"					"15"
		"tall"					"15"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"image"					"icon_button_arrow_right"
		//drawcolor_special_event_autoreplace
		"scaleImage"			"1"
	}
	
	"BtnSelect"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnSelect"
		"xpos"					"c-337" [$WIN32WIDE]
		"xpos"					"c-253" [!$WIN32WIDE]
		"ypos"					"437"
		"zpos"					"2"
		"wide"					"140"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"ВЫБРАТЬ" [$RUSSIAN]
		"labelText"				"#L4D360UI_AddonMode_Select" [!$RUSSIAN]
		"tooltiptext"			"#L4D360UI_AddonMode_Select_Tooltip"
		"style"					"MainMenuSmallButton"
		"command"				"Select"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"navUp"					"GplScriptedModes"
		"navDown"				"BtnCancel"
	}
	
	"IconBackArrow"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBackArrow"
		"xpos"					"c-358" [$WIN32WIDE]
		"xpos"					"c-274" [!$WIN32WIDE]
		"ypos"					"455"
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
		"xpos"					"c-337" [$WIN32WIDE]
		"xpos"					"c-253" [!$WIN32WIDE]
		"ypos"					"455"
		"zpos"					"1"
		"wide"					"250"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_Cancel"
		"tooltiptext"			"#L4D360UI_Tooltip_Back"
		"style"					"MainMenuSmallButton"
		"command"				"Back"
		"proportionalToParent"	"1"
		"usetitlesafe" 			"0"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"allcaps"				"1"
	}
}