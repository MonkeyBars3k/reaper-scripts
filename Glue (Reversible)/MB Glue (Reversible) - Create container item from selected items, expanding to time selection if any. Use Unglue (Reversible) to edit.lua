-- @description MB Glue (Reversible): Create container item from selected items, expanding to time selection, if any
-- @author MonkeyBars
-- @version 1.25
-- @changelog Add "Glue (Reversible) ignoring time selection" script (https://github.com/MonkeyBars3k/ReaScripts/issues/43)
-- @provides [main] .
-- @link Forum https://forum.cockos.com/showthread.php?t=136273
-- @about Fork of matthewjumpsoffbuildings's Glue Groups scripts


package.path = package.path .. ";" .. string.match(({reaper.get_action_context()})[2], "(.-)([^\\/]-%.?([^%.\\/]*))$") .. "?.lua"
require("MB Glue (Reversible) Utils")

initGlueReversible(true)