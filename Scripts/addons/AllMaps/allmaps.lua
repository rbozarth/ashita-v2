--[[
* Copyright (c) 2011-2014 - Ashita Development Team
*
* Ashita is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* Ashita is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with Ashita.  If not, see <http://www.gnu.org/licenses/>.
]]--

_addon.author   = 'atom0s';
_addon.name     = 'AllMaps';
_addon.version  = '1.0';

---------------------------------------------------------------------------------------------------
-- desc: AllMaps global table.
---------------------------------------------------------------------------------------------------
local allmaps   = { };

---------------------------------------------------------------------------------------------------
-- func: load
-- desc: First called when our addon is loaded.
---------------------------------------------------------------------------------------------------
ashita.register_event('load', function()
    -- Scan for the map call pointer..
    local sig = { 0xE9, 0xFF, 0xFF, 0xFF, 0xFF, 0x50, 0xE8, 0xFF, 0xFF, 0xFF, 0xFF, 0x0F, 0xBF, 0x96, 0xFF, 0xFF, 0xFF, 0xFF, 0x83, 0xC4, 0x04 };
    local ptr = mem:FindPattern('FFXiMain.dll', sig, #sig, "x????xx????xxx????xxx");
    
    -- Ensure we found a pointer..
    if (ptr == 0) then
        print('\30\105[AllMaps] (ERROR) Failed to find required signature; cannot patch!');
        return;
    end
    
    -- Adjust the pointer..
    ptr = ptr + 6;
    allmaps.ptr = ptr;
        
    -- Read the data we plan to replace..
    allmaps.backup = mem:ReadArray(ptr, 5);
        
    -- Overwrite the function with nops..
    local nops = { 0x90, 0x90, 0x90, 0x90, 0x90 };
    mem:WriteArray(allmaps.ptr, nops);        
end );

---------------------------------------------------------------------------------------------------
-- func: unload
-- desc: Called when our addon is unloaded.
---------------------------------------------------------------------------------------------------
ashita.register_event('unload', function()
    if (allmaps.backup ~= nil) then
        mem:WriteArray(allmaps.ptr, allmaps.backup);
    end
end );
