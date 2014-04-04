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
_addon.name     = 'Distance';
_addon.version  = '1.0';

---------------------------------------------------------------------------------------------------
-- func: load
-- desc: First called when our addon is loaded.
---------------------------------------------------------------------------------------------------
ashita.register_event('load', function()
    -- Create our font object..
    local f = AshitaCore:GetFontManager():CreateFontObject( '__distance_addon' );
    f:SetBold( true );
    f:SetColor( 0xFFFFFFFF );
    f:SetFont( 'Arial', 16 );
    f:SetPosition( -180, 20 );
    f:SetText( '0.0' );
    f:SetVisibility( true );
end );

---------------------------------------------------------------------------------------------------
-- func: unload
-- desc: Called when our addon is unloaded.
---------------------------------------------------------------------------------------------------
ashita.register_event('unload', function()
    -- Cleanup our font object..
    AshitaCore:GetFontManager():DeleteFontObject( '__distance_addon' );
end );

---------------------------------------------------------------------------------------------------
-- func: Render
-- desc: Called when our addon is rendered.
---------------------------------------------------------------------------------------------------
ashita.register_event('render', function()
    local party     = AshitaCore:GetDataManager():GetParty();
    local target    = AshitaCore:GetDataManager():GetTarget();
    local f         = AshitaCore:GetFontManager():CreateFontObject( '__distance_addon' );
    
    -- Ensure we have a valid player..
    if (party:GetPartyMemberActive(0) == false or party:GetPartyMemberID(0) == 0) then
        f:SetText( '0.0' );
        return;
    end
    
    -- Ensure we have a valid target..
    if (target:GetTargetEntity() == nil or target:GetTargetName() == '' or target:GetTargetID() == 0) then
        f:SetText( '0.0' );
        return;
    end
    
    -- Set the distance text..
    f:SetText( string.format( '%.1f', math.sqrt( target:GetTargetEntity().Distance ) ) );
end );
