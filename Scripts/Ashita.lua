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

--[[-----------------------------------------------------------------------
Helper Require Files
--]]-----------------------------------------------------------------------

require( 'events' );

--[[-----------------------------------------------------------------------
Ashita Pointer Table 
(Do not edit this if you do not know what you are doing!)

The pointers within this table can be accessed via the PointerManager
within Ashita's core interface.
--]]-----------------------------------------------------------------------
__ashita_pointers =
{
    ['addtochat'] =
    {
        ['pattern'] = '5355565733DB8BF96A08',
        ['mask']    = 'xxxxxxxxxx',
        ['offset']  = -6,
    },
    ['autotranslate'] = 
    {
        ['pattern'] = '145685ED578BF1C644241000C644241100C64424',
        ['mask']    = 'xxxxxxxxxxxxxxxxxxxx',
        ['offset']  = -6,
    },
    ['autotranslatethis'] = 
    {
        ['pattern'] = '8BFD83C9FF33C06A00F2AEF7D1496A01518B0D',
        ['mask']    = 'xxxxxxxxxxxxxxxxxxx',
        ['offset']  = 0,
    },
    ['decryptpacket'] =
    {
        ['pattern'] = 'b805000053558bac24c8050000563be857',
        ['mask']    = 'xxxxxxxxxxxxxxxxx',
        ['offset']  = -6,
    },
    ['encryptpacket'] =
    {
        ['pattern'] = '33c0558b6c24144956578d14cd0000000033ff85ed89542410',
        ['mask']    = 'xxxxxxxxxxxxxxxxxxxxxxxxx',
        ['offset']  = -6,
    },
    ['entityarray'] =
    {
        ['pattern'] = '8B560C8B042A8B0485',
        ['mask']    = 'xxxxxxxxx',
        ['offset']  = 9,
    },
    ['inputthis'] =
    {
        ['pattern'] = '3bcb74148b01ff502084c0740b8b0d',
        ['mask']    = 'xxxxxxxxxxxxxxx',
        ['offset']  = -4,   
    },
    ['inventory'] =
    {
        ['pattern'] = '8B15FFFFFFFF85D275FF33C0C3',
        ['mask']    = 'xx????xxx?xxx',
        ['offset']  = 2,
    },
    ['logfile'] =
    {
        ['pattern'] = '170084C075388B0D',
        ['mask']    = 'xxxxxxxx',
        ['offset']  = -8,
    },
    ['parsecommand'] = 
    {
        ['pattern'] = '8B8C24080400005556578D',
        ['mask']    = 'xxxxxxxxxxx',
        ['offset']  = -6,
    },
    ['party'] =
    {
        ['pattern'] = '0FBEC38D0C5256578BF58D0448',
        ['mask']    = 'xxxxxxxxxxxxx',
        ['offset']  = 22,    
    },
    ['player'] =
    {
        ['pattern'] = '8AFFFF83FFFFF6D91BC95F23C88BF18BC65EC3',
        ['mask']    = 'x??x??xxxxxxxxxxxxx',
        ['offset']  = 140,
    },
    ['target'] =
    {
        ['pattern'] = '53568BF18B480433DB3BCB75065E33C05B59C38B0D',
        ['mask']    = 'xxxxxxxxxxxxxxxxxxxxx',
        ['offset']  = 45,
    },
};

--[[-----------------------------------------------------------------------
Ashita Resource Table

This is the table of dat files that Ashita parses for its resources.
--]]-----------------------------------------------------------------------
__ashita_resources =
{
    { ["name"] = "spellname",   ["t"] = "string",   ["jp"] = 55582, ["na"] = 55702, ["fr"] = 56242, ["de"] = 55822 },
    { ["name"] = "spelldesc",   ["t"] = "string",   ["jp"] = 55614, ["na"] = 55734, ["fr"] = 56274, ["de"] = 55854 },
    { ["name"] = "abilityname", ["t"] = "string",   ["jp"] = 55581, ["na"] = 55701, ["fr"] = 56241, ["de"] = 55821 },
    { ["name"] = "abilitydesc", ["t"] = "string",   ["jp"] = 55613, ["na"] = 55733, ["fr"] = 56273, ["de"] = 55853 },
    { ["name"] = "spdata",      ["t"] = "spdata",   ["jp"] = 81,    ["na"] = 81,    ["fr"] = 81,    ["de"] = 81 },
    { ["name"] = "keyitems",    ["t"] = "string",   ["jp"] = 55575, ["na"] = 55697, ["fr"] = 56245, ["de"] = 55825 },
    { ["name"] = "days",        ["t"] = "string",   ["jp"] = 55538, ["na"] = 55658, ["fr"] = 56198, ["de"] = 55778 },
    { ["name"] = "statusnames", ["t"] = "string",   ["jp"] = 55605, ["na"] = 55725, ["fr"] = 56272, ["de"] = 55852 },
    { ["name"] = "directions",  ["t"] = "string",   ["jp"] = 55539, ["na"] = 55659, ["fr"] = 56199, ["de"] = 55779 },
    { ["name"] = "errors",      ["t"] = "string",   ["jp"] = 55526, ["na"] = 55646, ["fr"] = 56186, ["de"] = 55766 },
    { ["name"] = "jobs",        ["t"] = "string",   ["jp"] = 55536, ["na"] = 55467, ["fr"] = 56196, ["de"] = 55776 },
    { ["name"] = "regions",     ["t"] = "string",   ["jp"] = 55534, ["na"] = 55654, ["fr"] = 56194, ["de"] = 55774 },
    { ["name"] = "areas",       ["t"] = "string",   ["jp"] = 55535, ["na"] = 55465, ["fr"] = 56195, ["de"] = 55775 },
    { ["name"] = "weather",     ["t"] = "string",   ["jp"] = 55537, ["na"] = 55657, ["fr"] = 56197, ["de"] = 55777 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = 4,     ["na"] = 73,    ["fr"] = 56235, ["de"] = 55815 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = 5,     ["na"] = 74,    ["fr"] = 56236, ["de"] = 55816 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = 6,     ["na"] = 75,    ["fr"] = 56237, ["de"] = 55817 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = 7,     ["na"] = 76,    ["fr"] = 56238, ["de"] = 55818 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = 55548, ["na"] = 55668, ["fr"] = 56208, ["de"] = 55788 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = 8,     ["na"] = 77,    ["fr"] = 56239, ["de"] = 55819 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = 9,     ["na"] = 91,    ["fr"] = 56240, ["de"] = 55820 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = 55547, ["na"] = 55667, ["fr"] = 56207, ["de"] = 55787 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = -1,    ["na"] = 55669, ["fr"] = -1,    ["de"] = -1 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = -1,    ["na"] = 55670, ["fr"] = -1,    ["de"] = -1 },
    { ["name"] = "item",        ["t"] = "item",     ["jp"] = -1,    ["na"] = 55671, ["fr"] = -1,    ["de"] = -1 },
    { ["name"] = "mobskills",   ["t"] = "dialog",   ["jp"] = 7034,  ["na"] = 7035,  ["fr"] = 56271, ["de"] = 55851 }
};

--[[-----------------------------------------------------------------------
End Of Ashita Initialization
--]]-----------------------------------------------------------------------
