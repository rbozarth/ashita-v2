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

----------------------------------------------------------------------
-- Languages Definitions
----------------------------------------------------------------------
Languages =
{
    Default         = 0x00,
    Japanese        = 0x01,
    English         = 0x02,
    French          = 0x03,
    Deutsch         = 0x04,
};

----------------------------------------------------------------------
-- Storage Type Definitions
----------------------------------------------------------------------
STORAGETYPE_INVENTORY   = 0;
STORAGETYPE_SAFE        = 1;
STORAGETYPE_STORAGE     = 2;
STORAGETYPE_TEMP        = 3;
STORAGETYPE_LOCKER      = 4;
STORAGETYPE_SATCHEL     = 5;
STORAGETYPE_SACK        = 6;
STORAGETYPE_CASE        = 7;

----------------------------------------------------------------------
-- Slot Type Definitions
----------------------------------------------------------------------
SLOT_MAIN       = 0;
SLOT_SHIELD     = 1;
SLOT_RANGE      = 2;
SLOT_AMMO       = 3;
SLOT_HEAD       = 4;
SLOT_BODY       = 5;
SLOT_HANDS      = 6;
SLOT_LEGS       = 7;
SLOT_FEET       = 8;
SLOT_NECK       = 9;
SLOT_WAIST      = 10;
SLOT_EARLEFT    = 11;
SLOT_EARRIGHT   = 12;
SLOT_RINGLEFT   = 13;
SLOT_RINGRIGHT  = 14;
SLOT_BACK       = 15;

----------------------------------------------------------------------
-- Job Definitions
----------------------------------------------------------------------
JOB_WAR = 1;
JOB_MNK = 2;
JOB_WHM = 3;
JOB_BLM = 4;
JOB_RDM = 5;
JOB_THF = 6;
JOB_PLD = 7;
JOB_DRK = 8;
JOB_BST = 9;
JOB_BRD = 10;
JOB_RNG = 11;
JOB_SAM = 12;
JOB_NIN = 13;
JOB_DRG = 14;
JOB_SMN = 15;
JOB_BLU = 16;
JOB_COR = 17;
JOB_PUP = 18;
JOB_DNC = 19;
JOB_SCH = 20;
JOB_GEO = 21;
JOB_RUN = 22;

----------------------------------------------------------------------
-- Skill Types
----------------------------------------------------------------------
SkillType =
{
    -- Weapon Skills
    HandToHand      = 1,
    Dagger          = 2,
    Sword           = 3,
    GreatSword      = 4,
    Axe             = 5,
    GreatAxe        = 6,
    Scythe          = 7,
    Polarm          = 8,
    Katana          = 9,
    GreatKatana     = 10,
    Club            = 11,
    Staff           = 12,

    -- Combat Skills
    Archery         = 25,
    Marksmanship    = 26,
    Throwing        = 27,
    Guard           = 28,
    Evasion         = 29,
    Shield          = 30,
    Parry           = 31,
    Divine          = 32,
    Healing         = 33,
    Enhancing       = 34,
    Enfeebling      = 35,
    Elemental       = 36,
    Dark            = 37,
    Summoning       = 38,
    Ninjitsu        = 39,
    Singing         = 40,
    String          = 41,
    Wind            = 42,
    BlueMagic       = 43,

    -- Crafting Skills
    Fishing         = 48,
    Woodworking     = 49,
    Smithing        = 50,
    Goldsmithing    = 51,
    Clothcraft      = 52,
    Leathercraft    = 53,
    Bonecraft       = 54,
    Alchemy         = 55,
    Cooking         = 56,
    Synergy         = 57,

    ChocoboDigging  = 58,
    
    Special         = 0xFF -- Pet food has this value.
};

----------------------------------------------------------------------
-- Ability Type Definitions
----------------------------------------------------------------------
AbilityType =
{
    General         = 0x00,
    Job             = 0x01,
    Pet             = 0x02,
    Weapon          = 0x03,
    Trait           = 0x04,
    BloodPactRage   = 0x06,
    Corsair         = 0x08,
    CorsairShot     = 0x09,
    BloodPactWard   = 0x0A,
    Samba           = 0x0B,
    Waltz           = 0x0C,
    Step            = 0x0D,
    Flourish1       = 0x0E,
    Scholar         = 0x0F,
    Jig             = 0x10,
    Flourish2       = 0x11,
    Monster         = 0x12,
    Flourish3       = 0x13,
    WeaponSkill     = 0x14,
    Rune            = 0x15,
    Ward            = 0x16,
    Effusion        = 0x17
};

----------------------------------------------------------------------
-- Element Type Definitions
----------------------------------------------------------------------
ElementType =
{
    Fire            = 0x00,
    Ice             = 0x01,
    Air             = 0x02,
    Earth           = 0x03,
    Thunder         = 0x04,
    Water           = 0x05,
    Light           = 0x06,
    Dark            = 0x07,
    Special         = 0x0F, -- Meteor has this type.
    Undecided       = 0xFF, -- Furnishings have this type in their item data.
};

----------------------------------------------------------------------
-- Element Color Definitions
----------------------------------------------------------------------
ElementColor =
{
    Red             = 0x00,
    Clear           = 0x01,
    Green           = 0x02,
    Yellow          = 0x03,
    Purple          = 0x04,
    Blue            = 0x05,
    White           = 0x06,
    Black           = 0x07,
};

----------------------------------------------------------------------
-- Equipment Mask Definitions
----------------------------------------------------------------------
EquipmentSlotMask =
{
    -- Slots
    None            = 0x0000,
    Main            = 0x0001,
    Sub             = 0x0002,
    Range           = 0x0004,
    Ammo            = 0x0008,
    Head            = 0x0010,
    Body            = 0x0020,
    Hands           = 0x0040,
    Legs            = 0x0080,
    Feet            = 0x0100,
    Neck            = 0x0200,
    Waist           = 0x0400,
    LEar            = 0x0800,
    REar            = 0x1000,
    LRing           = 0x2000,
    RRing           = 0x4000,
    Back            = 0x8000,
    
    -- Slot Groups
    Ears            = 0x1800,
    Rings           = 0x6000,
    All             = 0xFFFF,
};

----------------------------------------------------------------------
-- Item Flag Definitions
----------------------------------------------------------------------
ItemFlags =
{
    None            = 0x0000,
    Flag00          = 0x0001,
    Flag01          = 0x0002,
    Flag02          = 0x0004,
    Flag03          = 0x0008,
    Flag04          = 0x0010,
    Inscribable     = 0x0020,
    NoAuction       = 0x0040,
    Scroll          = 0x0080,
    Linkshell       = 0x0100,
    CanUse          = 0x0200,
    CanTradeNPC     = 0x0400,
    CanEquip        = 0x0800,
    NoSale          = 0x1000,
    NoDelivery      = 0x2000,
    NoTradePC       = 0x4000,
    Rare            = 0x8000,
    Ex              = 0x6040, -- NoAuction, NoDelivery, NoTrade
};

----------------------------------------------------------------------
-- Item Type Definitions
----------------------------------------------------------------------
ItemType =
{
    Nothing         = 0x0000,
    Item            = 0x0001,
    QuestItem       = 0x0002,
    Fish            = 0x0003,
    Weapon          = 0x0004,
    Armor           = 0x0005,
    Linkshell       = 0x0006,
    UsableItem      = 0x0007,
    Crystal         = 0x0008,
    Currency        = 0x0009,
    Furnishing      = 0x000A,
    Plant           = 0x000B,
    Flowerpot       = 0x000C,
    PuppetItem      = 0x000D,
    Mannequin       = 0x000E,
    Book            = 0x000F,
    RacingForm      = 0x0010,
    BettingSlip     = 0x0011,
    SoulPlate       = 0x0012,
    Reflector       = 0x0013,
    Logs            = 0x0014,
    LotteryTicket   = 0x0015,
    MazeTabula_M    = 0x0016,
    MazeTabula_R    = 0x0017,
    MazeVoucher     = 0x0018,
    MazeRune        = 0x0019,
    Evolith         = 0x001A,
    StorageSlip     = 0x001B,
    Type1           = 0x001C, -- Unknown
};

----------------------------------------------------------------------
-- Job Mask Definitions
----------------------------------------------------------------------
JobMask = 
{
    None            = 0x00000000,
    WAR             = 0x00000002,
    MNK             = 0x00000004,
    WHM             = 0x00000008,
    BLM             = 0x00000010,
    RDM             = 0x00000020,
    THF             = 0x00000040,
    PLD             = 0x00000080,
    DRK             = 0x00000100,
    BST             = 0x00000200,
    BRD             = 0x00000400,
    RNG             = 0x00000800,
    SAM             = 0x00001000,
    NIN             = 0x00002000,
    DRG             = 0x00004000,
    SMN             = 0x00008000,
    BLU             = 0x00010000,
    COR             = 0x00020000,
    PUP             = 0x00040000,
    DNC             = 0x00080000,
    SCH             = 0x00100000,
    GEO             = 0x00200000, -- Geomancer
    RUN             = 0x00400000, -- Rune Fencer
    MON             = 0x00800000,
    JOB24           = 0x01000000,
    JOB25           = 0x02000000,
    JOB26           = 0x04000000,
    JOB27           = 0x08000000,
    JOB28           = 0x10000000,
    JOB29           = 0x20000000,
    JOB30           = 0x40000000,
    JOB31           = 0x80000000,

    All             = 0x007FFFFE, -- Masks valid jobs.
};

----------------------------------------------------------------------
-- Magic Type Definitions
----------------------------------------------------------------------
MagicType =
{
    None            = 0x00,
    WhiteMagic      = 0x01,
    BlackMagic      = 0x02,
    SummonerPact    = 0x03,
    Ninjutsu        = 0x04,
    BardSong        = 0x05,
    BlueMagic       = 0x06,
    Geomancy        = 0x07,
};

----------------------------------------------------------------------
-- Puppet Slot Definitions
----------------------------------------------------------------------
PuppetSlot =
{
    None            = 0x00,
    Head            = 0x01,
    Body            = 0x02,
    Attachment      = 0x03,
};

----------------------------------------------------------------------
-- Race Type Definitions
----------------------------------------------------------------------
RaceType =
{
    None            = 0x0000,
    All             = 0x01FE,
    HumeMale        = 0x0002,
    HumeFemale      = 0x0004,
    ElvaanMale      = 0x0008,
    ElvaanFemale    = 0x0010,
    TarutaruMale    = 0x0020,
    TarutaruFemale  = 0x0040,
    Mithra          = 0x0080,
    Galka           = 0x0100,
    Hume            = 0x0006,
    Elvaan          = 0x0018,
    Tarutaru        = 0x0060,

    Male            = 0x012A,
    Female          = 0x00D4,
};

----------------------------------------------------------------------
-- Target Type Definitions
----------------------------------------------------------------------
TargetType =
{
    None            = 0x00,
    Self            = 0x01,
    Player          = 0x02,
    PartyMember     = 0x04,
    Ally            = 0x08,
    NPC             = 0x10,
    Enemy           = 0x20,
    Unknown         = 0x40,
    CorpseOnly      = 0x80,
    Corpse          = 0x9D -- CorpseOnly + NPC + Ally + Partymember + Self
};

