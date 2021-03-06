"resource/UI/MainMenu.res"
// Urik: 16x10 16x9 & non-wide ready
// This mod should support tripple-monitor 48:9 & 48:10 modes, but not fully tested.
// This does still technically contain Rayman's Mutation Mod flyouts/menumodes here because it doesn't hurt to have em
{
	"MainMenu"
	{
		"ControlName"			"Frame"
		"fieldName"				"MainMenu"
		"xpos"					"0"		//was 0
		"ypos"					"0"
		"wide"					"f0"		//was "f0"
		"tall"					"f0"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"PaintBackgroundType"	"0"
	}
	"BtnGameModes"
	{
		"ControlName"			"GameModes"
		"fieldName"				"BtnGameModes"
		"tabPosition"			"1"
		"navUp"					"PnlQuickJoinGroups"		
		"navDown"				"BtnToggleConsole"
		"xpos"					"c-456"	[$WIN32WIDE]
		"xpos"					"-50"	[!$WIN32WIDE]
		"ypos"					"28"	//was 10
		// needed to push the game modes carousel behind the other main menu buttons
		// that overlap into the carousel rect (which needs be oversized due to flyouts)
		// and would not get mouse hittests
		"zpos"					-10				
		"borderimage"			"vgui/menu_mode_border"	
		"leftarrow"				"vgui/arrow_left"	
		"rightarrow"			"vgui/arrow_right"	
		"arrowwidth"			21
		"arrowheight"			21
		"arrowoffsety"			-3		//was -3
		"rightarrowoffsetx"		7		
		// main pic, vertically centered
		"picoffsetx"			100	//was 100
		//"picoffsety"			10	//was 100
		"picwidth"				128	//was 153
		"picheight"				128 //was 153
		// menu text, underneath pic
		"menutitlex"			100
		"menutitley"			5	//was 5 // was 16
		// the pc clips text, these need to be wider for the hint, but then use wideatopen to foreshorten the flyout
		"menutitlewide"			500
		"wideatopen"			167	[$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"wideatopen"			246	[!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE]
	//	"wideatopen"			267	[$POLISH]
		"menutitletall"			80
		// small pics, vertically centered, to the right of the main pic
		"subpics"				8		[$WIN32WIDE || $OSXWIDE]		//was 5
		"subpics"				7		[!($WIN32WIDE || $OSXWIDE)]	//was 3
		"subpicgap"				4		//was "6" // between pics
		"subpicoffsetx"			46		//was "50" urik: value chosen that way so that in 4:3 aspect 5 sub-pics fit on screen
		"subpicoffsety"			-15 	//was -10
		"subpicwidth"			72		//was 86
		"subpicheight"			72		//was 86
		"subpicnamefont"		"DefaultVerySmall"
		"hidelabels"			"0"		// Urik: as can be seen from saved commented duplicate of this line, it was disabling gamemode thumbnail labels for any language except english.
	//	"hidelabels"			"1"		[!$ENGLISH]	
		"mode"
		{
			"id"				"BtnCoOp"
			"name"				"#L4D360UI_ModeCaps_COOP"
			"image"				"vgui/menu_mode_campaign"
			"command"			"FlmCampaignFlyout"
			"menutitle"			"#L4D360UI_MainMenu_CoOp"
			"menuhint"			"#L4D360UI_MainMenu_CoOp_Tip"
		}		
		"mode"
		{
			"id"				"BtnPlayChallenge"
			"name"				"#L4D360UI_ModeCaps_CHALLENGE"
			"image"				"vgui/menu_mode_mutation"
			"command"			"PlayChallenge"
			"menutitle"			"#L4D360UI_MainMenu_PlayChallenge"
			"menuhint"			" "
			"challengemode"		"1"
		}		
		// "mode"
		// {
			// "id"				"BtnCusMutations"
			// "name"				"CUS MUTATIONS"
			// "image"				"vgui/menu_mode_biohazard"
			// "command"			"FlmCusMutationsFlyout"
			// "menutitle"			"CUSTOM MUTATIONS"
			// "menuhint"			"Select a Mutation category from the list."
		// }		
		// "mode"
		// {
			// "id"				"BtnZSL"
			// "name"				"          ZSL"
			// "image"				"vgui/menu_mode_ZSL"
			// "command"			"FlmZSLFlyout"
			// "menutitle"			"HEAD2HEAD - COMPETITIVE CAMPAIGN"
			// "menuhint"			"Enter the Zombie Sports League and defeat your friends!"
		// }
		"mode"
		{
			"id"				"BtnPlayRealism"
			"name"				"#L4D360UI_ModeCaps_REALISM"
			"image"				"vgui/menu_mode_realism"
			"command"			"FlmRealismFlyout"
			"menutitle"			"#L4D360UI_MainMenu_Realism"
			"menuhint"			"#L4D360UI_MainMenu_Realism_Tip"
		}
		"mode"
		{
			"id"				"BtnVersus"
			"name"				"#L4D360UI_ModeCaps_VERSUS"
			"image"				"vgui/menu_mode_versus"
			"command"			"VersusSoftLock"
			"menutitle"			"#L4D360UI_MainMenu_Versus"
			"menuhint"			"#L4D360UI_MainMenu_Versus_Tip"
		}
		"mode"
		{
			"id"				"BtnRealismVersus"
			"name"				"#L4D360UI_ModeCaps_mutation12_short"
			"image"				"vgui/menu_mode_realismversus"
			"command"			"FlmRealismVersusFlyout"						
			"menutitle"			"#L4D360UI_ModeCaps_mutation12"
			"menuhint"			"#L4D360UI_MainMenu_PlayChallenge_Tip_mutation12"			
		}
		"mode"
		{
			"id"				"BtnSurvival"
			"name"				"#L4D360UI_ModeCaps_SURVIVAL"
			"image"				"vgui/menu_mode_survival"
			"command"			"SurvivalCheck"
			"menutitle"			"#L4D360UI_MainMenu_Survival"
			"menuhint"			"#L4D360UI_MainMenu_Survival_Tip"
		}
		"mode"
		{
			"id"				"BtnScavenge"
			"name"				"#L4D360UI_ModeCaps_SCAVENGE"
			"image"				"vgui/menu_mode_scavenge"
			"command"			"ScavengeCheck"
			"menutitle"			"#L4D360UI_MainMenu_Scavenge"
			"menuhint"			"#L4D360UI_MainMenu_Scavenge_Tip"
		}
		"mode"
		{
			"id"				"BtnSS"
			"name"				"SPLIT-SCREEN"
			"image"				"vgui/menu_mode_offline_coop"
			"command"			"FlmSplitModesFlyout"
			"menutitle"			"SPLIT-SCREEN"
			"menuhint"			"Play Split-Screen"
		}
		"mode"
		{
			"id"				"BtnPlaySolo"
			"name"				"#L4D360UI_ModeCaps_offline_SP"
			"image"				"vgui/menu_mode_singleplayer"
			"command"			"SoloPlay"
			"menutitle"			"#L4D360UI_MainMenu_PlaySolo"
			"menuhint"			"#L4D360UI_MainMenu_PlaySolo_Tip"
		}	
		"mode" [$X360SPLITSCREEN]
		{
			"id"				"BtnPlaySolo"
			"name"				"#L4D360UI_ModeCaps_offline_SS"
			"image"				"vgui/menu_mode_offline_coop"
			"command"			"SoloPlay"
			"menutitle"			"#L4D360UI_MainMenu_PlaySplitscreen"
			"menuhint"			"#L4D360UI_MainMenu_OfflineCoOp_Tip"
		}	
	}
	"BtnChangeGamers"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnChangeGamers"
		"xpos"					"c-356"	[$WIN32WIDE]
		"xpos"					"50"	[!$WIN32WIDE]
		"ypos"					"255"
		"wide"					"180"
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"0"
		"tabPosition"			"0"
		"navUp"					"BtnGameModes"
		"navDown"				"BtnToggleConsole"
		"labelText"				"#L4D360UI_MainMenu_SignIn"
		"tooltiptext"			"#L4D360UI_MainMenu_ChangeGamers_Tip"
		"style"					"MainMenuButton"
		"command"				"ChangeGamers"
		"ActivationType"		"1"
	}
// Custom Flyouts Buttons Start	
// Rayman btn start	
	"BtnCustomMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnCustomMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmCustomMutationsFlyout"
	}              
	"BtnSVSMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnSVSMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmSVSMutationsFlyout"
	}      
	"BtnCustomMutations1"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnCustomMutations1"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmCustomMutations1Flyout"
	}
	"BtnCampaignMutations1"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnCampaignMutations1"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmCampaignMutations1Flyout"
	}
	"BtnCampaignMutations2"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnCampaignMutations2"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmCampaignMutations2Flyout"
	}
	"BtnCampaignMutations3"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnCampaignMutations3"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmCampaignMutations3Flyout"
	}
	"BtnDeathThrowsMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnDeathThrowsMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmDeathThrowsMutationsFlyout"
	}
	"BtnUncommonMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnUncommonMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmUncommonMutationsFlyout"
	}
	"BtnAntiSpecialSquadMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnAntiSpecialSquadMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmAntiSpecialSquadMutationsFlyout"
	}
	"BtnDeathClockMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnDeathClockMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmDeathClockMutationsFlyout"
	}
	"BtnGunGameMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGunGameMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGunGameMutationsFlyout"
	}
	"BtnVersusTrainingMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnVersusTrainingMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmVersusTrainingMutationsFlyout"
	}
	"BtnVersusMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnVersusMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmVersusMutationsFlyout"
	}
	"BtnSurvivalMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnSurvivalMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmSurvivalMutationsFlyout"
	}
	"BtnScavengeMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnScavengeMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmScavengeMutationsFlyout"
	}
	"BtnClassicMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnClassicMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmClassicMutationsFlyout"
	}
	"BtnRealismMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnRealismMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmRealismMutationsFlyout"
	}
	"BtnSoloMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnSoloMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmSoloMutationsFlyout"
	}
	"Btn2PMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "Btn2PMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "Flm2PMutationsFlyout"
	}
	"BtnZSLWeekly"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnZSLWeekly"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmZSLWeeklyFlyout"
	}
	"BtnZSLSurvival"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnZSLSurvival"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmZSLSurvivalFlyout"
	}
	"BtnGuestMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGuestMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGuestMutationsFlyout"
	}
	"BtnGuestCampaignMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGuestCampaignMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGuestCampaignMutationsFlyout"
	}
	"BtnGuestClassicMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGuestClassicMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGuestClassicMutationsFlyout"
	}
	"BtnGuestRealismMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGuestRealismMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGuestRealismMutationsFlyout"
	}
	"BtnGuestScavengeMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGuestScavengeMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGuestScavengeMutationsFlyout"
	}
	"BtnGuestSoloMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGuestSoloMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGuestSoloMutationsFlyout"
	}
	"BtnGuest2PMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGuest2PMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGuest2PMutationsFlyout"
	}
	"BtnGuestSurvivalMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGuestSurvivalMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGuestSurvivalMutationsFlyout"
	}
	"BtnGuestVersusMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGuestVersusMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGuestVersusMutationsFlyout"
	}
	"BtnGuestUncommonMutations"
	{
		"ControlName"                           "L4D360HybridButton"
		"FieldName"                             "BtnGuestUncommonMutations"
		"xpos"                                  "238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"                                  "160"//flyouts ypos
		"wide"                                  "0"//flyouts width
		"tall"                                  "20"
		"visible"                               "0"
		"enabled"                               "1"
		"labeltext"                             ""
		"tooltiptext"                           ""
		"style"                                 "MainMenuButton"
		"command"                               "FlmGuestUncommonMutationsFlyout"
	}
//Rayman btn End
//SplitScreen btn start
	"BtnCP"
	{
		"FieldName"				"BtnCP"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSplitFlyout"
	}
	"BtnRL"
	{
		"FieldName"				"BtnRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSplitRLFlyout"
	}
	"BtnVS"
	{
		"FieldName"				"BtnVS"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSplitVerFlyout"
	}
	"BtnRV"
	{
		"FieldName"				"BtnRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSplitRVerFlyout"
	}
	"BtnSV"
	{
		"FieldName"				"BtnSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSplitSVFlyout"
	}
	"BtnSE"
	{
		"FieldName"				"BtnSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSplitSEFlyout"
	}
	"BtnSSMode"
	{
		"FieldName"				"BtnSSMode"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"238"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSSModeFlyout"
	}
	"BtnDCCD"
	{
		"FieldName"				"BtnDCCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDFlyout"
	}
	"BtnDCCD1"
	{
		"FieldName"				"BtnDCCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCD1Flyout"
	}
	"BtnDCCD2"
	{
		"FieldName"				"BtnDCCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCD2Flyout"
	}
	"BtnDCCD3"
	{
		"FieldName"				"BtnDCCD3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCD3Flyout"
	}
	"BtnDCLCD"
	{
		"FieldName"				"BtnDCLCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDFlyout"
	}
	"BtnDCLCD1"
	{
		"FieldName"				"BtnDCLCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCD1Flyout"
	}
	"BtnDCLCD2"
	{
		"FieldName"				"BtnDCLCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCD2Flyout"
	}
	"BtnDCLCD3"
	{
		"FieldName"				"BtnDCLCD3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCD3Flyout"
	}
	"BtnDCLCD4"
	{
		"FieldName"				"BtnDCLCD4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCD4Flyout"
	}
	"BtnSFCD"
	{
		"FieldName"				"BtnSFCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDFlyout"
	}
	"BtnSFCD1"
	{
		"FieldName"				"BtnSFCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCD1Flyout"
	}
	"BtnSFCD2"
	{
		"FieldName"				"BtnSFCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCD2Flyout"
	}
	"BtnSFCD3"
	{
		"FieldName"				"BtnSFCD3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCD3Flyout"
	}
	"BtnHRCD"
	{
		"FieldName"				"BtnHRCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDFlyout"
	}
	"BtnHRCD1"
	{
		"FieldName"				"BtnHRCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCD1Flyout"
	}
	"BtnHRCD2"
	{
		"FieldName"				"BtnHRCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCD2Flyout"
	}
	"BtnHRCD3"
	{
		"FieldName"				"BtnHRCD3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCD3Flyout"
	}
	"BtnHRCD4"
	{
		"FieldName"				"BtnHRCD4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCD4Flyout"
	}
	"BtnPSCD"
	{
		"FieldName"				"BtnPSCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDFlyout"
	}
	"BtnPSCD1"
	{
		"FieldName"				"BtnPSCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCD1Flyout"
	}
	"BtnPSCD2"
	{
		"FieldName"				"BtnPSCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCD2Flyout"
	}
	"BtnPSCD3"
	{
		"FieldName"				"BtnPSCD3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCD3Flyout"
	}
	"BtnPSCD4"
	{
		"FieldName"				"BtnPSCD4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCD4Flyout"
	}
	"BtnPGCD"
	{
		"FieldName"				"BtnPGCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDFlyout"
	}
	"BtnPGCD1"
	{
		"FieldName"				"BtnPGCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCD1Flyout"
	}
	"BtnPGCD2"
	{
		"FieldName"				"BtnPGCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCD2Flyout"
	}
	"BtnSCCD"
	{
		"FieldName"				"BtnSCCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDFlyout"
	}
	"BtnSCCD1"
	{
		"FieldName"				"BtnSCCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCD1Flyout"
	}
	"BtnSCCD2"
	{
		"FieldName"				"BtnSCCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCD2Flyout"
	}
	"BtnNMCD"
	{
		"FieldName"				"BtnNMCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDFlyout"
	}
	"BtnNMCD1"
	{
		"FieldName"				"BtnNMCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCD1Flyout"
	}
	"BtnNMCD2"
	{
		"FieldName"				"BtnNMCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCD2Flyout"
	}
	"BtnNMCD3"
	{
		"FieldName"				"BtnNMCD3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCD3Flyout"
	}
	"BtnNMCD4"
	{
		"FieldName"				"BtnNMCD4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCD4Flyout"
	}
	"BtnCCCD"
	{
		"FieldName"				"BtnCCCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCCDFlyout"
	}
	"BtnCCCD1"
	{
		"FieldName"				"BtnCCCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCCD1Flyout"
	}
	"BtnDTCD"
	{
		"FieldName"				"BtnDTCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDFlyout"
	}
	"BtnDTCDSE2"
	{
		"FieldName"				"BtnDTCDSE2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDSE2Flyout"
	}
	"BtnDTCD1"
	{
		"FieldName"				"BtnDTCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCD1Flyout"
	}
	"BtnDTCD2"
	{
		"FieldName"				"BtnDTCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCD2Flyout"
	}
	"BtnDTCD3"
	{
		"FieldName"				"BtnDTCD3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCD3Flyout"
	}
	"BtnDTCD4"
	{
		"FieldName"				"BtnDTCD4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCD4Flyout"
	}
	"BtnDACD"
	{
		"FieldName"				"BtnDACD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDFlyout"
	}
	"BtnDACDSE3"
	{
		"FieldName"				"BtnDACDSE3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDSE3Flyout"
	}
	"BtnDACD1"
	{
		"FieldName"				"BtnDACD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACD1Flyout"
	}
	"BtnDACD2"
	{
		"FieldName"				"BtnDACD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACD2Flyout"
	}
	"BtnDACD3"
	{
		"FieldName"				"BtnDACD3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACD3Flyout"
	}
	"BtnDACD4"
	{
		"FieldName"				"BtnDACD4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACD4Flyout"
	}
	"BtnBHCD"
	{
		"FieldName"				"BtnBHCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDFlyout"
	}
	"BtnBHCDSE4"
	{
		"FieldName"				"BtnBHCDSE4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDSE4Flyout"
	}
	"BtnBHCD1"
	{
		"FieldName"				"BtnBHCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCD1Flyout"
	}
	"BtnBHCD2"
	{
		"FieldName"				"BtnBHCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCD2Flyout"
	}
	"BtnBHCD3"
	{
		"FieldName"				"BtnBHCD3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCD3Flyout"
	}
	"BtnBHCD4"
	{
		"FieldName"				"BtnBHCD4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCD4Flyout"
	}
	"BtnCSCD"
	{
		"FieldName"				"BtnCSCD"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDFlyout"
	}
	"BtnCSCD1"
	{
		"FieldName"				"BtnCSCD1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCD1Flyout"
	}
	"BtnCSCD2"
	{
		"FieldName"				"BtnCSCD2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCD2Flyout"
	}
	"BtnCSCD3"
	{
		"FieldName"				"BtnCSCD3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCD3Flyout"
	}
	"BtnDCCDRL"
	{
		"FieldName"				"BtnDCCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDRLFlyout"
	}
	"BtnDCCDRL1"
	{
		"FieldName"				"BtnDCCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDRL1Flyout"
	}
	"BtnDCCDRL2"
	{
		"FieldName"				"BtnDCCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDRL2Flyout"
	}
	"BtnDCCDRL3"
	{
		"FieldName"				"BtnDCCDRL3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDRL3Flyout"
	}
	"BtnDCCDRV"
	{
		"FieldName"				"BtnDCCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDRVFlyout"
	}
	"BtnDCCDRV1"
	{
		"FieldName"				"BtnDCCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDRV1Flyout"
	}
	"BtnDCCDRV2"
	{
		"FieldName"				"BtnDCCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDRV2Flyout"
	}
	"BtnDCCDRV3"
	{
		"FieldName"				"BtnDCCDRV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDRV3Flyout"
	}
	"BtnDCLCDRL"
	{
		"FieldName"				"BtnDCLCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDRLFlyout"
	}
	"BtnDCLCDRL1"
	{
		"FieldName"				"BtnDCLCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDRL1Flyout"
	}
	"BtnDCLCDRL2"
	{
		"FieldName"				"BtnDCLCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDRL2Flyout"
	}
	"BtnDCLCDRL3"
	{
		"FieldName"				"BtnDCLCDRL3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDRL3Flyout"
	}
	"BtnDCLCDRL4"
	{
		"FieldName"				"BtnDCLCDRL4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDRL4Flyout"
	}
	"BtnDCLCDRV"
	{
		"FieldName"				"BtnDCLCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDRVFlyout"
	}
	"BtnDCLCDRV1"
	{
		"FieldName"				"BtnDCLCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDRV1Flyout"
	}
	"BtnDCLCDRV2"
	{
		"FieldName"				"BtnDCLCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDRV2Flyout"
	}
	"BtnDCLCDRV3"
	{
		"FieldName"				"BtnDCLCDRV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDRV3Flyout"
	}
	"BtnDCLCDRV4"
	{
		"FieldName"				"BtnDCLCDRV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDRV4Flyout"
	}
	"BtnSFCDRL"
	{
		"FieldName"				"BtnSFCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDRLFlyout"
	}
	"BtnSFCDRL1"
	{
		"FieldName"				"BtnSFCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDRL1Flyout"
	}
	"BtnSFCDRL2"
	{
		"FieldName"				"BtnSFCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDRL2Flyout"
	}
	"BtnSFCDRL3"
	{
		"FieldName"				"BtnSFCDRL3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDRL3Flyout"
	}
	"BtnSFCDRV"
	{
		"FieldName"				"BtnSFCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDRVFlyout"
	}
	"BtnSFCDRV1"
	{
		"FieldName"				"BtnSFCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDRV1Flyout"
	}
	"BtnSFCDRV2"
	{
		"FieldName"				"BtnSFCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDRV2Flyout"
	}
	"BtnSFCDRV3"
	{
		"FieldName"				"BtnSFCDRV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDRV3Flyout"
	}
	"BtnHRCDRL"
	{
		"FieldName"				"BtnHRCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDRLFlyout"
	}
	"BtnHRCDRL1"
	{
		"FieldName"				"BtnHRCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDRL1Flyout"
	}
	"BtnHRCDRL2"
	{
		"FieldName"				"BtnHRCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDRL2Flyout"
	}
	"BtnHRCDRL3"
	{
		"FieldName"				"BtnHRCDRL3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDRL3Flyout"
	}
	"BtnHRCDRL4"
	{
		"FieldName"				"BtnHRCDRL4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDRL4Flyout"
	}
	"BtnHRCDRV"
	{
		"FieldName"				"BtnHRCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDRVFlyout"
	}
	"BtnHRCDRV1"
	{
		"FieldName"				"BtnHRCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDRV1Flyout"
	}
	"BtnHRCDRV2"
	{
		"FieldName"				"BtnHRCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDRV2Flyout"
	}
	"BtnHRCDRV3"
	{
		"FieldName"				"BtnHRCDRV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDRV3Flyout"
	}
	"BtnHRCDRV4"
	{
		"FieldName"				"BtnHRCDRV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDRV4Flyout"
	}
	"BtnPSCDRL"
	{
		"FieldName"				"BtnPSCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDRLFlyout"
	}
	"BtnPSCDRL1"
	{
		"FieldName"				"BtnPSCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDRL1Flyout"
	}
	"BtnPSCDRL2"
	{
		"FieldName"				"BtnPSCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDRL2Flyout"
	}
	"BtnPSCDRL3"
	{
		"FieldName"				"BtnPSCDRL3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDRL3Flyout"
	}
	"BtnPSCDRL4"
	{
		"FieldName"				"BtnPSCDRL4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDRL4Flyout"
	}
	"BtnPSCDRV"
	{
		"FieldName"				"BtnPSCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDRVFlyout"
	}
	"BtnPSCDRV1"
	{
		"FieldName"				"BtnPSCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDRV1Flyout"
	}
	"BtnPSCDRV2"
	{
		"FieldName"				"BtnPSCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDRV2Flyout"
	}
	"BtnPSCDRV3"
	{
		"FieldName"				"BtnPSCDRV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDRV3Flyout"
	}
	"BtnPSCDRV4"
	{
		"FieldName"				"BtnPSCDRV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDRV4Flyout"
	}
	"BtnPGCDRL"
	{
		"FieldName"				"BtnPGCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDRLFlyout"
	}
	"BtnPGCDRL1"
	{
		"FieldName"				"BtnPGCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDRL1Flyout"
	}
	"BtnPGCDRL2"
	{
		"FieldName"				"BtnPGCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDRL2Flyout"
	}
	"BtnPGCDRV"
	{
		"FieldName"				"BtnPGCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDRVFlyout"
	}
	"BtnPGCDRV1"
	{
		"FieldName"				"BtnPGCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDRV1Flyout"
	}
	"BtnPGCDRV2"
	{
		"FieldName"				"BtnPGCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDRV2Flyout"
	}
	"BtnSCCDRL"
	{
		"FieldName"				"BtnSCCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDRLFlyout"
	}
	"BtnSCCDRL1"
	{
		"FieldName"				"BtnSCCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDRL1Flyout"
	}
	"BtnSCCDRL2"
	{
		"FieldName"				"BtnSCCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDRL2Flyout"
	}
	"BtnSCCDRV"
	{
		"FieldName"				"BtnSCCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDRVFlyout"
	}
	"BtnSCCDRV1"
	{
		"FieldName"				"BtnSCCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDRV1Flyout"
	}
	"BtnSCCDRV2"
	{
		"FieldName"				"BtnSCCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDRV2Flyout"
	}
	"BtnNMCDRL"
	{
		"FieldName"				"BtnNMCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDRLFlyout"
	}
	"BtnNMCDRL1"
	{
		"FieldName"				"BtnNMCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDRL1Flyout"
	}
	"BtnNMCDRL2"
	{
		"FieldName"				"BtnNMCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDRL2Flyout"
	}
	"BtnNMCDRL3"
	{
		"FieldName"				"BtnNMCDRL3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDRL3Flyout"
	}
	"BtnNMCDRL4"
	{
		"FieldName"				"BtnNMCDRL4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDRL4Flyout"
	}
	"BtnNMCDRV"
	{
		"FieldName"				"BtnNMCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDRVFlyout"
	}
	"BtnNMCDRV1"
	{
		"FieldName"				"BtnNMCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDRV1Flyout"
	}
	"BtnNMCDRV2"
	{
		"FieldName"				"BtnNMCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDRV2Flyout"
	}
	"BtnNMCDRV3"
	{
		"FieldName"				"BtnNMCDRV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDRV3Flyout"
	}
	"BtnNMCDRV4"
	{
		"FieldName"				"BtnNMCDRV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDRV4Flyout"
	}
	"BtnCCCDRL"
	{
		"FieldName"				"BtnCCCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCCDRLFlyout"
	}
	"BtnCCCDRL1"
	{
		"FieldName"				"BtnCCCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCCDRL1Flyout"
	}
	"BtnCCCDRV"
	{
		"FieldName"				"BtnCCCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCCDRVFlyout"
	}
	"BtnCCCDRV1"
	{
		"FieldName"				"BtnCCCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCCDRV1Flyout"
	}
	"BtnDTCDRL"
	{
		"FieldName"				"BtnDTCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"		
		"command"				"FlmDTCDRLFlyout"
	}
	"BtnDTCDRL1"
	{
		"FieldName"				"BtnDTCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDRL1Flyout"
	}
	"BtnDTCDRL2"
	{
		"FieldName"				"BtnDTCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDRL2Flyout"
	}
	"BtnDTCDRL3"
	{
		"FieldName"				"BtnDTCDRL3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDRL3Flyout"
	}
	"BtnDTCDRL4"
	{
		"FieldName"				"BtnDTCDRL4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDRL4Flyout"
	}
	"BtnDTCDRV"
	{
		"FieldName"				"BtnDTCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"	
		"command"				"FlmDTCDRVFlyout"
	}
	"BtnDTCDRV1"
	{
		"FieldName"				"BtnDTCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDRV1Flyout"
	}
	"BtnDTCDRV2"
	{
		"FieldName"				"BtnDTCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDRV2Flyout"
	}
	"BtnDTCDRV3"
	{
		"FieldName"				"BtnDTCDRV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDRV3Flyout"
	}
	"BtnDTCDRV4"
	{
		"FieldName"				"BtnDTCDRV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDRV4Flyout"
	}
	"BtnDACDRL"
	{
		"FieldName"				"BtnDACDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDRLFlyout"
	}
	"BtnDACDRL1"
	{
		"FieldName"				"BtnDACDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDRL1Flyout"
	}
	"BtnDACDRL2"
	{
		"FieldName"				"BtnDACDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDRL2Flyout"
	}
	"BtnDACDRL3"
	{
		"FieldName"				"BtnDACDRL3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDRL3Flyout"
	}
	"BtnDACDRL4"
	{
		"FieldName"				"BtnDACDRL4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDRL4Flyout"
	}
	"BtnDACDRV"
	{
		"FieldName"				"BtnDACDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDRVFlyout"
	}
	"BtnDACDRV1"
	{
		"FieldName"				"BtnDACDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDRV1Flyout"
	}
	"BtnDACDRV2"
	{
		"FieldName"				"BtnDACDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDRV2Flyout"
	}
	"BtnDACDRV3"
	{
		"FieldName"				"BtnDACDRV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDRV3Flyout"
	}
	"BtnDACDRV4"
	{
		"FieldName"				"BtnDACDRV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDRV4Flyout"
	}
	"BtnBHCDRL"
	{
		"FieldName"				"BtnBHCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDRLFlyout"
	}
	"BtnBHCDRL1"
	{
		"FieldName"				"BtnBHCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDRL1Flyout"
	}
	"BtnBHCDRL2"
	{
		"FieldName"				"BtnBHCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDRL2Flyout"
	}
	"BtnBHCDRL3"
	{
		"FieldName"				"BtnBHCDRL3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDRL3Flyout"
	}
	"BtnBHCDRL4"
	{
		"FieldName"				"BtnBHCDRL4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDRL4Flyout"
	}
	"BtnBHCDRV"
	{
		"FieldName"				"BtnBHCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDRVFlyout"
	}
	"BtnBHCDRV1"
	{
		"FieldName"				"BtnBHCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDRV1Flyout"
	}
	"BtnBHCDRV2"
	{
		"FieldName"				"BtnBHCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDRV2Flyout"
	}
	"BtnBHCDRV3"
	{
		"FieldName"				"BtnBHCDRV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDRV3Flyout"
	}
	"BtnBHCDRV4"
	{
		"FieldName"				"BtnBHCDRV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDRV4Flyout"
	}
	"BtnCSCDRL"
	{
		"FieldName"				"BtnCSCDRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDRLFlyout"
	}
	"BtnCSCDRL1"
	{
		"FieldName"				"BtnCSCDRL1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDRL1Flyout"
	}
	"BtnCSCDRL2"
	{
		"FieldName"				"BtnCSCDRL2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDRL2Flyout"
	}
	"BtnCSCDRL3"
	{
		"FieldName"				"BtnCSCDRL3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDRL3Flyout"
	}
	"BtnCSCDRV"
	{
		"FieldName"				"BtnCSCDRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDRVFlyout"
	}
	"BtnCSCDRV1"
	{
		"FieldName"				"BtnCSCDRV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDRV1Flyout"
	}
	"BtnCSCDRV2"
	{
		"FieldName"				"BtnCSCDRV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDRV2Flyout"
	}
	"BtnCSCDRV3"
	{
		"FieldName"				"BtnCSCDRV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDRV3Flyout"
	}
	"BtnDCCDV"
	{
		"FieldName"				"BtnDCCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDVFlyout"
	}
	"BtnDCCDV1"
	{
		"FieldName"				"BtnDCCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDV1Flyout"
	}
	"BtnDCCDV2"
	{
		"FieldName"				"BtnDCCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDV2Flyout"
	}
	"BtnDCCDV3"
	{
		"FieldName"				"BtnDCCDV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDV3Flyout"
	}
	"BtnDCLCDV"
	{
		"FieldName"				"BtnDCLCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDVFlyout"
	}
	"BtnDCLCDV1"
	{
		"FieldName"				"BtnDCLCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDV1Flyout"
	}
	"BtnDCLCDV2"
	{
		"FieldName"				"BtnDCLCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDV2Flyout"
	}
	"BtnDCLCDV3"
	{
		"FieldName"				"BtnDCLCDV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDV3Flyout"
	}
	"BtnDCLCDV4"
	{
		"FieldName"				"BtnDCLCDV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDV4Flyout"
	}
	"BtnSFCDV"
	{
		"FieldName"				"BtnSFCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDVFlyout"
	}
	"BtnSFCDV1"
	{
		"FieldName"				"BtnSFCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDV1Flyout"
	}
	"BtnSFCDV2"
	{
		"FieldName"				"BtnSFCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDV2Flyout"
	}
	"BtnSFCDV3"
	{
		"FieldName"				"BtnSFCDV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDV3Flyout"
	}
	"BtnHRCDV"
	{
		"FieldName"				"BtnHRCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDVFlyout"
	}
	"BtnHRCDV1"
	{
		"FieldName"				"BtnHRCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDV1Flyout"
	}
	"BtnHRCDV2"
	{
		"FieldName"				"BtnHRCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDV2Flyout"
	}
	"BtnHRCDV3"
	{
		"FieldName"				"BtnHRCDV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDV3Flyout"
	}
	"BtnHRCDV4"
	{
		"FieldName"				"BtnHRCDV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDV4Flyout"
	}
	"BtnPSCDV"
	{
		"FieldName"				"BtnPSCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDVFlyout"
	}
	"BtnPSCDV1"
	{
		"FieldName"				"BtnPSCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDV1Flyout"
	}
	"BtnPSCDV2"
	{
		"FieldName"				"BtnPSCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDV2Flyout"
	}
	"BtnPSCDV3"
	{
		"FieldName"				"BtnPSCDV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDV3Flyout"
	}
	"BtnPSCDV4"
	{
		"FieldName"				"BtnPSCDV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDV4Flyout"
	}
	"BtnPGCDV"
	{
		"FieldName"				"BtnPGCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDVFlyout"
	}
	"BtnPGCDV1"
	{
		"FieldName"				"BtnPGCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDV1Flyout"
	}
	"BtnPGCDV2"
	{
		"FieldName"				"BtnPGCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDV2Flyout"
	}
	"BtnSCCDV"
	{
		"FieldName"				"BtnSCCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDVFlyout"
	}
	"BtnSCCDV1"
	{
		"FieldName"				"BtnSCCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDV1Flyout"
	}
	"BtnSCCDV2"
	{
		"FieldName"				"BtnSCCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDV2Flyout"
	}
	"BtnNMCDV"
	{
		"FieldName"				"BtnNMCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDVFlyout"
	}
	"BtnNMCDV1"
	{
		"FieldName"				"BtnNMCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDV1Flyout"
	}
	"BtnNMCDV2"
	{
		"FieldName"				"BtnNMCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDV2Flyout"
	}
	"BtnNMCDV3"
	{
		"FieldName"				"BtnNMCDV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDV3Flyout"
	}
	"BtnNMCDV4"
	{
		"FieldName"				"BtnNMCDV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDV4Flyout"
	}
	"BtnCCCDV"
	{
		"FieldName"				"BtnCCCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCCDVFlyout"
	}
	"BtnCCCDV1"
	{
		"FieldName"				"BtnCCCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCCDV1Flyout"
	}
	"BtnDTCDV"
	{
		"FieldName"				"BtnDTCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDVFlyout"
	}
	"BtnDTCDV1"
	{
		"FieldName"				"BtnDTCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDV1Flyout"
	}
	"BtnDTCDV2"
	{
		"FieldName"				"BtnDTCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDV2Flyout"
	}
	"BtnDTCDV3"
	{
		"FieldName"				"BtnDTCDV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDV3Flyout"
	}
	"BtnDTCDV4"
	{
		"FieldName"				"BtnDTCDV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTCDV4Flyout"
	}
	"BtnDACDV"
	{
		"FieldName"				"BtnDACDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDVFlyout"
	}
	"BtnDACDV1"
	{
		"FieldName"				"BtnDACDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDV1Flyout"
	}
	"BtnDACDV2"
	{
		"FieldName"				"BtnDACDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDV2Flyout"
	}
	"BtnDACDV3"
	{
		"FieldName"				"BtnDACDV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDV3Flyout"
	}
	"BtnDACDV4"
	{
		"FieldName"				"BtnDACDV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDACDV4Flyout"
	}
	"BtnBHCDV"
	{
		"FieldName"				"BtnBHCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDVFlyout"
	}
	"BtnBHCDV1"
	{
		"FieldName"				"BtnBHCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDV1Flyout"
	}
	"BtnBHCDV2"
	{
		"FieldName"				"BtnBHCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDV2Flyout"
	}
	"BtnBHCDV3"
	{
		"FieldName"				"BtnBHCDV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDV3Flyout"
	}
	"BtnBHCDV4"
	{
		"FieldName"				"BtnBHCDV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHCDV4Flyout"
	}
	"BtnCSCDV"
	{
		"FieldName"				"BtnCSCDV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDVFlyout"
	}
	"BtnCSCDV1"
	{
		"FieldName"				"BtnCSCDV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDV1Flyout"
	}
	"BtnCSCDV2"
	{
		"FieldName"				"BtnCSCDV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDV2Flyout"
	}
	"BtnCSCDV3"
	{
		"FieldName"				"BtnCSCDV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSCDV3Flyout"
	}	    
	"BtnDC"
	{
		"FieldName"				"BtnDC"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCFlyout"
	}
	"BtnDCL"
	{
		"FieldName"				"BtnDCL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLFlyout"
	}
	"BtnSF"
	{
		"FieldName"				"BtnSF"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFFlyout"
	}
	"BtnHR"
	{
		"FieldName"				"BtnHR"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRFlyout"
	}
	"BtnPS"
	{
		"FieldName"				"BtnPS"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSFlyout"
	}
	"BtnPG"
	{
		"FieldName"				"BtnPG"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGFlyout"
	}
	"BtnSC"
	{
		"FieldName"				"BtnSC"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCFlyout"
	}
	"BtnNM"
	{
		"FieldName"				"BtnNM"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMFlyout"
	}
	"BtnCC"
	{
		"FieldName"				"BtnCC"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCFlyout"
	}
	"BtnDT"
	{
		"FieldName"				"BtnDT"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTFlyout"
	}
	"BtnDTSE"
	{
		"FieldName"				"BtnDTSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTSEFlyout"
	}
	"BtnDA"
	{
		"FieldName"				"BtnDA"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDAFlyout"
	}
	"BtnDASE"
	{
		"FieldName"				"BtnDASE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDASEFlyout"
	}
	"BtnBH"
	{
		"FieldName"				"BtnBH"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHFlyout"
	}
	"BtnBHSE"
	{
		"FieldName"				"BtnBHSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHSEFlyout"
	}
	"BtnCS"
	{
		"FieldName"				"BtnCS"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSFlyout"
	}
	"BtnDCV"
	{
		"FieldName"				"BtnDCV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCVFlyout"
	}
	"BtnDCLV"
	{
		"FieldName"				"BtnDCLV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLVFlyout"
	}
	"BtnSFV"
	{
		"FieldName"				"BtnSFV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFVFlyout"
	}
	"BtnHRV"
	{
		"FieldName"				"BtnHRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRVFlyout"
	}
	"BtnPSV"
	{
		"FieldName"				"BtnPSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSVFlyout"
	}
	"BtnPGV"
	{
		"FieldName"				"BtnPGV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGVFlyout"
	}
	"BtnSCV"
	{
		"FieldName"				"BtnSCV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCVFlyout"
	}
	"BtnNMV"
	{
		"FieldName"				"BtnNMV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMVFlyout"
	}
	"BtnCCV"
	{
		"FieldName"				"BtnCCV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCVFlyout"
	}
	"BtnDTV"
	{
		"FieldName"				"BtnDTV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTVFlyout"
	}
	"BtnDAV"
	{
		"FieldName"				"BtnDAV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDAVFlyout"
	}
	"BtnBHV"
	{
		"FieldName"				"BtnBHV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHVFlyout"
	}
	"BtnCSV"
	{
		"FieldName"				"BtnCSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSVFlyout"
	}
	"BtnDCSV"
	{
		"FieldName"				"BtnDCSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCSVFlyout"
	}
	"BtnDCSE"
	{
		"FieldName"				"BtnDCSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCSEFlyout"
	}
	"BtnDCLSV"
	{
		"FieldName"				"BtnDCLSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLSVFlyout"
	}
	"BtnDCLSE"
	{
		"FieldName"				"BtnDCLSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLSEFlyout"
	}
	"BtnSFSV"
	{
		"FieldName"				"BtnSFSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFSVFlyout"
	}
	"BtnSFSE"
	{
		"FieldName"				"BtnSFSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFSEFlyout"
	}
	"BtnHRSV"
	{
		"FieldName"				"BtnHRSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRSVFlyout"
	}
	"BtnHRSE"
	{
		"FieldName"				"BtnHRSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRSEFlyout"
	}
	"BtnPSSV"
	{
		"FieldName"				"BtnPSSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSSVFlyout"
	}
	"BtnPSSE"
	{
		"FieldName"				"BtnPSSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSSEFlyout"
	}
	"BtnPGSV"
	{
		"FieldName"				"BtnPGSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGSVFlyout"
	}
	"BtnPGSE"
	{
		"FieldName"				"BtnPGSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGSEFlyout"
	}
	"BtnSCSV"
	{
		"FieldName"				"BtnSCSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCSVFlyout"
	}
	"BtnSCSE"
	{
		"FieldName"				"BtnSCSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCSEFlyout"
	}
	"BtnNMSV"
	{
		"FieldName"				"BtnNMSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMSVFlyout"
	}
	"BtnNMSE"
	{
		"FieldName"				"BtnNMSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMSEFlyout"
	}
	"BtnDCRL"
	{
		"FieldName"				"BtnDCRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCRLFlyout"
	}
	"BtnDCRV"
	{
		"FieldName"				"BtnDCRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCRVFlyout"
	}
	"BtnDCLRL"
	{
		"FieldName"				"BtnDCLRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLRLFlyout"
	}
	"BtnDCLRV"
	{
		"FieldName"				"BtnDCLRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLRVFlyout"
	}
	"BtnSFRL"
	{
		"FieldName"				"BtnSFRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFRLFlyout"
	}
	"BtnSFRV"
	{
		"FieldName"				"BtnSFRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFRVFlyout"
	}
	"BtnHRRL"
	{
		"FieldName"				"BtnHRRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRRLFlyout"
	}
	"BtnHRRV"
	{
		"FieldName"				"BtnHRRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRRVFlyout"
	}
	"BtnPSRL"
	{
		"FieldName"				"BtnPSRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSRLFlyout"
	}
	"BtnPSRV"
	{
		"FieldName"				"BtnPSRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSRVFlyout"
	}
	"BtnPGRL"
	{
		"FieldName"				"BtnPGRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGRLFlyout"
	}
	"BtnPGRV"
	{
		"FieldName"				"BtnPGRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGRVFlyout"
	}
	"BtnSCRL"
	{
		"FieldName"				"BtnSCRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCRLFlyout"
	}
	"BtnSCRV"
	{
		"FieldName"				"BtnSCRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCRVFlyout"
	}
	"BtnNMRL"
	{
		"FieldName"				"BtnNMRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMRLFlyout"
	}
	"BtnNMRV"
	{
		"FieldName"				"BtnNMRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMRVFlyout"
	}
	"BtnNMRV"
	{
		"FieldName"				"BtnNMRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCRLFlyout"
	}
	"BtnCCRV"
	{
		"FieldName"				"BtnCCRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCCRVFlyout"
	}
	"BtnDTRL"
	{
		"FieldName"				"BtnDTRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTRLFlyout"
	}
	"BtnDTRV"
	{
		"FieldName"				"BtnDTRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDTRVFlyout"
	}
	"BtnDARL"
	{
		"FieldName"				"BtnDARL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDARLFlyout"
	}
	"BtnDARV"
	{
		"FieldName"				"BtnDARV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDARVFlyout"
	}
	"BtnBHRL"
	{
		"FieldName"				"BtnBHRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHRLFlyout"
	}
	"BtnBHRV"
	{
		"FieldName"				"BtnBHRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmBHRVFlyout"
	}
	"BtnCSRL"
	{
		"FieldName"				"BtnCSRL"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSRLFlyout"
	}
	"BtnCSRV"
	{
		"FieldName"				"BtnCSRV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmCSRVFlyout"
	}
	"BtnDCCDSV3"
	{
		"FieldName"				"BtnDCCDSV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDSV3Flyout"
	}
	"BtnDCCDSE3"
	{
		"FieldName"				"BtnDCCDSE3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCCDSE3Flyout"
	}
	"BtnDCLCDSV"
	{
		"FieldName"				"BtnDCLCDSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDSVFlyout"
	}
	"BtnDCLCDSE"
	{
		"FieldName"				"BtnDCLCDSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDSEFlyout"
	}
	"BtnDCLCDSV3"
	{
		"FieldName"				"BtnDCLCDSV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDSV3Flyout"
	}
	"BtnDCLCDSV4"
	{
		"FieldName"				"BtnDCLCDSV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmDCLCDSV4Flyout"
	}
	"BtnSFCDSV"
	{
		"FieldName"				"BtnSFCDSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDSVFlyout"
	}
	"BtnSFCDSE"
	{
		"FieldName"				"BtnSFCDSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDSEFlyout"
	}
	"BtnSFCDSV3"
	{
		"FieldName"				"BtnSFCDSV3"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSFCDSV3Flyout"
	}
	"BtnHRCDSV"
	{
		"FieldName"				"BtnHRCDSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDSVFlyout"
	}
	"BtnHRCDSV1"
	{
		"FieldName"				"BtnHRCDSV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDSV1Flyout"
	}
	"BtnHRCDSE"
	{
		"FieldName"				"BtnHRCDSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDSEFlyout"
	}
	"BtnHRCDSE1"
	{
		"FieldName"				"BtnHRCDSE1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDSE1Flyout"
	}
	"BtnHRCDSE2"
	{
		"FieldName"				"BtnHRCDSE2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmHRCDSE2Flyout"
	}
	"BtnPSCDSV1"
	{
		"FieldName"				"BtnPSCDSV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDSV1Flyout"
	}
	"BtnPSCDSE1"
	{
		"FieldName"				"BtnPSCDSE1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDSE1Flyout"
	}
	"BtnPSCDSV4"
	{
		"FieldName"				"BtnPSCDSV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPSCDSV4Flyout"
	}
	"BtnPGCDSV"
	{
		"FieldName"				"BtnPGCDSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDSVFlyout"
	}
	"BtnPGCDSV1"
	{
		"FieldName"				"BtnPGCDSV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDSV1Flyout"
	}
	"BtnPGCDSV2"
	{
		"FieldName"				"BtnPGCDSV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDSV2Flyout"
	}
	"BtnPGCDSE"
	{
		"FieldName"				"BtnPGCDSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDSEFlyout"
	}
	"BtnPGCDSE1"
	{
		"FieldName"				"BtnPGCDSE1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDSE1Flyout"
	}
	"BtnPGCDSE2"
	{
		"FieldName"				"BtnPGCDSE2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmPGCDSE2Flyout"
	}
	"BtnSCCDSV"
	{
		"FieldName"				"BtnSCCDSV"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDSVFlyout"
	}
	"BtnSCCDSV2"
	{
		"FieldName"				"BtnSCCDSV2"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDSV2Flyout"
	}
	"BtnSCCDSE"
	{
		"FieldName"				"BtnSCCDSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDSEFlyout"
	}
	"BtnSCCDSE1"
	{
		"FieldName"				"BtnSCCDSE1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSCCDSE1Flyout"
	}
	"BtnNMCDSV1"
	{
		"FieldName"				"BtnNMCDSV1"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDSV1Flyout"
	}
	"BtnNMCDSV4"
	{
		"FieldName"				"BtnNMCDSV4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDSV4Flyout"
	}
	"BtnNMCDSE"
	{
		"FieldName"				"BtnNMCDSE"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDSEFlyout"
	}
	"BtnNMCDSE4"
	{
		"FieldName"				"BtnNMCDSE4"
		"ControlName"			"L4D360HybridButton"
		"xpos"					"238"//flyouts xpos. This has to be adjusted to match gamemodes' initial flyouts xpos, which depend on "wideatopen" setting
		"ypos"					"160"//flyouts ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmNMCDSE4Flyout"
	}
//SplitScreen btn end
//Urik btn
	"BtnCreditsUrik"
	{
		"ControlName"				"L4D360HybridButton"
		"FieldName"				"BtnCreditsUrik"
		"xpos"					"219"//flyoutsurik xpos.
		"ypos"					"160"//flyoutsurik ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"				""
		"style"					"MainMenuButton"
		"command"				"FlmCreditsUrik"
	}
	"BtnReloadfont_FAQ"
	{
		"ControlName"				"L4D360HybridButton"
		"FieldName"				"BtnReloadfont_FAQ"
		"xpos"					"219"//flyoutsurik xpos.
		"ypos"					"160"//flyoutsurik ypos
		"wide"					"0"//flyouts width
		"tall"					"20"
		"visible"				"0"
		"enabled"				"1"
		"labeltext"				""
		"tooltiptext"				""
		"style"					"MainMenuButton"
		"command"				"FlmReloadfont_FAQ"
	}	
// Custom Flyouts Buttons End	
	"IconConsole"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconConsole"
		"xpos"					"c-380"	[$WIN32WIDE]
		"xpos"					"26"	[!$WIN32WIDE]
		"ypos"					"206"
		"wide"					"16"
		"tall"					"16"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_console"
		"frame"					"0"
		//drawcolor_special_event_autoreplace
		"scaleImage"			"1"
	}
	"BtnToggleConsole"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnToggleConsole"
		"xpos"					"c-356"	[$WIN32WIDE]
		"xpos"					"50"	[!$WIN32WIDE]
		"ypos"					"205"	
		"wide"					"140" [$RUSSIAN]
		"wide"					"160" [$ENGLISH || $GERMAN]
		"wide"					"210" [!$ENGLISH && !$GERMAN && !$RUSSIAN && !$FRENCH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE && !$PORTUGUESE]
		"wide"					"190" [$FRENCH || $PORTUGUESE || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnChangeGamers"
		"navDown"				"BtnSearchGames"
		"labeltext"				"CONSOLE"	
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"#toggleconsole"
		"ActivationType"		"1"
		"allcaps"				"1" // Urik: to ensure caps'd letters
	}
	"IconSearchGames"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconSearchGames"
		"xpos"					"c-380"	[$WIN32WIDE]
		"xpos"					"26"	[!$WIN32WIDE]
		"ypos"					"226"
		"wide"					"16"
		"tall"					"16"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_dice"
		"frame"					"0"
		//drawcolor_special_event_autoreplace
		"scaleImage"			"1"
	}	
	"BtnSearchGames"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnSearchGames"
		"xpos"					"c-356"	[$WIN32WIDE]
		"xpos"					"50"	[!$WIN32WIDE]
		"ypos"					"225"	
		"wide"					"140" [$RUSSIAN]
		"wide"					"160" [$ENGLISH || $GERMAN]
		"wide"					"210" [!$ENGLISH && !$GERMAN && !$RUSSIAN && !$FRENCH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE && !$PORTUGUESE]
		"wide"					"190" [$FRENCH || $PORTUGUESE || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnToggleConsole"
		"navDown"				"BtnAddons"
		"labeltext"				"#L4D360UI_LiveMatchChooser"	
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"FlmSearchGamesFlyout"
		"ActivationType"		"1"
		"allcaps"				"1" // Urik: to ensure caps'd letters
	}
	"IconAddons_urik"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconAddons_urik"
		"xpos"					"c-380"	[$WIN32WIDE]
		"xpos"					"26"	[!$WIN32WIDE]
		"ypos"					"247"
		"wide"					"16"
		"tall"					"16"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_addons"
		"frame"					"0"
		//drawcolor_special_event_autoreplace
	}	
	"IconAddons"
	{
		"visible"				"0"
		"enabled"				"0"
	}	
	"BtnAddons"
	{
		"ControlName"	"L4D360HybridButton"
		"fieldName"		"BtnAddons"
		"xpos"					"c-356"	[$WIN32WIDE]
		"xpos"					"50"	[!$WIN32WIDE]
		"ypos"					"245"
		"wide"					"140" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE || $ITALIAN]
		"wide"					"230" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE && !$GERMAN && !$ITALIAN]
		"wide"					"170" [$GERMAN]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnSearchGames"
		"navDown"				"BtnStatsAndAchievements"
		"tooltiptext"			"#L4D360UI_Extras_Addons_Tip"
		"labelText"				"Дополнения"  [$RUSSIAN]
		"labelText"				"#L4D360UI_Extras_Addons"  [!$RUSSIAN]
		"style"					"MainMenuButton"
		"command"				"Addons"
		"ActivationType"		"1"
		"allcaps"			"1" // Urik: to ensure caps'd letters
	}		
	"IconStatsAndAchievements"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconStatsAndAchievements"
		"xpos"					"c-380"	[$WIN32WIDE]
		"xpos"					"26"	[!$WIN32WIDE]
		"ypos"					"267"
		"wide"					"16"
		"tall"					"16"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_achievements"
		"frame"					"0"
		//drawcolor_special_event_autoreplace
		"scaleImage"			"1"
	}	
	"BtnStatsAndAchievements"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnStatsAndAchievements"
		"xpos"					"c-356"	[$WIN32WIDE]
		"xpos"					"50"	[!$WIN32WIDE]
		"ypos"					"265"
		"wide"					"176" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE || $ITALIAN]
		"wide"					"230" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE && !$GERMAN && !$ITALIAN]
		"wide"					"170" [$GERMAN]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnAddons"
		"navDown"				"BtnOptions"
		"labelText"				"#L4D360UI_MainMenu_StatsAndAchievements"
		"tooltiptext"			"#L4D360UI_MainMenu_PCStatsAndAchievements_Tip"
		"style"					"MainMenuButton"
		"command"				"StatsAndAchievements"
		"ActivationType"		"1"
	}	
	"IconOptions"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconOptions"
		"xpos"					"c-380"	[$WIN32WIDE]
		"xpos"					"26"	[!$WIN32WIDE]
		"ypos"					"287"
		"wide"					"16"
		"tall"					"16"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_options"
		"frame"					"0"
		//drawcolor_special_event_autoreplace
		"scaleImage"			"1"
	}	
	"BtnOptions"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnOptions"
		"xpos"					"c-356"	[$WIN32WIDE]
		"xpos"					"50"	[!$WIN32WIDE]
		"ypos"					"285"
		"wide"					"140" [$ENGLISH || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE || $ITALIAN]
		"wide"					"144" [$RUSSIAN]
		"wide"					"170" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE && !$GERMAN && !$ITALIAN && !$FRENCH]
		"wide"					"190" [$FRENCH]
		"wide"					"170" [$GERMAN]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnStatsAndAchievements"
		"navDown"				"BtnExtras"
		"labelText"				"#L4D360UI_MainMenu_Options"
		"tooltiptext"			"#L4D360UI_MainMenu_Options_Tip"
		"style"					"MainMenuButton"
		"command"				"FlmOptionsFlyout"
		"ActivationType"		"1"
	}
	"IconExtras"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconExtras"
		"xpos"					"c-380"	[$WIN32WIDE]
		"xpos"					"26"	[!$WIN32WIDE]
		"ypos"					"307"
		"wide"					"16"
		"tall"					"16"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_extras"
		"frame"					"0"
		//drawcolor_special_event_autoreplace
		"scaleImage"			"1"
	}
	"BtnExtras"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnExtras"
		"xpos"					"c-356"	[$WIN32WIDE]
		"xpos"					"50"	[!$WIN32WIDE]
		"ypos"					"305"
		"wide"					"140" [$ENGLISH || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE || $ITALIAN]
		"wide"					"144" [$RUSSIAN]
		"wide"					"170" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE && !$GERMAN && !$ITALIAN && !$FRENCH]
		"wide"					"190" [$FRENCH]
		"wide"					"170" [$GERMAN]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnOptions"
		"navDown"				"BtnBlogPost"
		"labelText"				"#L4D360UI_MainMenu_Extras"
		"tooltiptext"				"#L4D360UI_MainMenu_Extras_Tip"
		"style"					"MainMenuButton"
		"command"				"FlmExtrasFlyoutCheck"
		"ActivationType"		"1"
	}
	"IconBlogPost"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBlogPost"
		"xpos"					"c-380"	[$WIN32WIDE]
		"xpos"					"25"	[!$WIN32WIDE]
		"ypos"					"327"
		"wide"					"16"
		"tall"					"16"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_biohazard"
		"frame"					"0"
		//drawcolor_special_event_autoreplace
		"scaleImage"			"1"
	}	
	"BtnBlogPost"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnBlogPost"
		"xpos"					"c-356"	[$WIN32WIDE]
		"xpos"					"50"	[!$WIN32WIDE]
		"ypos"					"325"
		"wide"					"160" [$RUSSIAN]
		"wide"					"140" [$ENGLISH || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE || $ITALIAN]
		"wide"					"230" [!$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE && !$GERMAN && !$ITALIAN]
		"wide"					"200" [$GERMAN]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"0"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnExtras"
		"navDown"				"BtnQuit"
		"labelText"				"#L4D360UI_MainMenu_BlogPost"
		"tooltiptext"			""
		"style"					"MainMenuButton"
		"command"				"ShowBlogPost"
		"ActivationType"		"1"
	}
	"IconQuit"
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconQuit"
		"xpos"					"c-380"	[$WIN32WIDE]
		"xpos"					"26"	[!$WIN32WIDE]
		"ypos"					"347"
		"wide"					"16"
		"tall"					"16"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"exitL4D2"
		"frame"					"0"
		//drawcolor_special_event_autoreplace
		"scaleImage"			"1"
	}	
	"BtnQuit"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnQuit"
		"xpos"					"c-356"	[$WIN32WIDE]
		"xpos"					"50"	[!$WIN32WIDE]
		"ypos"					"345"
		"wide"					"140" [$ENGLISH || $RUSSIAN || $JAPANESE || $KOREAN || $KOREANA || $SCHINESE || $TCHINESE || $ITALIAN]
		"wide"					"230" [!$RUSSIAN && !$ENGLISH && !$JAPANESE && !$KOREAN && !$KOREANA && !$SCHINESE && !$TCHINESE && !$GERMAN && !$ITALIAN]
		"wide"					"170" [$GERMAN]
		"tall"					"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnBlogPost"
		"navDown"				"PnlQuickJoin"
		"labelText"				"#L4D360UI_MainMenu_Quit"
		"tooltiptext"			"#L4D360UI_MainMenu_Quit_Tip"
		"style"					"MainMenuButton"
		"command"				"QuitGame"
		"ActivationType"		"1"
	}
	"FlmCampaignFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCampaignFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/CampaignFlyout.res"
	}
	"FlmRealismFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmRealismFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/RealismFlyout.res"
	}
	"FlmSurvivalFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSurvivalFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/SurvivalFlyout.res"
	}
	"FlmScavengeFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmScavengeFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/ScavengeFlyout.res"
	}
	"FlmVersusFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmVersusFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/VersusFlyout.res"
	}
	"FlmRealismVersusFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmRealismVersusFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/RealismVersusFlyout.res"
	}
	"FlmMutationCategories"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmMutationCategories"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnMutationSolo"
		"ResourceFile"			"resource/UI/L4D360UI/MutationCategoriesFlyout.res"
	}
	"FlmMutationSolo"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmMutationSolo"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/MutationSoloFlyout.res"
	}
	"FlmMutationCoop"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmMutationCoop"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnMutation2"
		"ResourceFile"			"resource/UI/L4D360UI/MutationCoopFlyout.res"
	}
	"FlmMutationVersus"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmMutationVersus"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnMutation11"
		"ResourceFile"			"resource/UI/L4D360UI/MutationVersusFlyout.res"
	}
	"FlmChallengeFlyout1"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmChallengeFlyout1"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnStartGame"
		"ResourceFile"			"resource/UI/L4D360UI/mainmenu_flyout_challenge1.res"
	}
	"FlmChallengeFlyout4"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmChallengeFlyout4"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/mainmenu_flyout_challenge4.res"
	}
	"FlmChallengeFlyout8"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmChallengeFlyout8"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnQuickMatch"
		"ResourceFile"			"resource/UI/L4D360UI/mainmenu_flyout_challenge8.res"
	}
	// Rayman FLM start
	
	"FlmCusMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCusMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnMutationList1"
		"ResourceFile"			"resource/UI/L4D360UI/CustomMutationsFlyout.res"
	}
	
	"FlmCustomMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCustomMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/CustomMutationsFlyout.res"
	}
	
	"FlmSVSMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSVSMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/SVSMutationsFlyout.res"
	}
	
	"FlmCustomMutations1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCustomMutations1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/CustomMutations1Flyout.res"
	}
	
	"FlmCampaignMutations1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCampaignMutations1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/CampaignMutations1Flyout.res"
	}

	"FlmCampaignMutations2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCampaignMutations2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/CampaignMutations2Flyout.res"
	}
	
	"FlmCampaignMutations3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCampaignMutations3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/CampaignMutations3Flyout.res"
	}
	
	"FlmDeathThrowsMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDeathThrowsMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/DeathThrowsMutationsFlyout.res"
	}

	"FlmUncommonMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmUncommonMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/UncommonMutationsFlyout.res"
	}
	
	"FlmAntiSpecialSquadMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmAntiSpecialSquadMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/AntiSpecialSquadMutationsFlyout.res"
	}
	
	"FlmDeathClockMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDeathClockMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/DeathClockMutationsFlyout.res"
	}
	
	"FlmGunGameMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGunGameMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/GunGameMutationsFlyout.res"
	}
	
	"FlmSurvivalMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSurvivalMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/SurvivalMutationsFlyout.res"
	}
	
	"FlmScavengeMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmScavengeMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/ScavengeMutationsFlyout.res"
	}
	
	"FlmVersusTrainingMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmVersusTrainingMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/VersusTrainingMutationsFlyout.res"
	}
	
	"FlmVersusMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmVersusMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/VersusMutationsFlyout.res"
	}
	
	"FlmClassicMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmClassicMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/ClassicMutationsFlyout.res"
	}
	
	"FlmRealismMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmRealismMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/RealismMutationsFlyout.res"
	}
	
	"FlmSoloMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSoloMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlaySoloMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/SoloMutationsFlyout.res"
	}
	
	"Flm2PMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"Flm2PMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/2PMutationsFlyout.res"
	}
	
	"FlmZSLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmZSLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnMutationList1"
		"ResourceFile"			"resource/UI/L4D360UI/ZSLFlyout.res"
	}
	
	"FlmZSLWeeklyFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmZSLWeeklyFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/ZSLWeeklyFlyout.res"
	}
	
	"FlmZSLSurvivalFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmZSLSurvivalFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/ZSLSurvivalFlyout.res"
	}
	
	"FlmGuestMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGuestMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/GuestMutationsFlyout.res"
	}
	
	"FlmGuestCampaignMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGuestCampaignMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/GuestCampaignMutationsFlyout.res"
	}
	
	"FlmGuestClassicMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGuestClassicMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/GuestClassicMutationsFlyout.res"
	}
	
	"FlmGuestRealismMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGuestRealismMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/GuestRealismMutationsFlyout.res"
	}
	
	"FlmGuestScavengeMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGuestScavengeMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/GuestScavengeMutationsFlyout.res"
	}
	
	"FlmGuestSoloMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGuestSoloMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/GuestSoloMutationsFlyout.res"
	}
	
	"FlmGuest2PMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGuest2PMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/Guest2PMutationsFlyout.res"
	}
	
	"FlmGuestSurvivalMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGuestSurvivalMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/GuestSurvivalMutationsFlyout.res"
	}
	
	"FlmGuestVersusMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGuestVersusMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/GuestVersusMutationsFlyout.res"
	}
	
	"FlmGuestUncommonMutationsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGuestUncommonMutationsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPlayMutation1"
		"ResourceFile"			"resource/UI/L4D360UI/GuestUncommonMutationsFlyout.res"
	}
	// Rayman FLM end
	"FlmCreditsUrik"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCreditsUrik"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			""
		"ResourceFile"			"resource/UI/L4D360UI/CreditsUrik.res"
	}
	"FlmReloadFont_FAQ"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmReloadFont_FAQ"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			""
		"ResourceFile"			"resource/UI/L4D360UI/reloadfont_FAQ.res"
	}
	"FlmSearchGamesFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSearchGamesFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnGameBrowser"
		"ResourceFile"			"resource/UI/L4D360UI/SearchGamesFlyout.res"
	}
	"FlmOptionsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmOptionsFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnVideo"
		"ResourceFile"			"resource/UI/L4D360UI/OptionsFlyout.res"
	}
	"FlmOptionsGuestFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmOptionsGuestFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnAudioVideo"
		"ResourceFile"			"resource/UI/L4D360UI/OptionsGuestFlyout.res"
	}
	"FlmExtrasFlyout_Simple"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmExtrasFlyout_Simple"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"DemoUI"
		"ResourceFile"			"resource/UI/L4D360UI/ExtrasFlyout.res"
	}
	"FlmExtrasFlyout_Live"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmExtrasFlyout_Live"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCommunity"
		"ResourceFile"			"resource/UI/L4D360UI/ExtrasFlyoutLive.res"
	}
	"PnlQuickJoin"
	{
		"ControlName"			"QuickJoinPanel"
		"fieldName"				"PnlQuickJoin"
		"ResourceFile"			"resource/UI/L4D360UI/QuickJoin.res"
		"visible"				"0"
		"wide"					"240"
		"tall"					"300"
		"xpos"					"c-380"	[$WIN32WIDE]
		"xpos"					"30"	[!$WIN32WIDE]
		"ypos"					"r75"
		"navUp"					"BtnQuit"
		"navDown"				"PnlQuickJoinGroups"
	}
	"PnlQuickJoinGroups"
	{
		"ControlName"			"QuickJoinGroupsPanel"
		"fieldName"				"PnlQuickJoinGroups"
		"ResourceFile"			"resource/UI/L4D360UI/QuickJoinGroups.res"
		"visible"				"0"
		"wide"					"500"
		"tall"					"300"
		"xpos"					"c90"	[$WIN32WIDE]
		"xpos"					"c0"	[!$WIN32WIDE]
		"ypos"					"r75"
		"navUp"					"PnlQuickJoin"
		"navDown"				"BtnGameModes"
	}
	
	// Splitscreen flm start
		
	"FlmSplitFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSplitFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDC"
		"ResourceFile"			"resource/UI/L4D360UI/SplitFlyout.res"
	}
	
	"FlmSplitModesFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSplitModesFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCP"
		"ResourceFile"			"resource/UI/L4D360UI/SplitModesFlyout.res"
	}
	
	"FlmSplitVerFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSplitVerFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDC"
		"ResourceFile"			"resource/UI/L4D360UI/SplitVerFlyout.res"
	}
	
	"FlmSplitRVerFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSplitRVerFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCRV"
		"ResourceFile"			"resource/UI/L4D360UI/SplitRVerFlyout.res"
	}
	
	"FlmSplitSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSplitSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCSV"
		"ResourceFile"			"resource/UI/L4D360UI/SplitSVFlyout.res"
	}
	
	"FlmSplitSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSplitSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCSE"
		"ResourceFile"			"resource/UI/L4D360UI/SplitSEFlyout.res"
	}
	
	"FlmSplitRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSplitRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnVSA"
		"ResourceFile"			"resource/UI/L4D360UI/SplitRLFlyout.res"
	}
	
    "FlmBtnSFK"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBtnSFK"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDC"	[$X360]
		"InitialFocus"			"BtnDC"	[$WIN32]
		"ResourceFile"			"resource/UI/L4D360UI/SplitFlyout.res"
	}
	
	"FlmDCCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDFlyout.res"
	}
	
	"FlmDCCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCD1Flyout.res"
	}
	
	"FlmDCCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCD2Flyout.res"
	}
	
	"FlmDCCD3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCD3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCD3Flyout.res"
	}
	
	"FlmDCFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDC"
		"ResourceFile"			"resource/UI/L4D360UI/DCFlyout.res"
	}
	
	"FlmDCLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCL"
		"ResourceFile"			"resource/UI/L4D360UI/DCLFlyout.res"
	}
	
	"FlmDCLCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDFlyout.res"
	}
	
	"FlmDCLCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCD1Flyout.res"
	}
	
	"FlmDCLCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCD2Flyout.res"
	}
	
	"FlmDCLCD3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCD3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCD3Flyout.res"
	}
	
	"FlmDCLCD4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCD4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCD4Flyout.res"
	}
	
	"FlmSFFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSF"
		"ResourceFile"			"resource/UI/L4D360UI/SFFlyout.res"
	}
	
	"FlmSFCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDFlyout.res"
	}
	
	"FlmSFCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCD1Flyout.res"
	}
	
	"FlmSFCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCD2Flyout.res"
	}
	
	"FlmSFCD3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCD3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCD3Flyout.res"
	}
	
	"FlmHRFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHR"
		"ResourceFile"			"resource/UI/L4D360UI/HRFlyout.res"
	}
	
	"FlmHRCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDFlyout.res"
	}
	
	"FlmHRCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCD1Flyout.res"
	}
	
	"FlmHRCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCD2Flyout.res"
	}
	
	"FlmHRCD3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCD3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCD3Flyout.res"
	}
	
	"FlmHRCD4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCD4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCD4Flyout.res"
	}
	
	"FlmPSFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPS"
		"ResourceFile"			"resource/UI/L4D360UI/PSFlyout.res"
	}
	
	"FlmPSCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDFlyout.res"
	}
	
	"FlmPSCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCD1Flyout.res"
	}
	
	"FlmPSCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCD2Flyout.res"
	}
	
	"FlmPSCD3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCD3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCD3Flyout.res"
	}
	
	"FlmPSCD4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCD4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCD4Flyout.res"
	}
	
	"FlmPGFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPG"
		"ResourceFile"			"resource/UI/L4D360UI/PGFlyout.res"
	}
	
	"FlmPGCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDFlyout.res"
	}
	
	"FlmPGCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCD1Flyout.res"
	}
	
	"FlmPGCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCD2Flyout.res"
	}
	
	"FlmSCFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSC"
		"ResourceFile"			"resource/UI/L4D360UI/SCFlyout.res"
	}
	
	"FlmSCCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDFlyout.res"
	}
	
	"FlmSCCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCD1Flyout.res"
	}
	
	"FlmSCCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCD2Flyout.res"
	}
	
	"FlmNMFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMFlyout.res"
	}
	
	"FlmNMCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDFlyout.res"
	}
	
	"FlmNMCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCD1Flyout.res"
	}
	
	"FlmNMCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCD2Flyout.res"
	}
	
	"FlmNMCD3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCD3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCD3Flyout.res"
	}
	
	"FlmNMCD4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCD4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCD4Flyout.res"
	}
	
	"FlmCCFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCC"
		"ResourceFile"			"resource/UI/L4D360UI/CCFlyout.res"
	}
	
	"FlmCCCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCCNM"
		"ResourceFile"			"resource/UI/L4D360UI/CCCDFlyout.res"
	}
	
	"FlmCCCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCCNM"
		"ResourceFile"			"resource/UI/L4D360UI/CCCD1Flyout.res"
	}
	
	"FlmDTFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDT"
		"ResourceFile"			"resource/UI/L4D360UI/DTFlyout.res"
	}
	
	"FlmDTSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDT"
		"ResourceFile"			"resource/UI/L4D360UI/DTSEFlyout.res"
	}
	
	"FlmDTCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDFlyout.res"
	}
	
	"FlmDTCDSE2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDSE2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDSE2Flyout.res"
	}
	
	"FlmDTCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCD1Flyout.res"
	}
	
	"FlmDTCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCD2Flyout.res"
	}
	
	"FlmDTCD3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCD3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCD3Flyout.res"
	}
	
	"FlmDTCD4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCD4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCD4Flyout.res"
	}
	
	"FlmDAFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDAFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDA"
		"ResourceFile"			"resource/UI/L4D360UI/DAFlyout.res"
	}
	
	"FlmDASEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDASEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDASE"
		"ResourceFile"			"resource/UI/L4D360UI/DASEFlyout.res"
	}
	
	"FlmDACDSE3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDSE3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDSE3Flyout.res"
	}
	
	"FlmDACDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDFlyout.res"
	}
	
	"FlmDACD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACD1Flyout.res"
	}
	
	"FlmDACD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACD2Flyout.res"
	}
	
	"FlmDACD3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACD3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACD3Flyout.res"
	}
	
	"FlmDACD4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACD4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACD4Flyout.res"
	}
	
    "FlmBHFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBH"
		"ResourceFile"			"resource/UI/L4D360UI/BHFlyout.res"
	}
	
	"FlmBHSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHSE"
		"ResourceFile"			"resource/UI/L4D360UI/BHSEFlyout.res"
	}
	
	"FlmBHCDSE4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDSE4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDSE4Flyout.res"
	}
	
	"FlmBHCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBH"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDFlyout.res"
	}
	
	"FlmBHCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCD1Flyout.res"
	}
	
	"FlmBHCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCD2Flyout.res"
	}
	
	"FlmBHCD3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCD3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCD3Flyout.res"
	}
	
	"FlmBHCD4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCD4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCD4Flyout.res"
	}
	
	"FlmCSFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCS"
		"ResourceFile"			"resource/UI/L4D360UI/CSFlyout.res"
	}
	
    "FlmCSCDFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDFlyout.res"
	}
	
	"FlmCSCD1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCD1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCD1Flyout.res"
	}
	
	"FlmCSCD2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCD2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCD2Flyout.res"
	}
	
	"FlmCSCD3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCD3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCD3Flyout.res"
	}
	
	"FlmDCVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDC"
		"ResourceFile"			"resource/UI/L4D360UI/DCVFlyout.res"
	}
	
	"FlmDCCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDVFlyout.res"
	}
	
	"FlmDCCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDV1Flyout.res"
	}
	
	"FlmDCCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDV2Flyout.res"
	}
	
	"FlmDCCDV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDV3Flyout.res"
	}
	
	"FlmDCLVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCL"
		"ResourceFile"			"resource/UI/L4D360UI/DCLVFlyout.res"
	}
	
	"FlmDCLCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDVFlyout.res"
	}
	
	"FlmDCLCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDV1Flyout.res"
	}
	
	"FlmDCLCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDV2Flyout.res"
	}
	
	"FlmDCLCDV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDV3Flyout.res"
	}
	
	"FlmDCLCDV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDV4Flyout.res"
	}
	
	"FlmSFVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSF"
		"ResourceFile"			"resource/UI/L4D360UI/SFVFlyout.res"
	}
	
	"FlmSFCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDVFlyout.res"
	}
	
	"FlmSFCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDV1Flyout.res"
	}
	
	"FlmSFCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDV2Flyout.res"
	}
	
	"FlmSFCDV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDV3Flyout.res"
	}
	
	"FlmHRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHR"
		"ResourceFile"			"resource/UI/L4D360UI/HRVFlyout.res"
	}
	
	"FlmHRCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDVFlyout.res"
	}
	
	"FlmHRCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDV1Flyout.res"
	}
	
	"FlmHRCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDV2Flyout.res"
	}
	
	"FlmHRCDV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDV3Flyout.res"
	}
	
	"FlmHRCDV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDV4Flyout.res"
	}
	
	"FlmPSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPS"
		"ResourceFile"			"resource/UI/L4D360UI/PSVFlyout.res"
	}
	
	"FlmPSCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDVFlyout.res"
	}
	
	"FlmPSCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDV1Flyout.res"
	}
	
	"FlmPSCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDV2Flyout.res"
	}
	
	"FlmPSCDV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDV3Flyout.res"
	}
	
	"FlmPSCDV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDV4Flyout.res"
	}
	
	"FlmPGVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPG"
		"ResourceFile"			"resource/UI/L4D360UI/PGVFlyout.res"
	}
	
	"FlmPGCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDVFlyout.res"
	}
	
	"FlmPGCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDV1Flyout.res"
	}
	
	"FlmPGCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDV2Flyout.res"
	}
	
	"FlmSCVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSC"
		"ResourceFile"			"resource/UI/L4D360UI/SCVFlyout.res"
	}
	
	"FlmSCCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDVFlyout.res"
	}
	
	"FlmSCCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDV1Flyout.res"
	}
	
	"FlmSCCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDV2Flyout.res"
	}
	
	"FlmNMVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMVFlyout.res"
	}
	
	"FlmNMCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDVFlyout.res"
	}
	
	"FlmNMCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDV1Flyout.res"
	}
	
	"FlmNMCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDV2Flyout.res"
	}
	
	"FlmNMCDV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDV3Flyout.res"
	}
	
	"FlmNMCDV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDV4Flyout.res"
	}
	
	"FlmCCVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCC"
		"ResourceFile"			"resource/UI/L4D360UI/CCVFlyout.res"
	}
	
	"FlmCCCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCCNM"
		"ResourceFile"			"resource/UI/L4D360UI/CCCDVFlyout.res"
	}
	
	"FlmCCCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCCNM"
		"ResourceFile"			"resource/UI/L4D360UI/CCCDV1Flyout.res"
	}
	
	"FlmDTVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDT"
		"ResourceFile"			"resource/UI/L4D360UI/DTVFlyout.res"
	}
	
	"FlmDTCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDVFlyout.res"
	}
	
	"FlmDTCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDV1Flyout.res"
	}
	
	"FlmDTCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDV2Flyout.res"
	}
	
	"FlmDTCDV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDV3Flyout.res"
	}
	
	"FlmDTCDV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDV4Flyout.res"
	}
	
	"FlmDAVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDAVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDA"
		"ResourceFile"			"resource/UI/L4D360UI/DAVFlyout.res"
	}
	
	"FlmDACDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDVFlyout.res"
	}
	
	"FlmDACDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDV1Flyout.res"
	}
	
	"FlmDACDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDV2Flyout.res"
	}
	
	"FlmDACDV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDV3Flyout.res"
	}
	
	"FlmDACDV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDV4Flyout.res"
	}
	
    "FlmBHVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBH"
		"ResourceFile"			"resource/UI/L4D360UI/BHVFlyout.res"
	}
	
	"FlmBHCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBH"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDVFlyout.res"
	}
	
	"FlmBHCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDV1Flyout.res"
	}
	
	"FlmBHCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDV2Flyout.res"
	}
	
	"FlmBHCDV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDV3Flyout.res"
	}
	
	"FlmBHCDV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDV4Flyout.res"
	}
	
	"FlmCSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCS"
		"ResourceFile"			"resource/UI/L4D360UI/CSVFlyout.res"
	}
	
	"FlmCSCDVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDVFlyout.res"
	}
	
	"FlmCSCDV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDV1Flyout.res"
	}
	
	"FlmCSCDV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDV2Flyout.res"
	}
	
	"FlmCSCDV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDV3Flyout.res"
	}
	
	"FlmDCSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCSV"
		"ResourceFile"			"resource/UI/L4D360UI/DCSVFlyout.res"
	}
	
	"FlmDCSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCSEFlyout.res"
	}
	
	"FlmDCLSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLSV"
		"ResourceFile"			"resource/UI/L4D360UI/DCLSVFlyout.res"
	}
	
	"FlmDCLSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLSE"
		"ResourceFile"			"resource/UI/L4D360UI/DCLSEFlyout.res"
	}
	
	"FlmDCLCDSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDSEFlyout.res"
	}
	
	"FlmSFSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFSV"
		"ResourceFile"			"resource/UI/L4D360UI/SFSVFlyout.res"
	}
	
	"FlmSFSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFSE"
		"ResourceFile"			"resource/UI/L4D360UI/SFSEFlyout.res"
	}
	
	"FlmHRSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRSV"
		"ResourceFile"			"resource/UI/L4D360UI/HRSVFlyout.res"
	}
	
	"FlmHRSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRSE"
		"ResourceFile"			"resource/UI/L4D360UI/HRSEFlyout.res"
	}
	
	"FlmPSSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSSV"
		"ResourceFile"			"resource/UI/L4D360UI/PSSVFlyout.res"
	}
	
	"FlmPSSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSSE"
		"ResourceFile"			"resource/UI/L4D360UI/PSSEFlyout.res"
	}
	
	"FlmPGSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGSV"
		"ResourceFile"			"resource/UI/L4D360UI/PGSVFlyout.res"
	}
	
	"FlmPGSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGSE"
		"ResourceFile"			"resource/UI/L4D360UI/PGSEFlyout.res"
	}
	
	"FlmSCSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCSV"
		"ResourceFile"			"resource/UI/L4D360UI/SCSVFlyout.res"
	}
	
	"FlmSCSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCSE"
		"ResourceFile"			"resource/UI/L4D360UI/SCSEFlyout.res"
	}
	
	"FlmNMSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMSV"
		"ResourceFile"			"resource/UI/L4D360UI/NMSVFlyout.res"
	}
	
	"FlmNMSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMSE"
		"ResourceFile"			"resource/UI/L4D360UI/NMSEFlyout.res"
	}
	
	"FlmDCRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCRL"
		"ResourceFile"			"resource/UI/L4D360UI/DCRLFlyout.res"
	}
	
	"FlmDCRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCRV"
		"ResourceFile"			"resource/UI/L4D360UI/DCRVFlyout.res"
	}
	
	"FlmDCCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDRLFlyout.res"
	}
	
	"FlmDCCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDRL1Flyout.res"
	}
	
	"FlmDCCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDRL2Flyout.res"
	}
	
	"FlmDCCDRL3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDRL3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDRL3Flyout.res"
	}
	
	"FlmDCCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDRVFlyout.res"
	}
	
	"FlmDCCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDRV1Flyout.res"
	}
	
	"FlmDCCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDRV2Flyout.res"
	}
	
	"FlmDCCDRV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDRV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDRV3Flyout.res"
	}
	
	"FlmDCLRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLRL"
		"ResourceFile"			"resource/UI/L4D360UI/DCLRLFlyout.res"
	}
	
	"FlmDCLRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLRV"
		"ResourceFile"			"resource/UI/L4D360UI/DCLRVFlyout.res"
	}
	
	"FlmDCLCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDRLFlyout.res"
	}
	
	"FlmDCLCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDRL1Flyout.res"
	}
	
	"FlmDCLCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDRL2Flyout.res"
	}
	
	"FlmDCLCDRL3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDRL3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDRL3Flyout.res"
	}
	
	"FlmDCLCDRL4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDRL4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDRL4Flyout.res"
	}
	
	"FlmDCLCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDRVFlyout.res"
	}
	
	"FlmDCLCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDRV1Flyout.res"
	}
	
	"FlmDCLCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDRV2Flyout.res"
	}
	
	"FlmDCLCDRV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDRV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDRV3Flyout.res"
	}
	
	"FlmDCLCDRV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDRV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDRV4Flyout.res"
	}
	
	"FlmSFRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFRL"
		"ResourceFile"			"resource/UI/L4D360UI/SFRLFlyout.res"
	}
	
	"FlmSFRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFRV"
		"ResourceFile"			"resource/UI/L4D360UI/SFRVFlyout.res"
	}
	
	"FlmSFCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDRLFlyout.res"
	}
	
	"FlmSFCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDRL1Flyout.res"
	}
	
	"FlmSFCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDRL2Flyout.res"
	}
	
	"FlmSFCDRL3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDRL3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDRL3Flyout.res"
	}
	
	"FlmSFCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDRVFlyout.res"
	}
	
	"FlmSFCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDRV1Flyout.res"
	}
	
	"FlmSFCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDRV2Flyout.res"
	}
	
	"FlmSFCDRV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDRV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDRV3Flyout.res"
	}
	
	"FlmHRRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRRL"
		"ResourceFile"			"resource/UI/L4D360UI/HRRLFlyout.res"
	}
	
	"FlmHRRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRRV"
		"ResourceFile"			"resource/UI/L4D360UI/HRRVFlyout.res"
	}
	
	"FlmHRCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDRLFlyout.res"
	}
	
	"FlmHRCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDRL1Flyout.res"
	}
	
	"FlmHRCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDRL2Flyout.res"
	}
	
	"FlmHRCDRL3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDRL3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDRL3Flyout.res"
	}
	
	"FlmHRCDRL4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDRL4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDRL4Flyout.res"
	}
	
	"FlmHRCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDRVFlyout.res"
	}
	
	"FlmHRCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDRV1Flyout.res"
	}
	
	"FlmHRCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDRV2Flyout.res"
	}
	
	"FlmHRCDRV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDRV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDRV3Flyout.res"
	}
	
	"FlmHRCDRV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDRV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDRV4Flyout.res"
	}
	
	"FlmPSRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSRL"
		"ResourceFile"			"resource/UI/L4D360UI/PSRLFlyout.res"
	}
	
	"FlmPSRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSRL"
		"ResourceFile"			"resource/UI/L4D360UI/PSRVFlyout.res"
	}
	
	"FlmPSCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDRLFlyout.res"
	}
	
	"FlmPSCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDRL1Flyout.res"
	}
	
	"FlmPSCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDRL2Flyout.res"
	}
	
	"FlmPSCDRL3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDRL3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDRL3Flyout.res"
	}
	
	"FlmPSCDRL4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDRL4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDRL4Flyout.res"
	}
	
	"FlmPSCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDRVFlyout.res"
	}
	
	"FlmPSCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDRV1Flyout.res"
	}
	
	"FlmPSCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDRV2Flyout.res"
	}
	
	"FlmPSCDRV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDRV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDRV3Flyout.res"
	}
	
	"FlmPSCDRV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDRV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDRV4Flyout.res"
	}
	
	"FlmPGRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGRL"
		"ResourceFile"			"resource/UI/L4D360UI/PGRLFlyout.res"
	}
	
	"FlmPGRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGRL"
		"ResourceFile"			"resource/UI/L4D360UI/PGRVFlyout.res"
	}
	
	"FlmPGCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDRLFlyout.res"
	}
	
	"FlmPGCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDRL1Flyout.res"
	}
	
	"FlmPGCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDRL2Flyout.res"
	}
	
	"FlmPGCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDRVFlyout.res"
	}
	
	"FlmPGCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDRV1Flyout.res"
	}
	
	"FlmPGCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDRV2Flyout.res"
	}
	
	"FlmSCRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCRL"
		"ResourceFile"			"resource/UI/L4D360UI/SCRLFlyout.res"
	}
	
    "FlmSCRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCRL"
		"ResourceFile"			"resource/UI/L4D360UI/SCRVFlyout.res"
	}
	
	"FlmSCCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDRLFlyout.res"
	}
	
	"FlmSCCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDRL1Flyout.res"
	}
	
	"FlmSCCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDRL2Flyout.res"
	}
	
	"FlmSCCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDRVFlyout.res"
	}
	
	"FlmSCCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDRV1Flyout.res"
	}
	
	"FlmSCCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDRV2Flyout.res"
	}
	
	"FlmNMRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMRL"
		"ResourceFile"			"resource/UI/L4D360UI/NMRLFlyout.res"
	}
	
	"FlmNMRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMRL"
		"ResourceFile"			"resource/UI/L4D360UI/NMRVFlyout.res"
	}
	
	"FlmNMCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDRLFlyout.res"
	}
	
	"FlmNMCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDRL1Flyout.res"
	}
	
	"FlmNMCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDRL2Flyout.res"
	}
	
	"FlmNMCDRL3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDRL3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDRL3Flyout.res"
	}
	
	"FlmNMCDRL4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDRL4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDRL4Flyout.res"
	}
	
	"FlmNMCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDRVFlyout.res"
	}
	
	"FlmNMCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDRV1Flyout.res"
	}
	
	"FlmNMCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDRV2Flyout.res"
	}
	
	"FlmNMCDRV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDRV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDRV3Flyout.res"
	}
	
	"FlmNMCDRV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDRV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDRV4Flyout.res"
	}
	
	"FlmCCRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCCRL"
		"ResourceFile"			"resource/UI/L4D360UI/CCRLFlyout.res"
	}
	
    "FlmCCRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCCRL"
		"ResourceFile"			"resource/UI/L4D360UI/CCRVFlyout.res"
	}
	
	"FlmCCCDRLFlyout"	
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCCNM"
		"ResourceFile"			"resource/UI/L4D360UI/CCCDRLFlyout.res"
	}
	
	"FlmCCCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCCNM"
		"ResourceFile"			"resource/UI/L4D360UI/CCCDRL1Flyout.res"
	}
	
	"FlmCCCDRVFlyout"	
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCCNM"
		"ResourceFile"			"resource/UI/L4D360UI/CCCDRVFlyout.res"
	}
	
	"FlmCCCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCCCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCCNM"
		"ResourceFile"			"resource/UI/L4D360UI/CCCDRV1Flyout.res"
	}
	
	"FlmDTRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTRL"
		"ResourceFile"			"resource/UI/L4D360UI/DTRLFlyout.res"
	}
	
	"FlmDTRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTRL"
		"ResourceFile"			"resource/UI/L4D360UI/DTRVFlyout.res"
	}
	
	"FlmDTCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDRLFlyout.res"
	}
	
	"FlmDTCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDRL1Flyout.res"
	}
	
	"FlmDTCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDRL2Flyout.res"
	}
	
	"FlmDTCDRL3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDRL3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDRL3Flyout.res"
	}
	
	"FlmDTCDRL4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDRL4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDRL4Flyout.res"
	}
	
	"FlmDTCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDRVFlyout.res"
	}
	
	"FlmDTCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDRV1Flyout.res"
	}
	
	"FlmDTCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDRV2Flyout.res"
	}
	
	"FlmDTCDRV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDRV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDRV3Flyout.res"
	}
	
	"FlmDTCDRV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDTCDRV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDTNM"
		"ResourceFile"			"resource/UI/L4D360UI/DTCDRV4Flyout.res"
	}
	
	"FlmDARLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDARLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDARL"
		"ResourceFile"			"resource/UI/L4D360UI/DARLFlyout.res"
	}
	
	"FlmDARVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDARVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDARL"
		"ResourceFile"			"resource/UI/L4D360UI/DARVFlyout.res"
	}
	
	"FlmDACDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDRLFlyout.res"
	}
	
	"FlmDACDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDRL1Flyout.res"
	}
	
	"FlmDACDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDRL2Flyout.res"
	}
	
	"FlmDACDRL3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDRL3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDRL3Flyout.res"
	}
	
	"FlmDACDRL4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDRL4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDRL4Flyout.res"
	}
	
	"FlmDACDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDRVFlyout.res"
	}
	
	"FlmDACDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDRV1Flyout.res"
	}
	
	"FlmDACDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDRV2Flyout.res"
	}
	
	"FlmDACDRV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDRV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDRV3Flyout.res"
	}
	
	"FlmDACDRV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDACDRV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDANM"
		"ResourceFile"			"resource/UI/L4D360UI/DACDRV4Flyout.res"
	}
	
    "FlmBHRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHRL"
		"ResourceFile"			"resource/UI/L4D360UI/BHRLFlyout.res"
	}
	
	"FlmBHRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHRL"
		"ResourceFile"			"resource/UI/L4D360UI/BHRVFlyout.res"
	}
	
	"FlmBHCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBH"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDRLFlyout.res"
	}
	
	"FlmBHCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDRL1Flyout.res"
	}
	
	"FlmBHCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDRL2Flyout.res"
	}
	
	"FlmBHCDRL3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDRL3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDRL3Flyout.res"
	}
	
	"FlmBHCDRL4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDRL4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDRL4Flyout.res"
	}
	
	"FlmBHCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBH"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDRVFlyout.res"
	}
	
	"FlmBHCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDRV1Flyout.res"
	}
	
	"FlmBHCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDRV2Flyout.res"
	}
	
	"FlmBHCDRV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDRV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDRV3Flyout.res"
	}
	
	"FlmBHCDRV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmBHCDRV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnBHNM"
		"ResourceFile"			"resource/UI/L4D360UI/BHCDRV4Flyout.res"
	}
	
	"FlmCSRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSRL"
		"ResourceFile"			"resource/UI/L4D360UI/CSRLFlyout.res"
	}
	
	"FlmCSRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSRL"
		"ResourceFile"			"resource/UI/L4D360UI/CSRVFlyout.res"
	}
	
	"FlmCSCDRLFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDRLFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDRLFlyout.res"
	}
	
	"FlmCSCDRL1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDRL1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDRL1Flyout.res"
	}
	
	"FlmCSCDRL2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDRL2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDRL2Flyout.res"
	}
	
	"FlmCSCDRL3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDRL3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDRL3Flyout.res"
	}
	
    "FlmCSCDRVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDRVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDRVFlyout.res"
	}
	
	"FlmCSCDRV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDRV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDRV1Flyout.res"
	}
	
	"FlmCSCDRV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDRV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDRV2Flyout.res"
	}
	
	"FlmCSCDRV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCSCDRV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnCSNM"
		"ResourceFile"			"resource/UI/L4D360UI/CSCDRV3Flyout.res"
	}
	
	"FlmDCCDSV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDSV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDSV3Flyout.res"
	}
	
	"FlmDCCDSE3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCCDSE3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCCDSE3Flyout.res"
	}
	
	"FlmDCLCDSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDSVFlyout.res"
	}
	
	"FlmDCLCDSV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDSV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDSV3Flyout.res"
	}
	
	"FlmDCLCDSV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmDCLCDSV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnDCLNM"
		"ResourceFile"			"resource/UI/L4D360UI/DCLCDSV4Flyout.res"
	}
	
	"FlmSFCDSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDSVFlyout.res"
	}
	
	"FlmSFCDSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDSEFlyout.res"
	}
	
	"FlmSFCDSV3Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSFCDSV3Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSFNM"
		"ResourceFile"			"resource/UI/L4D360UI/SFCDSV3Flyout.res"
	}
	
	"FlmHRCDSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDSVFlyout.res"
	}
	
	"FlmHRCDSV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDSV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDSV1Flyout.res"
	}
	
	"FlmHRCDSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDSEFlyout.res"
	}
	
	"FlmHRCDSE1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDSE1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDSE1Flyout.res"
	}
	
	"FlmHRCDSE2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmHRCDSE2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnHRNM"
		"ResourceFile"			"resource/UI/L4D360UI/HRCDSE2Flyout.res"
	}
	
	"FlmPSCDSV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDSV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDSV1Flyout.res"
	}
	
	"FlmPSCDSE1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDSE1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDSE1Flyout.res"
	}
	
	"FlmPSCDSV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPSCDSV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPSNM"
		"ResourceFile"			"resource/UI/L4D360UI/PSCDSV4Flyout.res"
	}
	
	"FlmPGCDSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDSVFlyout.res"
	}
	
	"FlmPGCDSV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDSV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDSV1Flyout.res"
	}
	
	"FlmPGCDSV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDSV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDSV2Flyout.res"
	}
	
	"FlmPGCDSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDSEFlyout.res"
	}
	
	"FlmPGCDSE1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDSE1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDSE1Flyout.res"
	}
	
	"FlmPGCDSE2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmPGCDSE2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnPGNM"
		"ResourceFile"			"resource/UI/L4D360UI/PGCDSE2Flyout.res"
	}
	
	"FlmSCCDSVFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDSVFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDSVFlyout.res"
	}
	
	"FlmSCCDSV2Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDSV2Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDSV2Flyout.res"
	}
	
	"FlmSCCDSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDSEFlyout.res"
	}
	
	"FlmSCCDSE1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSCCDSE1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSCNM"
		"ResourceFile"			"resource/UI/L4D360UI/SCCDSE1Flyout.res"
	}
	
	"FlmNMCDSV1Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDSV1Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDSV1Flyout.res"
	}
	
	"FlmNMCDSV4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDSV4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDSV4Flyout.res"
	}
	
	"FlmNMCDSEFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDSEFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDSEFlyout.res"
	}
	
	"FlmNMCDSE4Flyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmNMCDSE4Flyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnNMNM"
		"ResourceFile"			"resource/UI/L4D360UI/NMCDSE4Flyout.res"
	}
	
	"FlmSSModeFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSSModeFlyout"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"3"
		"InitialFocus"			"BtnSSHL"
		"ResourceFile"			"resource/UI/L4D360UI/SSModeFlyout.res"
	}
	// Splitscreen flm end
	
}
