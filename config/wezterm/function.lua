local wezterm = require 'wezterm'
local module = {}
function module.apply_to_config(config)
    -- choose start-up shell
    config.default_prog = { 'C:\\ProgramData\\chocolatey\\bin\\nu.exe', '-l' }
    
    -- setup the launch menu
    config.launch_menu = {
        { label = 'Nu', args = { 'C:\\ProgramData\\chocolatey\\bin\\nu.exe', '-l' } },
    }

    -- add wsl domains
    config.wsl_domains = {
        { name = "Arch", distribution = "Arch" },
        { name = "NixOS", distribution = "NixOS" },
    }
    
end
return module