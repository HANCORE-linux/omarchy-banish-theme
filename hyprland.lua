-- Banished: theme-local borders, corners and soft floating window shadows.
local active_border_base = "rgba(e4e4e4b3)"
local active_border_bottom = "rgba(8f57ffb3)" -- colors.toml: color3, with the existing border opacity.
local active_border_color = {
  -- Bottom to top: the transition spans 40–60% of the window height.
  colors = {
    active_border_bottom, active_border_bottom, active_border_bottom,
    active_border_base, active_border_base, active_border_base,
  },
  angle = 270,
}
local inactive_border_color = "rgba(2a252e99)"

hl.config({
  general = {
    border_size = 1,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },
  decoration = {
    rounding = 3,
    shadow = {
      enabled = true,
      range = 18,
      render_power = 3,
      -- A compact black shadow gently lifts windows off the background.
      color = "rgba(00000066)",
      color_inactive = "rgba(00000044)",
      offset = { 0, 2 },
      scale = 1.0,
    },
  },
  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})
