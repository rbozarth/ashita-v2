--[[
 *
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
 *
]]--

settings = settings or { };
settings.JSON = require 'JSON.json'

----------------------------------------------------------------------
-- func : settings.save
-- desc : Saves a table as a JSON config file.
-- retn : True on success, false otherwise.
----------------------------------------------------------------------
function settings:save(name, t)
    -- JSON encode the settings..
    local cfg = settings.JSON:encode_pretty(t);
    if (cfg == nil) then
        return false;
    end

    -- Attempt to save the file..
    local f = io.open(name, 'w');
    if (f == nil) then
        print('Failed to save configuration.');
        return false;
    end

    -- Write the file data..
    f:write(cfg);
    f:close();

    return true;
end

----------------------------------------------------------------------
-- func : settings.load
-- desc : Loads a json configuration file into a table.
-- retn : Table on success, nil otherwise.
----------------------------------------------------------------------
function settings:load(name)
    -- Attempt to open the file..
    local f = io.open(name, 'r');
    if (f == nil) then
        return nil;
    end

    -- Read the file data..
    local raw_cfg = f:read('*a');
    f:close();

    -- Attempt to decode the file data..
    local cfg = settings.JSON:decode(raw_cfg);
    if (type(cfg) == 'table') then
        return cfg;
    end

    return nil;
end
