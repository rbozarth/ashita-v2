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
_addon.name     = 'test';
_addon.version  = '1.0';

require 'common'
require 'color'

---------------------------------------------------------------------------------------------------
-- func: load
-- desc: First called when our addon is loaded.
---------------------------------------------------------------------------------------------------
ashita.register_event('load', function()
    
    local test = 'hello world!';
    test = test:color(12) .. 'no color' .. test:color(22) .. test:color(3);
    
    print(test:stripcolor());
end );

---------------------------------------------------------------------------------------------------
-- func: unload
-- desc: Called when our addon is unloaded.
---------------------------------------------------------------------------------------------------
ashita.register_event('unload', function()    
end );

---------------------------------------------------------------------------------------------------
-- func: Command
-- desc: Called when our addon receives a command.
---------------------------------------------------------------------------------------------------
ashita.register_event('command', function(cmd, nType)
    print(cmd:hex());
    print(cmd:stripautotrans():hex());
    return false;
end );

---------------------------------------------------------------------------------------------------
-- func: Render
-- desc: Called when our addon is rendered.
---------------------------------------------------------------------------------------------------
ashita.register_event('render', function()
end );
