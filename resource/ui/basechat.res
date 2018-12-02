"Resource/UI/BaseChat.res"
{
	"HudChat"
	{
		"ControlName"			"EditablePanel"
		"fieldName" 			"HudChat"
		"visible" 				"1"
		"enabled" 				"1"
		"xpos"					"5"
		"ypos"                  "285"
		"wide"	 				"280"
		"tall"	 				"120"
		"PaintBackgroundType"	"2"
		"usetitlesafe"			"1"
	}

	KeyStateLabel
	{
		"ControlName"		"Label"
		"fieldname"			"KeyStateLabel"
		"visible" 			"1"
		"enabled" 			"1"
		"xpos"				"10"
		"ypos"				"2"
		"wide"	 			"300"
		"tall"				"12"
		"textAlignment"		"north-west"
	}

	ChatInputLine
	{
		"ControlName"			"EditablePanel"
		"fieldName" 			"ChatInputLine"
		"visible" 				"1"
		"enabled" 				"1"
		"xpos"					"10"
		"ypos"					"395"
		"wide"	 				"260"
		"tall"	 				"2"
		"PaintBackgroundType"	"0"
	}

	"ChatFiltersButton"
	{
		"ControlName"		"Button"
		"fieldName"			"ChatFiltersButton"
		"xpos"				"225"
		"ypos"				"2"
		"wide"				"45"
		"tall"				"15"
		"autoResize"		"1"
		"pinCorner"			"0"
		"visible"			"0"
		"enabled"			"1"
		"tabPosition"		"0"
		"labelText"			"#chat_filterbutton"
		"textAlignment"		"center"
		"dulltext"			"0"
		"brighttext"		"0"
		"Default"			"0"		
	}

	"HudChatHistory"
	{
		"ControlName"		"RichText"
		"fieldName"			"HudChatHistory"
		"xpos"				"10"
		"ypos"				"17"
		"wide"	 			"260"
		"tall"				"75"
		"wrap"				"1"
		"autoResize"		"1"
		"pinCorner"			"1"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			""
		"textAlignment"		"south-west"
		"font"				"ChatFont"
		"maxchars"			"-1"
	}
}
