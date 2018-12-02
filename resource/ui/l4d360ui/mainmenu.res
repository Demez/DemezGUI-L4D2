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

// =================================================
// Main Menu Screen Buttons Start
// =================================================
	// gap of 17 inbetween buttons
	// gap of 35 inbetween categories
	"Custom_BtnServerBrowser"
	{
		"ControlName"				"L4D360HybridButton"
		"fieldName"					"Custom_BtnServerBrowser"
		"xpos"						"75"
		"ypos"						"200" // 235
		"wide"						"120"
		"tall"						"17"
		"autoResize"				"1"
		"pinCorner"					"0"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"navUp"						"BtnPlaySolo"
		"navDown"					"BtnAddons"
		"labelText"					"Servers"
		"tooltiptext"				"#L4D360UI_MainMenu_PlaySolo_Tip"
		"disabled_tooltiptext"		"#L4D360UI_MainMenu_PlaySolo_Tip_Disabled"
		"style"						"MainMenuButton"
		"command"					"OpenServerBrowser"
		"ActivationType"			"1"
		"FocusDisabledBorderSize"	"1"
	}
	
	"Custom_BtnAddons"
	{
		"ControlName"				"L4D360HybridButton"
		"fieldName"					"Custom_BtnAddons"
		"xpos"						"75"
		"ypos"						"235" //265
		"wide"						"180"
		"tall"						"17"
		"autoResize"				"1"
		"pinCorner"					"0"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"navUp"						"BtnServerBrowser"
		"navDown"					"BtnStatsAndAchievements"
		"labelText"					"Addons" //#L4D360UI_MainMenu_PlaySolo
		"tooltiptext"				"#L4D360UI_MainMenu_PlaySolo_Tip"
		"disabled_tooltiptext"		"#L4D360UI_MainMenu_PlaySolo_Tip_Disabled"
		"style"						"MainMenuButton"
		"command"					"Addons"
		"ActivationType"			"1"
		"FocusDisabledBorderSize"	"1"
	}
	
	"Custom_BtnStatsAndAchievements"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"Custom_BtnStatsAndAchievements"
		"xpos"					"75"
		"ypos"					"252" //280	[$WIN32]
		"wide"					"180"	[$WIN32]
		"tall"					"17"	[$WIN32]
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnAddons"
		"navDown"				"BtnPlaySurvivalLeaderboards"
		"labelText"				"Achievements" //#L4D360UI_MainMenu_StatsAndAchievements
		"tooltiptext"			"#L4D360UI_MainMenu_PCStatsAndAchievements_Tip"	[$WIN32]
		"style"					"MainMenuButton"
		"command"				"StatsAndAchievements"
		"ActivationType"		"1"
	}
	
	"Custom_BtnCommentary"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"Custom_BtnCommentary"
		"xpos"					"75"
		"ypos"					"269"
		"wide"					"200"
		"tall"					"17"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnPlaySurvivalLeaderboards"
		"navDown"				"BtnVideo"
		"labelText"				"Developer Commentary" //#L4D360UI_MainMenu_StatsAndAchievements
		"tooltiptext"			"#L4D360UI_MainMenu_PCStatsAndAchievements_Tip"	[$WIN32]
		"style"					"MainMenuButton"
		"command"				"DeveloperCommentary"
		"ActivationType"		"1"
	}
	
	"BtnExtras"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"BtnExtras"
		"xpos"					"75"
		"ypos"					"286" // 310
		"wide"					"140"
		"tall"					"20" // so it doesnt look like ass when you click on it
		"autoResize"				"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"				"0"
		"navUp"					"BtnCommentary"
		"navDown"				"BtnVideo"
		// fight me, this is in caps
		"labelText"				"Extras" //"#L4D360UI_MainMenu_Extras"
		//"tooltiptext"				"#L4D360UI_MainMenu_Extras_Tip"
		"style"					"MainMenuButton"
		"command"				"FlmExtrasFlyoutCheck"
		"ActivationType"			"1"
		"allcaps"				"0"
	}
	
	
	
	"Custom_BtnVideo"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"Custom_BtnVideo"
		"xpos"					"75"
		"ypos"					"321"	[$WIN32]
		"wide"					"120"
		"tall"					"17"	[$WIN32]
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnCommentary"
		"navDown"				"BtnBrightness"
		"tooltiptext"			"#L4D_video_tip"
		"labelText"				"#GameUI_Video"
		"style"					"MainMenuButton"
		"command"				"Video"
		"ActivationType"		"1"
	}

	"Custom_BtnBrightness"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"Custom_BtnBrightness"
		"xpos"					"75"
		"ypos"					"338"	[$WIN32]
		"wide"					"120"
		"tall"					"17"	[$WIN32]
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnVideo"
		"navDown"				"BtnAudio"
		"tooltiptext"			"#GameUI_AdjustGamma"
		"labelText"				"#GameUI_Brightness"
		"style"					"MainMenuButton"
		"command"				"Brightness"
		"ActivationType"		"1"
	}

	"Custom_BtnAudio"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"Custom_BtnAudio"
		"xpos"					"75"
		"ypos"					"355"	[$WIN32]
		"wide"					"120"
		"tall"					"17"	[$WIN32]
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnBrightness"
		"navDown"				"BtnController"
		"tooltiptext"			"#L4D_audio_tip"
		"labelText"				"#GameUI_Audio"
		"style"					"MainMenuButton"
		"command"				"Audio"
		"ActivationType"		"1"
	}

	"Custom_BtnController"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"Custom_BtnController"
		"xpos"					"75"
		"ypos"					"372"	[$WIN32]
		"wide"					"140"
		"tall"					"17"	[$WIN32]
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnAudio"
		"navDown"				"BtnMultiplayer"
		"tooltiptext"			"#L4D_keyboard_tip"
		"labelText"				"#L4D360UI_KeyboardMouse"
		"style"					"MainMenuButton"
		"command"				"KeyboardMouse"
		"ActivationType"		"1"
	}

	"Custom_BtnMultiplayer"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"Custom_BtnMultiplayer"
		"xpos"					"75"
		"ypos"					"389"	[$WIN32]
		"wide"					"120"
		"tall"					"17"	[$WIN32]
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnController"
		"navDown"				"BtnCloud"
		"tooltiptext"			"#L4D_multiplayer_tip"
		"labelText"				"#GameUI_Multiplayer"
		"style"					"MainMenuButton"
		"command"				"MultiplayerSettings"
		"ActivationType"		"1"
	}

	"Custom_BtnCloud"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"Custom_BtnCloud"
		"xpos"					"75"
		"ypos"					"406"	[$WIN32]
		"wide"					"120"
		"tall"					"17"	[$WIN32]
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnMultiplayer"
		"navDown"				"BtnQuit"
		"tooltiptext"			"#L4D_steamcloud_tip"
		"labelText"				"#L4D360UI_Cloud_Title"
		"style"					"MainMenuButton"
		"command"				"CloudSettings"
		"ActivationType"		"1"
	}
	
	"Custom_BtnQuit"
	{
		"ControlName"			"L4D360HybridButton"
		"fieldName"				"Custom_BtnQuit"
		"xpos"					"75"
		"ypos"					"441"
		"wide"					"120"
		"tall"					"17"
		"autoResize"				"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"				"0"
		"navUp"					"BtnCloud"
		"navDown"				"BtnCoOp"
		// fight me again, idfc
		"labelText"				"Quit"
		//"labelText"				"#L4D360UI_MainMenu_Quit"
		//"tooltiptext"				"#L4D360UI_MainMenu_Quit_Tip"
		"style"					"MainMenuButton"
		"command"				"QuitGame"
		"ActivationType"			"1"
		"allcaps"				"0"
	}
// =================================================
// Main Menu Screen Buttons End
// =================================================	


// =================================================
// Urik Main Menu Screen Buttons Start
// =================================================	
	
	
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
