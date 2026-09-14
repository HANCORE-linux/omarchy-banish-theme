-- Banished: theme-local window borders and corner radius.
local active_border_color = "rgba(e4e4e4b3)"
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
  },
  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})
