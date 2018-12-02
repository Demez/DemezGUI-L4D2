"resource/UI/DropDownMission.res"
{
	"FlyoutMenuSettings"
	{
		"noblindnavigation"		"1"
	}

	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"-1"
		"wide"					"156" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wide"					"190" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"tall"					"245" [$X360]
		"tall"					"285" [$WIN32]
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}

	"BtnCampaign1"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign1"
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
		"navUp"					"BtnCampaignCustom"
		"navDown"				"BtnCampaign6"
		"labelText"				"#L4D360UI_CampaignName_C1"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C1"
	}	

	"BtnCampaign6"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign6"
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
		"navUp"					"BtnCampaign1"
		"navDown"				"BtnCampaign2"
		"labelText"				"#L4D360UI_CampaignName_C6" [!($X360 && !$DLC1_INSTALLED)]
		"labelText"				"#L4D360UI_CampaignName_C6_DLC" [$X360 && !$DLC1_INSTALLED]
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C6"
	}	

	"BtnCampaign2"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign2"
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
		"navUp"					"BtnCampaign6"
		"navDown"				"BtnCampaign3"
		"labelText"				"#L4D360UI_CampaignName_C2"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C2"
	}	

	"BtnCampaign3"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign3"
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
		"navUp"					"BtnCampaign2"
		"navDown"				"BtnCampaign4"
		"labelText"				"#L4D360UI_CampaignName_C3"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C3"
	}	

	"BtnCampaign4"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign4"
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
		"navUp"					"BtnCampaign3"
		"navDown"				"BtnCampaign5"
		"labelText"				"#L4D360UI_CampaignName_C4"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C4"
	}	

	"BtnCampaign5"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign5"
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
		"navUp"					"BtnCampaign4"
		"navDown"				"BtnCampaign7"
		"labelText"				"#L4D360UI_CampaignName_C5"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C5"
	}	

	"BtnCampaign7"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign7"
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
		"navUp"					"BtnCampaign5"
		"navDown"				"BtnCampaign8"
		"labelText"				"#L4D360UI_CampaignName_C7" [!($X360 && !$DLC2_INSTALLED)]
		"labelText"				"#L4D360UI_CampaignName_C7_DLC" [$X360 && !$DLC2_INSTALLED]
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C7"
	}	

	"BtnCampaign8"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign8"
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
		"navUp"					"BtnCampaign7"
		"navDown"				"BtnCampaign9"
		"labelText"				"#L4D360UI_CampaignName_C8" [!($X360 && !$DLC2_INSTALLED)]
		"labelText"				"#L4D360UI_CampaignName_C8_DLC" [$X360 && !$DLC2_INSTALLED]
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C8"
	}	

	"BtnCampaign9"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign9"
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
		"navUp"					"BtnCampaign8"
		"navDown"				"BtnCampaign10"
		"labelText"				"#L4D360UI_CampaignName_C9" [!($X360 && !$DLC3_INSTALLED)]
		"labelText"				"#L4D360UI_CampaignName_C9_DLC" [$X360 && !$DLC3_INSTALLED]
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C9"
	}
	
	"BtnCampaign10"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign10"
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
		"navUp"					"BtnCampaign9"
		"navDown"				"BtnCampaign11"
		"labelText"				"#L4D360UI_CampaignName_C10" [!($X360 && !$DLC3_INSTALLED)]
		"labelText"				"#L4D360UI_CampaignName_C10_DLC" [$X360 && !$DLC3_INSTALLED]
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C10"
	}	
	
	"BtnCampaign11"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign11"
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
		"navUp"					"BtnCampaign10"
		"navDown"				"BtnCampaign12"
		"labelText"				"#L4D360UI_CampaignName_C11" [!($X360 && !$DLC3_INSTALLED)]
		"labelText"				"#L4D360UI_CampaignName_C11_DLC" [$X360 && !$DLC3_INSTALLED]
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C11"
	}	

	"BtnCampaign12"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign12"
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
		"navUp"					"BtnCampaign11"
		"navDown"				"BtnCampaign13"
		"labelText"				"#L4D360UI_CampaignName_C12" [!($X360 && !$DLC3_INSTALLED)]
		"labelText"				"#L4D360UI_CampaignName_C12_DLC" [$X360 && !$DLC3_INSTALLED]
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C12"
	}

	"BtnCampaign13"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaign13"
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
		"navUp"					"BtnCampaign12"
		"navDown"				"BtnCampaignCustom"
		"labelText"				"#L4D360UI_CampaignName_C13" [!($X360 && !$DLC3_INSTALLED)]
		"labelText"				"#L4D360UI_CampaignName_C13_DLC" [$X360 && !$DLC3_INSTALLED]
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_campaign_L4D2C13"
	}	

	"BtnCampaignCustom"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnCampaignCustom"
		"xpos"					"0"
		"ypos"					"260"
		"wide"					"150"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1" [$WIN32]
		"visible"				"0" [$X360]
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnCampaign13"
		"navDown"				"BtnCampaign1"
		"labelText"				"#L4D360UI_Campaign_Custom"
		"tooltiptext"			""
		"disabled_tooltiptext"	""
		"style"					"FlyoutMenuButton"
		"command"				"cmd_addoncampaign"
	}	
}