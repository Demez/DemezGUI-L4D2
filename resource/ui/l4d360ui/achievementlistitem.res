"resource/UI/AchievementListItem.res"
{
	"AchievementListItem"
	{
		"ControlName"		"Frame"
		"fieldName"		"AchievementListItem"

		"tall"			"30"	[$JAPANESE || $KOREAN || $KOREANA || $TCHINESE]
		"tall"			"30"	[!$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
		"tall"			"36"	[$SCHINESE]
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"usetitlesafe"	"1"
		
		"DetailsExtraHeight"	"0"
		"DetailsRowHeight"	"18"
		"leftFadeWidth"					"100"
		"rightFadeWidth"				"50"
		"bgcolor_override" 				"128 128 128 2"
	}

	"LblName"
	{
		"ControlName"	"Label"
		"fieldName"		"LblName"
		"xpos"			"42"
		"ypos"			"0"  		//was2

		"wide"			"265"
		"tall"			"24" 
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"textAlignment"	"north-west"
		"Font"			"DefaultVerySmall" 


	}

	"LblProgress"
	{
		"ControlName"	"Label"
		"fieldName"		"LblProgress"
		"xpos"			"230"
		"ypos"			"0"
		"wide"			"100"
		"tall"			"10"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"	"0"
	}

	"DivTitleDivider"
	{
		"ControlName"	"Label"
		"fieldName"		"DivTitleDivider"
		"xpos"			"2"
		"ypos"			"24"
		"autoResize"	"1"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"	"0"
	}

	"ImgAchievementIcon"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"ImgAchievementIcon"
		"xpos"				"1"
		"ypos"				"2"
		"tall"			"20"	[$JAPANESE || $KOREAN || $KOREANA || $TCHINESE]
		"tall"			"26"	[!$JAPANESE && !$KOREAN && !$KOREANA && !$TCHINESE]
		"wide"			"20"	[$JAPANESE || $KOREAN || $KOREANA || $TCHINESE]
		"wide"			"26"	[!$JAPANESE && !$KOREAN && !$KOREANA && !$TCHINESE]
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
	}

	"LblHowTo"
	{
		"ControlName"	"Label"
		"fieldName"		"LblHowTo"
		"xpos"			"42"
		"ypos"			"13"		//was 16



		"wide"			"386"	

		"tall"			"28"	
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"wrap"			"1"
		"textAlignment"	"north-west"
		"font"			"DefaultVerySmall" 

		"fgcolor_override"	"128 128 128 255"
	}

	"PrgProgress"
	{
		"ControlName"	"ProgressBar"
		"fieldName"		"PrgProgress"
		"xpos"			"325"
		"ypos"			"3"		//was 4


		"wide"			"100"
		"tall"			"8"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
	}

	"LblCurrProgress"
	{
		"ControlName"	"Label"
		"fieldName"		"LblCurrProgress"
		"xpos"			"220"


		"wide"			"100"
		"tall"			"24"	
		"ypos"			"1"		
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"textAlignment"	"north-east"
		"font"			"DefaultVerySmall" 
	}

	"LblGamerScore"
	{
		"ControlName"	"Label"
		"fieldName"		"LblName"
		"xpos"			"430"
		"ypos"			"0"
		"wide"			"50"
		"tall"			"24" 
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"textAlignment"	"north-east"
		"font"			"DefaultLarge"
	}
	
	"BtnDetails" 
	{
		"ControlName"	"Button"
		"fieldName"		"BtnDetails"		
		"xpos"			"24"	[$JAPANESE || $KOREAN || $KOREANA || $TCHINESE]
		"xpos"			"28"	[!$JAPANESE && !$KOREAN && !$KOREANA && !$TCHINESE]
		"ypos"			"17"//was 45
		"zpos"			"2"
		"wide"			"10"
		"tall"			"10"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"tabPosition"	"0"
		"labelText"		"+"
		"command"		"toggle_details"
		"font"			"DefaultVerySmall"
		"textAlignment"	"south"	
	}
		
	"ComponentTemplateLeft"
	{
		"ControlName"	"Label"
		"fieldName"		"ComponentTemplateLeft"
		"xpos"			"65"
		"ypos"			"20"	//was 55
		"wide"			"265"
		"tall"			"16"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"0"
		"tabPosition"	"0"
		"Font"			"DefaultVerySmall"
		"textAlignment"	"north-west"	
	}
	
	"ComponentTemplateRight"
	{
		"ControlName"	"Label"
		"fieldName"		"ComponentTemplateRight"
		"xpos"			"245"
		"ypos"			"20"	//was 55
		"wide"			"265"
		"tall"			"16"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"0"
		"tabPosition"	"0"
		"Font"			"DefaultVerySmall"
		"textAlignment"	"north-west"	
	}
	
	"CheckmarkTemplateLeft"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"CheckmarkTemplateLeft"
		"xpos"				"50"
		"ypos"				"20"	//was 55
		"wide"				"12"
		"tall"				"12"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"1"
		"tabPosition"		"0"
		"image"				"hud/vote_yes"
		"scaleImage"		"1"
	}	
	
	"CheckmarkTemplateRight"
	{
		"ControlName"		"ImagePanel"
		"fieldName"			"CheckmarkTemplateRight"
		"xpos"				"230"
		"ypos"				"20"	//was 55
		"wide"				"12"
		"tall"				"12"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"1"
		"tabPosition"		"0"
		"image"				"hud/vote_yes"
		"scaleImage"		"1"
	}	
}