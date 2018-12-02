"resource/UI/DownloadCampaign.res"
{
	"DownloadCampaign"
	{
		"ControlName"	"Frame"
		"fieldName"		"DownloadCampaign"
		"xpos"			"c-200"	[!$FRENCH]
		"xpos"			"c-250"	[$FRENCH]
		"ypos"			"c-80"
		"wide"			"400"	[$ENGLISH || !$SPANISH && !$GERMAN && !$RUSSIAN && !$FRENCH]
		"wide"			"424"	[$GERMAN || $RUSSIAN]
		"wide"			"460"	[$SPANISH]
		"wide"			"500"	[$FRENCH]
		"tall"          "210"	[$ENGLISH || $SPANISH || !$GERMAN && !$RUSSIAN]
		"tall"          "240"	[$GERMAN || $RUSSIAN]
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
	}

	"LblDownloadTitle"
	{
		"ControlName"	"Label"
		"fieldName"		"LblDownloadTitle"
		"xpos"			"-46"		[$ENGLISH || !$SPANISH && !$GERMAN && !$RUSSIAN && !$FRENCH]
		"xpos"			"0"		[$FRENCH]
		"xpos"			"-20"		[$SPANISH]
		"xpos"			"-38"		[$GERMAN || $RUSSIAN]
		"ypos"			"6"
		"zpos"			"2"
		"wide"			"500"
		"tall"			"20"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"#L4D360UI_DownloadCampaign_Title"
		"textAlignment"	"center"
		"font"			"Default"
		"fgcolor_override"	"139 139 139 255"
	}

	"LblDownloadCampaign"
	{
		"ControlName"	"Label"
		"fieldName"		"LblDownloadCampaign"
		"xpos"			"3"	[$ENGLISH || !$SPANISH && !$GERMAN && !$RUSSIAN && !$FRENCH]
		"xpos"			"12"		[$GERMAN || $RUSSIAN]
		"xpos"			"3"	[$FRENCH]
		"xpos"			"33"	[$SPANISH]
		"ypos"			"27"
		"zpos"			"2"
		"wide"			"394"	[$ENGLISH || $SPANISH || !$GERMAN && !$RUSSIAN !$FRENCH]
		"wide"			"420"	[$GERMAN || $RUSSIAN]
		"wide"			"494"	[$FRENCH]
		"tall"			"20"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"#L4D360UI_DownloadCampaign_Campaign"
		"textAlignment"	"center"
		"fgcolor_override"	"255 255 255 255"
		"font"				"DefaultLarge"
	}

	"LblDownloadText"
	{
		"ControlName"	"Label"
		"fieldName"		"LblDownloadText"
		"xpos"			"22"	[$ENGLISH]
		"xpos"			"38"	[$GERMAN || $RUSSIAN]
		"xpos"			"22"	[!$FRENCH && !$ITALIAN && !$SPANISH]
		"xpos"			"60"	[$SPANISH]
		"xpos"			"26"	[$ITALIAN]
		"xpos"			"10"	[$FRENCH]
		//
		//"xpos"			"38"
		"ypos"			"30"	[$ENGLISH || $GERMAN || $FRENCH || $ITALIAN || $SPANISH || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"ypos"			"60"	[$RUSSIAN]
		"ypos"			"30"	[$TURKISH]
		"ypos"			"40"
		"zpos"			"2"
		"wide"			"360"	[!$FRENCH]
		"wide"			"490"	[$FRENCH]
		"tall"			"120"	[$ENGLISH || $SPANISH || !$GERMAN && !$RUSSIAN]
		"tall"			"160"	[$GERMAN || $RUSSIAN]
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"#L4D360UI_DownloadCampaign_Text"
	//	"Font"			"DefaultMedium"// [$GERMAN || $RUSSIAN || $FRENCH || ]
	//	"Font"			"DefaultMedium" [$ENGLISH || $GERMAN || $RUSSIAN || $FRENCH || $ITALIAN || $SPANISH]
	//	"Font"			"DefaultMedium" [$JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"Font"			"DefaultVerySmall"
		"textAlignment"	"center"
		"fgcolor_override"	"Label.DisabledFgColor1"
		"wrap"          "1"		
	}

//	"CheckBtnWarning"
//	{
//		"ControlName"	"CvarToggleCheckButton_GameUI"
//		"fieldName"		"CheckBtnWarning"
//		"xpos"			"20"
//		"ypos"			"130"
//		"zpos"			"2"
//		"wide"			"14"
//		"tall"			"14"
//		"autoResize"	"0"
//		"pinCorner"		"0"
//		"visible"		"1"
//		"enabled"		"1"
//		"tabPosition"	"2"
//		"textAlignment"	"west"
//		"dulltext"		"0"
//		"brighttext"	"0"
//		"wrap"			"0"
//		"Default"		"0"
//	}
//
//	"LblWarning"
//	{
//		"ControlName"	"Label"
//		"fieldName"		"LblWarning"
//		"xpos"			"40"
//		"ypos"			"130"
//		"zpos"			"2"
//		"wide"			"360"
//		"tall"			"30"
//		"autoResize"	"0"
//		"pinCorner"		"0"
//		"visible"		"1"
//		"enabled"		"1"
//		"tabPosition"	"0"
//		"labelText"		"#L4D360UI_DownloadCampaign_Warning"
//		"textAlignment"	"west"
//		"wrap"          "1"
//	}

	"LblDownloadSite"
	{
		"ControlName"	"Label"
		"fieldName"		"LblDownloadSite"
		"xpos"			"3"	[$ENGLISH]
		"xpos"			"3"	[!$SPANISH && !$ITALIAN && !$GERMAN && !$RUSSIAN && !$FRENCH]
		"xpos"			"0"		[$GERMAN || $RUSSIAN]
		"xpos"			"48"	[$FRENCH]
		"xpos"			"3"		[$ITALIAN]
		"xpos"			"3"		[$SPANISH]
		"ypos"			"145"	[$ENGLISH || $SPANISH || !$GERMAN && !$RUSSIAN]
		"ypos"			"175"	[$GERMAN]
		"ypos"			"160"	[$RUSSIAN]
		"zpos"			"2"
		"wide"			"394"	[$ENGLISH || !$SPANISH && !$GERMAN && !$RUSSIAN]
		"wide"			"454"	[$SPANISH]
		"wide"			"420"	[$GERMAN || $RUSSIAN]
		"tall"			"15"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"#L4D360UI_DownloadCampaign_Site"
		"textAlignment"	"center"
		"fgcolor_override"	"120 140 120 255"
	}

	"BtnURL"
	{
		"ControlName"		"L4D360HybridButton"
		"fieldName"			"BtnURL"
		"xpos"				"3"	[!$SPANISH && !$FRENCH && !$GERMAN && !$RUSSIAN]
		"xpos"				"3"		[$FRENCH || $GERMAN || $SPANISH]
		"xpos"				"13"		[$RUSSIAN]
	//	"xpos"				"-20"	[$FRENCH]
		"ypos"				"160"	[$ENGLISH || $SPANISH || !$GERMAN && !$RUSSIAN]
		"ypos"				"194"	[$GERMAN]
		"ypos"				"180"	[$RUSSIAN]
		"zpos"				"3"
		"wide"				"394"	[$ENGLISH || $RUSSIAN|| !$SPANISH && !$GERMAN && !$FRENCH]
		"wide"				"420"	[$GERMAN]
		"wide"				"494"	[$FRENCH]
		"wide"				"454"	[$SPANISH]
		"tall"				"16"
		"tall"				"16"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"labelText"			""
		"textAlignment"		"center"
		"style"		   		"DialogButton"
		"navUp"				"BtnBack"
		"navDown"			"BtnBack"
		"command"			"Continue"
	}


	"BtnBack"
	{
		"ControlName"		"L4D360HybridButton"
		"fieldName"			"BtnBack"
		"xpos"				"172" [$ENGLISH]
		"xpos"				"140" [!$ENGLISH && !$GERMAN && !$RUSSIAN && !$SPANISH && !$FRENCH && !$ITALIAN]
		"xpos"				"158" [$ITALIAN]
		"xpos"				"208" [$FRENCH]
		"xpos"				"195" [$SPANISH]
		"xpos"				"170" [$GERMAN || $RUSSIAN]
		"ypos"				"185" [$ENGLISH || $SPANISH || !$GERMAN && !$RUSSIAN]
		"ypos"				"215" [$GERMAN]
		"ypos"				"210" [$RUSSIAN]
		"zpos"				"2"
		"wide"				"54" [$ENGLISH]
		"wide"				"64" [$SPANISH]
		"wide"				"78" [$GERMAN || $RUSSIAN || $FRENCH]
		"wide"				"82" [$ITALIAN]
		"wide"				"120"  [!$ENGLISH && !$GERMAN && !$RUSSIAN && !$SPANISH && !$FRENCH && !$ITALIAN]
		"tall"				"16"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"AllCaps"			"1"
		"labelText"			"#L4D360UI_DownloadCampaign_Back"
		"textAlignment"		"center"
		"style"		   		"DialogButton"
		"navUp"				"BtnURL"
		"navDown"			"BtnURL"
		"command"			"Back"
	}

}