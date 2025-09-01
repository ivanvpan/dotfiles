-- WezTerm configuration
local wezterm = require 'wezterm'
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Key bindings for tab navigation with Alt+number
config.keys = {}
for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'ALT',
    action = wezterm.action.ActivateTab(i - 1),
  })
end

-- Add Shift+Enter to insert a new line
table.insert(config.keys, {
  key = 'Enter',
  mods = 'SHIFT',
  action = wezterm.action.SendString '\n',
})

-- Return the configuration to wezterm
return config
