local wezterm = require 'wezterm'
local module = {}
function module.apply_to_config(config)
    -- color scheme
    config.color_scheme = 'Catppuccin Mocha'

    -- tab bar
    config.use_fancy_tab_bar = false

    -- fonts (mutiple settings)
    config.font_size = 12.0
    config.font = wezterm.font_with_fallback {
        {
            family = 'Monaspace Neon',
            weight = 'Regular',
            -- see: https://monaspace.githubnext.com/#learn-more
            harfbuzz_features = { 'calt', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08', 'ss09', 'liga' },
        }
    }

end
return module