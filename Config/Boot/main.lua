
--[[

    Ashita v2 Boot config.boot_configuration
    
    Please edit this file carefully! Invalid values can and will crash Ashita
    to prevent the game from doing invalid things!

]]--

config = { };
config.boot_config = { }; -- Do not edit this line!

config.boot_config.name             = 'Default';            -- The name of this config.boot_configuration..
config.boot_config.auto_close       = false;                -- Auto-close the launcher when done injecting..
config.boot_config.language         = 2;                    -- The language id to use while running this instance of Ashita..
config.boot_config.test_server      = false;                -- Flag to determine if we are playing on the test server..
config.boot_config.log_level        = 4;                    -- The level of logging..

config.boot_config.windowed         = true;                 -- Force the game to render in a window.
config.boot_config.show_border      = true;                 -- The game window border shown flag..
config.boot_config.unhook_mouse     = true;                 -- The game window mouse hook flag..
config.boot_config.window_x         = 1024;                 -- The game window width..
config.boot_config.window_y         = 768;                  -- The game window height..
config.boot_config.startpos_x       = -1;                   -- The game window start position..
config.boot_config.startpos_y       = -1;                   -- The game window start position..
config.boot_config.background_x     = -1;                   -- The game window background width..
config.boot_config.background_y     = -1;                   -- The game window background height..
config.boot_config.menu_x           = -1;                   -- The game window menu width..
config.boot_config.menu_y           = -1;                   -- The game window menu height..

config.boot_config.boot_file        = '';                   -- The boot file to launch the game with..
config.boot_config.boot_command     = '';                   -- The boot command to pass to the executed boot file..
config.boot_config.startup_script   = 'Default.txt';        -- The script to execute when this instance of Ashita is initialized..

config.boot_config.d3d_presentparams_buffercount    = 1;    -- The Direct3D back buffer count to allow multisampling..
config.boot_config.d3d_presentparams_swapeffect     = 1;    -- The Direct3D swap effect to allow vsync..
