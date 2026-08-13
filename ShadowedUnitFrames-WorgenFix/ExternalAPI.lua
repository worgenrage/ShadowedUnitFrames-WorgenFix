--[[
	API overrides from external addons that augment the data missing in the Classic API
]]
local addonName = ...
ShadowUF = select(2, ...)
ShadowUF.API = {}
ShadowUF.addonPath = "Interface\\AddOns\\" .. addonName .. "\\"

local fallbackDebuffColors = {
	Magic = DEBUFF_TYPE_MAGIC_COLOR or {r = 0.20, g = 0.60, b = 1.00},
	Curse = DEBUFF_TYPE_CURSE_COLOR or {r = 0.60, g = 0.00, b = 1.00},
	Disease = DEBUFF_TYPE_DISEASE_COLOR or {r = 0.60, g = 0.40, b = 0.00},
	Poison = DEBUFF_TYPE_POISON_COLOR or {r = 0.00, g = 0.60, b = 0.00},
}
fallbackDebuffColors.none = DEBUFF_TYPE_NONE_COLOR or {r = 0.80, g = 0.00, b = 0.00}
fallbackDebuffColors[""] = fallbackDebuffColors.none

function ShadowUF.API.GetDebuffTypeColor(auraType)
	local blizzardColors = rawget(_G, "DebuffTypeColor")
	local colors = type(blizzardColors) == "table" and blizzardColors or fallbackDebuffColors
	return colors[auraType or "none"] or colors.none or colors[""] or fallbackDebuffColors.none
end

function ShadowUF.API.GetClientAPIMode()
	local configuredMode = ShadowUF.db and ShadowUF.db.global.worgenFix.clientAPIMode or "auto"
	if( configuredMode == "modern" or configuredMode == "legacy" ) then
		return configuredMode
	end

	local interfaceVersion = select(4, GetBuildInfo()) or 0
	return interfaceVersion >= 11508 and "modern" or "legacy"
end

function ShadowUF.API.IsModernClassicUI()
	return ShadowUF.API.GetClientAPIMode() == "modern"
end

function ShadowUF.API.GetPlayerCastingBarFrame()
	if( ShadowUF.API.IsModernClassicUI() ) then
		return PlayerCastingBarFrame or CastingBarFrame
	end
	return CastingBarFrame or PlayerCastingBarFrame
end

-- Threat colors
function ShadowUF.API.GetThreatStatusColor(state)
	if( state == 3 ) then
		return 1, 0, 0
	elseif( state == 2 ) then
		return 1, 0.6, 0
	elseif( state == 1 ) then
		return 1, 1, 0.47
	else
		return 0.69, 0.69, 0.69
	end
end
