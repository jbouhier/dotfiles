local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

-- ============================================================================
-- CROSS-PLATFORM MODIFIERS
-- ============================================================================

local is_mac = wezterm.target_triple:find("apple") ~= nil
local mod = is_mac and "CMD" or "CTRL"
local alt = is_mac and "OPT" or "ALT"

-- ============================================================================
-- STYLING
-- ============================================================================

config.color_scheme = 'Tokyo Night'

config.font = wezterm.font {
  family = 'Fira Code',
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=1' },
}

config.font_size = 20
config.window_background_opacity = 0.95
config.macos_window_background_blur = 20

config.window_padding = {
  left = '10pt',
  right = '10pt',
  top = '10pt',
  bottom = '10pt',
}

-- ============================================================================
-- WINDOW BEHAVIOR
-- ============================================================================

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.audible_bell = "Disabled"
config.scrollback_lines = 50000
config.hyperlink_rules = wezterm.default_hyperlink_rules()
config.term = 'wezterm'

config.window_frame = {
  border_left_width = '0pt',
  border_right_width = '0pt',
  border_bottom_height = '0pt',
  border_top_height = '0pt',
}

-- ============================================================================
-- KEYBINDINGS
-- ============================================================================

config.keys = {
  -- ┌──────────────────────────────────────────────────────────────────────────
  -- │ TABS
  -- └──────────────────────────────────────────────────────────────────────────
  { key = 't',          mods = mod,             action = act.SpawnTab 'CurrentPaneDomain' },
  { key = '1',          mods = mod,             action = act.ActivateTab(0) },
  { key = '2',          mods = mod,             action = act.ActivateTab(1) },
  { key = '3',          mods = mod,             action = act.ActivateTab(2) },

  -- ┌──────────────────────────────────────────────────────────────────────────
  -- │ PANES: Split / Close / Zoom
  -- └──────────────────────────────────────────────────────────────────────────
  { key = 'd',          mods = mod,             action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'd',          mods = mod .. '|SHIFT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = 'w',          mods = mod,             action = act.CloseCurrentPane { confirm = false } },
  { key = 'z',          mods = mod .. '|SHIFT', action = act.TogglePaneZoomState },

  -- ┌──────────────────────────────────────────────────────────────────────────
  -- │ PANES: Navigation
  -- └──────────────────────────────────────────────────────────────────────────
  -- Cycle with brackets
  { key = '[',          mods = mod,             action = act.ActivatePaneDirection 'Prev' },
  { key = ']',          mods = mod,             action = act.ActivatePaneDirection 'Next' },
  { key = '[',          mods = mod .. '|SHIFT', action = act.ActivatePaneDirection 'Up' },
  { key = ']',          mods = mod .. '|SHIFT', action = act.ActivatePaneDirection 'Down' },
  -- Directional with arrows
  { key = 'LeftArrow',  mods = mod,             action = act.ActivatePaneDirection 'Left' },
  { key = 'RightArrow', mods = mod,             action = act.ActivatePaneDirection 'Right' },
  { key = 'UpArrow',    mods = mod,             action = act.ActivatePaneDirection 'Up' },
  { key = 'DownArrow',  mods = mod,             action = act.ActivatePaneDirection 'Down' },

  -- ┌──────────────────────────────────────────────────────────────────────────
  -- │ PANES: Resize
  -- └──────────────────────────────────────────────────────────────────────────
  { key = 'LeftArrow',  mods = mod .. '|SHIFT', action = act.AdjustPaneSize { 'Left', 5 } },
  { key = 'RightArrow', mods = mod .. '|SHIFT', action = act.AdjustPaneSize { 'Right', 5 } },
  { key = 'UpArrow',    mods = mod .. '|SHIFT', action = act.AdjustPaneSize { 'Up', 5 } },
  { key = 'DownArrow',  mods = mod .. '|SHIFT', action = act.AdjustPaneSize { 'Down', 5 } },

  -- ┌──────────────────────────────────────────────────────────────────────────
  -- │ SCROLLBACK: Clear / Search / Copy
  -- └──────────────────────────────────────────────────────────────────────────
  { key = 'k',          mods = mod,             action = act.ClearScrollback 'ScrollbackAndViewport' },
  { key = 'f',          mods = mod .. '|SHIFT', action = act.Search { CaseInSensitiveString = '' } },
  { key = 'x',          mods = mod .. '|SHIFT', action = act.ActivateCopyMode },

  -- ┌──────────────────────────────────────────────────────────────────────────
  -- │ TEXT INPUT: Word navigation / Special keys
  -- └──────────────────────────────────────────────────────────────────────────
  -- Restore OPT+Arrow word navigation (disabled by composed key settings)
  { key = 'LeftArrow',  mods = alt,             action = act.SendKey { key = 'b', mods = 'ALT' } },
  { key = 'RightArrow', mods = alt,             action = act.SendKey { key = 'f', mods = 'ALT' } },
  { key = 'Backspace',  mods = alt,             action = act.SendKey { key = 'w', mods = 'CTRL' } },
  -- Newline for CLI tools (Claude Code, etc.)
  { key = 'Enter',      mods = 'SHIFT',         action = act.SendString '\n' },
}

return config
