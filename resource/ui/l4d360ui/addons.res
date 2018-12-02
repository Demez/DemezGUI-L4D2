"Resource/UI/Addons.res"
{
	"Addons"
	{
		"ControlName"		"Frame"
		"fieldName"		"Addons"
		
		"xpos"			"0"		
		"ypos"			"0"		
		"wide"			"f0"	
		"tall"			"f0"	
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
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
	"GplAddons"
	{
		"ControlName"			"GenericPanelList"
		"fieldName"				"GplAddons"
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
		"tabPosition"			"0"
		"panelBorder"			"0"//Urik: removed that buggy annoying gap
		"bgcolor_override" 				"0 0 0 0"
		"navLeft"				"BtnCancel"
		"navRight"				"DrpFilterTags"
		"NoWrap"				"1"
		"panelBorder"			"2" 
	}	

	"LblNoAddonsFiltered"
	{
		"ControlName"		"Label"
		"fieldName"			"LblNoAddonsFiltered"
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
		"labelText"			"#L4D360UI_No_Addons_Filtered"
	}

	"LblNoAddons"
	{
		"ControlName"		"Label"
		"fieldName"			"LblNoAddons"
		"xpos"				"c-268"
		"ypos"				"95"
		"wide"				"640"
		"tall"				"18" 
		"zpos"				"5"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"				"DefaultLarge"
		"textAlignment"		"north-west"
		//"labeltext"			"check one two"
		//"fgcolor_override"	"150 150 150 150"
	}
		
	"IconFilters"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconFilters"
		"xpos"					"c-358"	[$WIN32WIDE]
		"ypos"					"365"	[$WIN32WIDE]
		"xpos"					"c-274"	[!$WIN32WIDE]
		"ypos"					"365"	[!$WIN32WIDE]
		"wide"					"14"
		"tall"					"14"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_filter"
		"scaleImage"			"1"
		//drawcolor_special_event_autoreplace
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
		"labelText"					"Фильтры" [$RUSSIAN]
		"labelText"					"#L4D360UI_Addons_Filter_Label" [!$RUSSIAN]
		"textAlignment"				"north-west"
		"Font"						"DefaultMedium"
		"fgcolor_override"			"64 64 64 255"
		"AllCaps"					"1"
	}

	"DrpFilterTags"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpFilterTags"
		"xpos"					"c-337" [$WIN32WIDE]
		"xpos"					"c-253" [!$WIN32WIDE]
		"ypos"					"380"
		"zpos"					"1"
		"wide"					"320"
		"tall"					"15"
		"visible"				"1"
		"enabled"				"1"
		"navUp"					"DrpFilterTags"
		"navDown"				"DrpFilterTags"
		
		// button and label
		"BtnDropButton"
		{
			"ControlName"		"L4D360HybridButton"
			"fieldName"			"BtnDropButton"
			"xpos"				"0"
			"ypos"				"0"
			"zpos"				"2"
			"wide"				"220"
			"wideatopen"		"200"
			"tall"				"15"
			"autoResize"		"1"
			"pinCorner"			"0"
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"labelText"			"ТЭГИ" [$RUSSIAN]
			"labelText"			"#L4D360UI_Addons_Filter_Tags" [!$RUSSIAN]
			"tooltiptext"		""
			"style"				"DropDownButton"
			"command"			"FlmFilterTags"
			"allcaps"			"1"
		}
	}

	"FlmFilterTags"
	{
		"ControlName"		"FlyoutMenu"
		"fieldName"			"FlmFilterTags"
		"visible"			"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"4"
		"InitialFocus"		"BtnAny"
		"ResourceFile"		"resource/UI/L4D360UI/DropDownAddonsFilterTags.res"
	}

	"AddonSupportRequiredPanel"
	{
		"ControlName"		"EditablePanel"
		"fieldName"			"AddonSupportRequiredPanel"
		"xpos"				"c-180"
		"ypos"				"140"
		"wide"				"400"
		"tall"				"200" 
		"zpos"				"2"
		"visible"			"0"
		"enabled"			"1"
		
		"Icon"
		{
			"ControlName"			"ImagePanel"
			"fieldName"				"Icon"
			"xpos"					"8"	
			"ypos"					"12"
			"zpos"					"1"
			"wide"					"32"
			"tall"					"32"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"0"
			"scaleImage"			"1"
			"image"					"icon_download"	
			"drawcolor"				"150 150 150 255"
		}
		
		"LblSupportRequired"
		{
			"ControlName"		"Label"
			"fieldName"			"LblInstalling"
			"xpos"				"50"
			"ypos"				"20"
			"wide"				"300"
			"tall"				"18" 
			"zpos"				"1"
			"autoResize"		"0"
			"pinCorner"			"0"
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"font"				"DefaultLarge"
			"textAlignment"		"west"
			"labelText"			"#L4D360UI_ADDON_SUPPORT_REQUIRED"	//ADD-ON SUPPORT REQUIRED
		}
		
		"LblSupportRequiredDetails"
		{
			"ControlName"		"Label"
			"fieldName"			"LblSupportRequiredDetails"
			"xpos"				"50"
			"ypos"				"44"
			"wide"				"330"
			"tall"				"100" 
			"zpos"				"1"
			"autoResize"		"0"
			"pinCorner"			"0"
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"font"				"DefaultMedium"
			"textAlignment"		"west"
			"labelText"			"#L4D360UI_ADDON_SUPPORT_REQUIRED_DETAILS"	//"Left 4 Dead 2 requires an additional support package to run third-party add-ons. You can install it from the Tools tab in Steam or by clicking the link below."
			"fgcolor_override"			"MediumGray"
			"wrap"				"1"
		}			
	}
		
	"InstallingAddonSupportPanel"
	{
		"ControlName"		"EditablePanel"
		"fieldName"			"InstallingAddonSupportPanel"
		"xpos"				"c-180"
		"ypos"				"190"
		"wide"				"300"
		"tall"				"50" 
		"zpos"				"2"
		"visible"			"0"
		"enabled"			"1"
		
		"SearchingIcon"
		{
			"ControlName"			"ImagePanel"
			"fieldName"				"SearchingIcon"
			"xpos"					"0"	
			"ypos"					"0"
			"zpos"					"1"
			"wide"					"32"
			"tall"					"32"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"0"
			"scaleImage"			"1"
			"image"					"common/l4d_spinner"
		}
			
		"LblInstalling"
		{
			"ControlName"		"Label"
			"fieldName"			"LblInstalling"
			"xpos"				"50"
			"ypos"				"0"
			"wide"				"300"
			"tall"				"18" 
			"zpos"				"1"
			"autoResize"		"0"
			"pinCorner"			"0"
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"font"				"DefaultLarge"
			"textAlignment"		"west"
			"labelText"			"#L4D360UI_ADDON_SUPPORT_INSTALLING"	//"INSTALLING ADD-ON SUPPORT..."
		}
		
		"LblInstallingDetails"
		{
			"ControlName"		"Label"
			"fieldName"			"LblInstallingDetails"
			"xpos"				"50"
			"ypos"				"0"
			"wide"				"200"
			"tall"				"50" 
			"zpos"				"1"
			"autoResize"		"0"
			"pinCorner"			"0"
			"visible"			"1"
			"enabled"			"1"
			"tabPosition"		"0"
			"font"				"DefaultVerySmall"
			"textAlignment"		"west"
			"labelText"			"#L4D360UI_ADDON_SUPPORT_INSTALLING_DETAILS"	//"Check download progress in the Steam Tools tab."
			"fgcolor_override"			"MediumGray"
		}	
	}

	"CheckButtonAssociation"
	{
		"ControlName"		"CvarToggleCheckButton_GameUI"
		"fieldName"		"CheckButtonAssociation"
		"xpos"			"c-140"
		"ypos"			"300"
		"zpos"			"1"
		"wide"			"14"
		"tall"			"14"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"textAlignment"		"west"
		"dulltext"		"0"
		"brighttext"		"0"
		"wrap"			"0"
		"Default"		"0"
	}

	"LblCheckNoAssociation"
	{
		"ControlName"		"Label"
		"fieldName"		"LblCheckNoAssociation"
		"xpos"			"c-120"
		"ypos"			"300"
		"zpos"			"1"
		"wide"			"345"
		"tall"			"14"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"labelText"		"#L4D360UI_Addon_DoNotAssociate"
		"textAlignment"		"west"
		"font"			"DefaultVerySmall"
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
		"tall"				"34" 	[!$WIN32WIDE]
		"zpos"				"1"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"font"				"BlogPostText"
		"textAlignment"		"center"	[$WIN32WIDE]
		"centerwrap"				"1"	[$WIN32WIDE]
		"textAlignment"		"center"	[!$WIN32WIDE]
		"centerwrap"				"1"	[!$WIN32WIDE]
		"fgcolor_override"	"255 255 255 255"
		//"bgcolor_override"	"0 0 255 50"
	}

	// "IconVPKdescription"
	// {
		// "ControlName"			"ImagePanel"
		// "fieldName"				"IconVPKdescription"
		// "xpos"					"c-155"
		// "ypos"					"436"
		// "wide"					"11"
		// "tall"					"11"
		// "scaleImage"			"1"
		// "pinCorner"				"0"
		// "visible"				"1"
		// "enabled"				"1"
		// "tabPosition"			"0"
		// "image"					"icon_vpkdescription"
		// "frame"					"0"
	// }
	
	// "IconVPKauthor"
	// {
		// "ControlName"			"ImagePanel"
		// "fieldName"				"IconVPKauthor"
		// "xpos"					"c100"	[$WIN32WIDE]
		// "ypos"					"180"	[$WIN32WIDE]
		// "xpos"					"c70"	[!$WIN32WIDE]
		// "ypos"					"180"	[!$WIN32WIDE]
		// "wide"					"11"
		// "tall"					"11"
		// "scaleImage"			"1"
		// "pinCorner"				"0"
		// "visible"				"1"
		// "enabled"				"1"
		// "tabPosition"			"0"
		// "image"					"icon_vpkauthor"
		// "frame"					"0"
	// }
	
	"LblAuthor"
	{
		"ControlName"		"Label"
		"fieldName"			"LblAuthor"
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
		"font"			"DefaultVerySmall"
		"textAlignment"		"west"
		"wrap"				"0"
		"dulltext"			"1"		
		//"bgcolor_override"	"0 0 255 50"
	}
	
	// "IconVPKContent"
	// {
		// "ControlName"			"ImagePanel"
		// "fieldName"				"IconVPKContent"
		// "xpos"					"c100"	[$WIN32WIDE]
		// "ypos"					"196"	[$WIN32WIDE]
		// "xpos"					"c70"	[!$WIN32WIDE]
		// "ypos"					"196"	[!$WIN32WIDE]
		// "wide"					"11"
		// "tall"					"11"
		// "scaleImage"			"1"
		// "pinCorner"				"0"
		// "visible"				"1"
		// "enabled"				"1"
		// "tabPosition"			"0"
		// "image"					"icon_vpkcontent"
		// "frame"					"0"
	// }
	
	"LblType"
	{
		"ControlName"		"Label"
		"fieldName"			"LblType"
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
		"font"			"DefaultVerySmall"
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
		"ypos"				"175"	[$WIN32WIDE]
		"wide"				"282"	[$WIN32WIDE]
		"tall"				"300" 	[$WIN32WIDE]
		"xpos"				"c70"	[!$WIN32WIDE]
		"ypos"				"214"	[!$WIN32WIDE]
		"zpos"				"1"
		"wide"				"228"	[!$WIN32WIDE]
		"tall"				"264" 	[!$WIN32WIDE]
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
	
	"ImgAddonIconOverlay"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgAddonIconOverlay"
		"image"					"workshop_overlay"
		"xpos"				"c100"	[$WIN32WIDE]
		"ypos"				"70"	[$WIN32WIDE]
		"xpos"				"c124"	[!$WIN32WIDE]
		"ypos"				"70"	[!$WIN32WIDE]
		"zpos"				"2"
		"wide"				"122"
		"tall"				"69"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"scaleImage"		"1"
	}	

	"IconInstallSupport"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconInstallSupport"
		"xpos"					"c-226"
		"ypos"					"415"
		"wide"					"15"
		"tall"					"15"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_download"
		"drawcolor"				"150 150 150 255"
		"scaleImage"			"1"
	}

	"BtnInstallSupport"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnInstallSupport"
		"xpos"					"c-211"
		"ypos"					"415"
		"zpos"					"2"
		"wide"					"250"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_ADDON_SUPPORT_INSTALL"	//"INSTALL ADD-ON SUPPORT"
		"style"					"RedButton"		// actually teal!
		"command"				"InstallSupport"
		"proportionalToParent"	"1"
		"usetitlesafe" 			"0"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"allcaps"				"1"
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
		"image"					"icon_button_done"
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
		"labelText"				"#L4D360UI_Done"
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

	"IconVisitWorkshop"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconVisitWorkshop"
		"xpos"					"c-360" [$WIN32WIDE]
		"xpos"					"c-276"	[!$WIN32WIDE]
		"ypos"					"402"
		"wide"					"22"
		"tall"					"22"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_view_workshop"
		"scaleImage"			"1"
		//drawcolor_special_event_autoreplace
	}

	"BtnVisitWorkshop"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnVisitWorkshop"
		"xpos"					"c-337" [$WIN32WIDE]
		"xpos"					"c-253" [!$WIN32WIDE]
		"ypos"					"405"
		"zpos"					"2"
		"wide"					"250"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"Смотреть в WORKSHOP" [$RUSSIAN]	//"VIEW ON WORKSHOP"
		"labelText"				"#L4D360UI_ADDON_VISIT_WORKSHOP" [!$RUSSIAN]	//"VIEW ON WORKSHOP"
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

	"IconBrowseWorkshop"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBrowseWorkshop"
		"xpos"					"c-360" [$WIN32WIDE]
		"xpos"					"c-276"	[!$WIN32WIDE]
		"ypos"					"427"
		"wide"					"20"
		"tall"					"20"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_browse_workshop"
		//drawcolor_special_event_autoreplace
		"scaleImage"			"1"
	}

	"BtnBrowseWorkshop"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnBrowseWorkshop"
		"xpos"					"c-337" [$WIN32WIDE]
		"xpos"					"c-253" [!$WIN32WIDE]
		"ypos"					"430"
		"zpos"					"2"
		"wide"					"250"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"Перейти в WORKSHOP" [$RUSSIAN]
		"labelText"				"#L4D360UI_ADDON_BROWSE_WORKSHOP" [!$RUSSIAN]
		"style"					"RedButton"		// actually teal!
		"command"				"BrowseWorkshop"
		"proportionalToParent"	"1"
		"usetitlesafe" 			"0"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"allcaps"				"1"
	}
	
	"ImgGlobalAddonIconSpinner"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgGlobalAddonIconSpinner"
		"xpos"				"24" [$WIN32 && !$WIN32WIDE]
		"xpos"				"48" [$WIN32 && $WIN32WIDE]
		"ypos"				"26"
		"zpos"				"10"
		"wide"				"32"
		"tall"				"32"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"1"
		"tabPosition"		"0"
		"scaleImage"		"1"
		"image"					"common/l4d_spinner"
	}	
}
