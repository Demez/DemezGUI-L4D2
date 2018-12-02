"Resource/UI/ZombiePanel.res"
{
	"TooFarFromSurvivors"
	{
		"ControlName"	"EditablePanel"
		"fieldName"		"TooFarFromSurvivors"
		"xpos"			"102"
		"ypos"			"35"
		"zpos"			"1"
		"wide"			"175"
		"tall"			"80"
		"visible"		"0"
		"enabled"		"1"
		
		"BackgroundFillup"
		{
			"ControlName"			"EditablePanel"
			"fieldName"				"BackgroundFillup"
			"xpos"					"0"
			"ypos"					"0"
			"wide"					"175"
			"tall"					"80"
			"zpos"					"-1"
			"autoResize"			"0"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"PaintBackgroundType"	"2"
			"bgcolor_override"		"0 0 0 150"
		}
		
		"ClassBackground"
		{
			"ControlName"			"EditablePanel"
			"fieldName"				"ClassBackground"
			"xpos"					"5"
			"ypos"					"5"
			"wide"					"165"
			"tall"					"70"
			"zpos"					"0"
			"autoResize"			"0"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"PaintBackgroundType"	"2"
			"bgcolor_override"		"10 10 10 220"
		}
		
		"TooFarTitle"
		{
			"ControlName"		"Label"
			"fieldName"			"TooFarTitle"
			"xpos"				"10"
			"ypos"				"10"
			"zpos"				"1"
			"wide"				"155"
			"tall"				"36"
			"visible"			"1"
			"enabled"			"1"
			"textAlignment"		"west"	
			"labelText"			"#L4D_Zombie_UI_Too_Far"
			"font"				"FrameTitle"
			"fgcolor_override"	"192 192 192 255"
			"wrap"				"1"
		}
		
		"TooFarText"
		{
			"ControlName"		"Label"
			"fieldName"			"TooFarText"
			"xpos"				"38"
			"ypos"				"46"
			"zpos"				"1"
			"wide"				"130"
			"tall"				"25"
			"visible"			"1"
			"enabled"			"1"
			"textAlignment"		"west"	
			"labelText"			"#L4D_Zombie_UI_To_Be_Moved"
			"font"				"DefaultMedium"
			"fgcolor_override"	"255 255 255 255"
			"wrap"				"1"
		}
		
		"SurvivorsImage"
		{
			"ControlName"	"CIconPanel"
			"fieldName"		"SurvivorsImage"
			"visible"		"0"
		}

		"UseBind"
		{
			"ControlName"	"CBindPanel"
			"fieldName"		"UseBind"
			"xpos"			"10"
			"ypos"			"46"
			"zpos"			"2"
			"visible"		"1"
			"enabled"		"1"
		}

		"BackgroundImage"
		{
			"ControlName"	"ScalableImagePanel"
			"fieldName"		"BackgroundImage"		
			"visible"		"0"
	    }
		
		"BackgroundFill"
		{
			"ControlName"	"EditablePanel"
			"fieldName"		"BackgroundFill"		
			"visible"		"0"
			"wide"			"0"
			"tall"			"0"
	    }

		"Splatter1"
	    {
			"ControlName"	"ImagePanel"
			"fieldName"		"Splatter1"
			"visible"		"0"
	    }
    	
	    "Splatter3"
	    {
			"ControlName"	"ImagePanel"
			"fieldName"		"Splatter3"
			"visible"		"0"
	    }
    	
	    "Splatter4"
	    {
			"ControlName"	"ImagePanel"
			"fieldName"		"Splatter4"
			"visible"		"0"
	    }
    		
	    "Splatter6"
	    {
			"ControlName"	"ImagePanel"
			"fieldName"		"Splatter6"
			"visible"		"0"
	    }
	}
	
	"TankTakeover"
	{
		"ControlName"	"EditablePanel"
		"fieldName"		"TankTakeover"
		"xpos"			"65"
		"ypos"			"35"
		"zpos"			"1"
		"wide"			"250"
		"tall"			"80"
		"visible"		"0"
		"enabled"		"1"

		"BackgroundFillup"
		{
			"ControlName"			"EditablePanel"
			"fieldName"				"BackgroundFillup"
			"xpos"					"0"
			"ypos"					"0"
			"wide"					"250"
			"tall"					"80"
			"zpos"					"-1"
			"autoResize"			"0"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"PaintBackgroundType"	"2"
			"bgcolor_override"		"0 0 0 150"
		}
		
		"ClassBackground"
		{
			"ControlName"			"EditablePanel"
			"fieldName"				"ClassBackground"
			"xpos"					"80"
			"ypos"					"5"
			"wide"					"165"
			"tall"					"70"
			"zpos"					"0"
			"autoResize"			"0"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"PaintBackgroundType"	"2"
			"bgcolor_override"		"10 10 10 220"
		}

		"TankImage"
		{
			"ControlName"	"CIconPanel"
			"fieldName"		"TankImage"
			"xpos"			"5"
			"ypos"			"5"
			"zpos"			"1"
			"wide"			"70"
			"tall"			"70"
			"visible"		"1"
			"enabled"		"1"
			"scaleImage"	"1"
			"icon"			"tip_tank"
		}

		"Title"
		{
			"ControlName"		"Label"
			"fieldName"			"Title"
			"xpos"				"85"
			"ypos"				"10"
			"zpos"				"1"
			"wide"				"155"
			"tall"				"36"
			"visible"			"1"
			"enabled"			"1"
			"textAlignment"		"west"	
			"labelText"			"%tanktitle%"
			"font"				"FrameTitle"
			"fgcolor_override"	"192 192 192 255"
			"wrap"				"1"
		}

		"Text"
		{
			"ControlName"		"Label"
			"fieldName"			"Text"
			"xpos"				"85"
			"ypos"				"46"
			"zpos"				"1"
			"wide"				"150"
			"tall"				"25"
			"visible"			"1"
			"enabled"			"1"
			"textAlignment"		"west"	
			"labelText"			"%tanktext%"
			"font"				"DefaultMedium"
			"fgcolor_override"	"192 192 192 255"
			"wrap"				"1"
		}

		"BackgroundImage"
		{
			"ControlName"	"ScalableImagePanel"
			"fieldName"		"BackgroundImage"		
			"visible"		"0"
	    }

		"Splatter1"
	    {
			"ControlName"	"ImagePanel"
			"fieldName"		"Splatter1"
			"visible"		"0"
	    }
    	
	    "Splatter3"
	    {
			"ControlName"	"ImagePanel"
			"fieldName"		"Splatter3"
			"visible"		"0"
	    }
    	
	    "Splatter4"
	    {
			"ControlName"	"ImagePanel"
			"fieldName"		"Splatter4"
			"visible"		"0"
	    }
    		
	    "Splatter6"
	    {
			"ControlName"	"ImagePanel"
			"fieldName"		"Splatter6"
			"visible"		"0"
	    }

		"BackgroundFill"
		{
			"ControlName"	"EditablePanel"
			"fieldName"		"BackgroundFill"		
			"visible"		"0"
			"wide"			"0"
			"tall"			"0"
	    }
	}
}