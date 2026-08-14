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

local function AuraDataToLegacy(aura)
	if( type(aura) ~= "table" or type(aura.name) ~= "string" or not aura.icon ) then
		return nil
	end

	return aura.name,
		aura.icon,
		aura.applications or 0,
		aura.dispelName,
		aura.duration or 0,
		aura.expirationTime or 0,
		aura.sourceUnit,
		aura.isStealable,
		aura.nameplateShowPersonal,
		aura.spellId or aura.spellID,
		aura.canApplyAura,
		aura.isBossAura
end

function ShadowUF.API.UnitAura(unit, index, filter)
	if( ShadowUF.API.IsModernClassicUI() and C_UnitAuras and C_UnitAuras.GetAuraDataByIndex ) then
		return AuraDataToLegacy(C_UnitAuras.GetAuraDataByIndex(unit, index, filter))
	end

	local name, texture, count, auraType, duration, endTime, caster, isRemovable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff = UnitAura(unit, index, filter)
	if( type(name) ~= "string" or not texture ) then
		return nil
	end

	return name, texture, count or 0, auraType, duration or 0, endTime or 0, caster, isRemovable, nameplateShowPersonal, spellID, canApplyAura, isBossDebuff
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
