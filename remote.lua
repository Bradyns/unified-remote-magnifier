-- Magnifier (X11) remote using xdotool
local script = libs.script

-- ====== TWEAK THESE ======
local MOVE_PX = 80 -- Increase this to value

-- These are just defaults. Change them to whatever YOUR magnifier/zoom shortcuts are.
-- Example candidates (depending on what you use):
--   - KWin Zoom effect (if you bound it): Super+Plus / Super+Minus / Super+0
--   - App zoom (some apps): Ctrl+Plus / Ctrl+Minus
local KEY_ZOOM_IN  = "Super_L+equal"   -- "+" is usually Shift+"="; xdotool often wants "equal"
local KEY_ZOOM_OUT = "Super_L+minus"
local KEY_EXIT     = "Super_L+0"
local KEY_SUPER    = "Super_L"
-- =========================

local function sh(cmd)
  -- Runs on the HOST (server machine)
  script.shell(cmd)
end

local function key(combo)
  -- clearmodifiers helps avoid stuck modifiers from remote input
  sh("xdotool key --clearmodifiers " .. combo)
end

local function move(dx, dy)
  sh(string.format("xdotool mousemove_relative -- %d %d", dx, dy))
end

actions.noop = function()
  -- intentionally blank
end

actions.zoom_in = function()
  key(KEY_ZOOM_IN)
end

actions.zoom_out = function()
  key(KEY_ZOOM_OUT)
end

actions.mouse_up = function()
  move(0, -MOVE_PX)
end

actions.mouse_down = function()
  move(0, MOVE_PX)
end

actions.mouse_left = function()
  move(-MOVE_PX, 0)
end

actions.mouse_right = function()
  move(MOVE_PX, 0)
end

actions.super_key = function()
  key(KEY_SUPER)
end

actions.exit_magnifier = function()
  key(KEY_EXIT)
end
