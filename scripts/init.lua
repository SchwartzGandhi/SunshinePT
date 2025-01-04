-- entry point for all lua code of the pack
-- more info on the lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
ENABLE_DEBUG_LOG = true
-- get current variant
local variant = Tracker.ActiveVariantUID
-- check variant info
-- IS_ITEMS_ONLY = variant:find("itemsonly")

print("-- Super Mario Sunshine Poptracker --")
-- print("Loaded variant: ", variant)
if ENABLE_DEBUG_LOG then
    print("Debug logging is enabled!")
end

-- Utility Script for helper functions etc.
ScriptHost:LoadScript("scripts/utils.lua")

-- Logic
-- ScriptHost:LoadScript("scripts/logic/logic.lua")

-- Custom Items
ScriptHost:LoadScript("scripts/custom_items/class.lua")
ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlus.lua")
ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlusWrapper.lua")

-- Items
Tracker:AddItems("items/items.json")

-- if not IS_ITEMS_ONLY then -- <--- use variant info to optimize loading
--     -- Maps
--     -- Locations
-- end

Tracker:AddMaps("maps/maps.json")
Tracker:AddLocations("locations/locations.json")
Tracker:AddLocations("locations/blue_coins.json")
Tracker:AddLocations("locations/coin_shines.json")

-- Layout
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/maps.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

Tracker:AddLayouts("layouts/maps/airstrip.json")
Tracker:AddLayouts("layouts/maps/plaza.json")
Tracker:AddLayouts("layouts/maps/bianco.json")
Tracker:AddLayouts("layouts/maps/ricco.json")
Tracker:AddLayouts("layouts/maps/gelato.json")
Tracker:AddLayouts("layouts/maps/sandbird.json")
Tracker:AddLayouts("layouts/maps/pinna.json")
Tracker:AddLayouts("layouts/maps/sirena.json")
Tracker:AddLayouts("layouts/maps/hotel.json")
Tracker:AddLayouts("layouts/maps/noki.json")
Tracker:AddLayouts("layouts/maps/mare.json")
Tracker:AddLayouts("layouts/maps/pianta.json")
Tracker:AddLayouts("layouts/maps/underside.json")
Tracker:AddLayouts("layouts/maps/corona.json")

-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end
