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
_addon.name     = 'SkeletonKey';
_addon.version  = '1.0';

require 'common'

---------------------------------------------------------------------------------------------------
-- func: command
-- desc: Called when our addon receives a command.
---------------------------------------------------------------------------------------------------
ashita.register_event('command', function(cmd, nType)    
    -- Ensure we should handle this command..
    local args = cmd:GetArgs();
    if (args[1] ~= '/skeletonkey') then
        return false;
    end
    
    -- Ensure we have a target..
    local target = AshitaCore:GetDataManager():GetTarget();
    if (target == nil or target:GetTargetEntity() == nil) then
        print('\30\02[SkeletonKey] You must target a door!');
        return true;
    end
    
    -- Ensure we are targeting a door..
    local entity = target:GetTargetEntity();
    local isDoor = bit.band(entity.SpawnFlags, 0x20) == 0x20;
    if (isDoor == false) then
        print('\30\02[SkeletonKey] You must target a door!');
        return true;
    end
    
    -- Set the doors status to open..
    entity.Status = 8;
    entity.StatsServer = 8;
    
    return true;
end );
