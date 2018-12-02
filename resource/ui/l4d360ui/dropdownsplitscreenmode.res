"Resource/UI/DropDownSplitScreenMode.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"-1"
		"wide"					"150"
		"tall"					"50"
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}
	"Background1"
	{
		"ControlName"		"EditablePanel"
		"fieldName"			"Background1"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"0"
		"wide"					"150"
		"tall"					"50"
		"visible"				"1"
		"enabled"				"1"
		"bgcolor_override"	"0 0 0 255"
		"PaintBackgroundType"	"1"
	}			
	"Mode_slider_guide0"
	{
		"ControlName"		"Label"
		"fieldName"		"Mode_slider_guide0"
		"xpos"			"10"
		"ypos"			"15"//tguidesypos
		"wide"			"58"
		"tall"			"8"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"			"west"
		"Font"					"defaultverysmall"
		"tabPosition"	"0"
		"labelText"				"Horizontal"
		"fgcolor_override"		"64 64 64 255"
		//"bgcolor_override"		"0 0 255 200"
		"zpos"					"1"
	}				
	"Mode_slider_guide4"
	{
		"ControlName"		"Label"
		"fieldName"		"Mode_slider_guide4"
		"xpos"			"100"
		"ypos"			"15"//tguidesypos
		"wide"			"58"
		"tall"			"8"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"textAlignment"			"west"
		"Font"					"defaultverysmall"
		"tabPosition"	"0"
		"labelText"				"Vertical"
		"fgcolor_override"		"64 64 64 255"
		//"bgcolor_override"		"0 0 255 200"
		"zpos"					"1"
	}				
	"SldMode"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldMode"
		"xpos"					"14"//sliderxpos
		"ypos"					"2"
		"zpos"					"5"
		"wide"					"90"//sliderwidth
		"tall"					"6"
		"visible"				"1"
		"enabled"				"1"
		"tabRate"			"0"
		"minValue"				"1"
		"maxValue"				"2.2"
		"stepSize"				"1.2"
		"conCommand"			"ss_splitmode"
		"inverseFill"			"0"
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"L4D360HybridButton"
			"fieldName"				"BtnDropButton"
			"visible"				"1"
			"enabled"				"1"
			"labeltext"				" "
			"style"					"smallbutton"
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
			"usablePlayerIndex"		"nobody"
		}
	}

}
