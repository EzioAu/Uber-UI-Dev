--[[
	GENERAL FRAME SETTINGS
	- Main Menu
	- Micro Bar
]]--
  

  --get the addon namespace
  local addon, ns = ...
  --get the config values
  local cfg = ns.cfg
  local General = {}

  local dragFrameList = ns.dragFrameList

  local classcolor = RAID_CLASS_COLORS[select(2, UnitClass("General"))]
  local class = UnitClass("General")


function General:SetBars(value)
	for i,v in pairs({
		MainMenuBarArtFrameBackground.BackgroundLarge,
		MainMenuBarArtFrameBackground.BackgroundSmall,
		SlidingActionBarTexture0,
		SlidingActionBarTexture1,
		StatusTrackingBarManager.SingleBarLarge,
		StatusTrackingBarManager.SingleBarLargeUpper,
		StatusTrackingBarManager.SingleBarSmall,
		StatusTrackingBarManager.SingleBarSmallUpper,
		MicroButtonAndBagsBar.MicroBagBar,
	}) do
		v:SetVertexColor(value, value, value)
	end
end

function General:SetGryphon(value)
	for i,v in ipairs({
		MainMenuBarArtFrame.LeftEndCap,
	    MainMenuBarArtFrame.RightEndCap, 
	}) do
		v:SetVertexColor(value, value, value)
	end
end

function General:Gryphon(value)
	if (value) then do
		MainMenuBarArtFrame.LeftEndCap:Show()
		MainMenuBarArtFrame.RightEndCap:Show()
	else
		MainMenuBarArtFrame.LeftEndCap:Hide()
		MainMenuBarArtFrame.RightEndCap:Hide()
	end

function General:Classcolor(checked, rvalue, gvalue, bvalue)
	if (checked) then do
		MainMenuBarArtFrame.LeftEndCap:SetTexture("Interface\\AddOns\\Uber UI\\textures\\classtextures\\"..class.."\\mainmenubar-endcap-dwarf")
		MainMenuBarArtFrame.LeftEndCap:SetVertexColor(rvalue, gvalue, bvalue)
		MainMenuBarArtFrame.LeftEndCap:SetTexCoord(0,1,.40625,1)
		MainMenuBarArtFrame.RightEndCap:SetTexture("Interface\\AddOns\\Uber UI\\textures\\classtextures\\"..class.."\\mainmenubar-endcap-dwarf")
		MainMenuBarArtFrame.RightEndCap:SetVertexColor(rvalue, gvalue, bvalue)
		MainMenuBarArtFrame.RightEndCap:SetTexCoord(1,0,.40625,1)
	end
end