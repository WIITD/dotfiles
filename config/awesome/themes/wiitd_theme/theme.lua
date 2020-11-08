-- Based on ArchLabs theme config

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local xrdb = xresources.get_current_theme()
local gears = require("gears")
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local wallpapers = {
  "awesome_cliffs.jpg",
  "awesome_coast.jpg",
  "awesome_field.jpg",
  "awesome_flower.jpg",
  "awesome_forest.jpg",
  "awesome_mountains.jpg",
  "awesome_mountains2.jpg",
  "awesome_mountains3.jpg",
  "awesome_mountains5.jpg",
  "awesome_mountains6.jpg",
  "awesome_pathway.jpg",
}

local gifs = {
  "gif_cat_coffee.gif",
  "gif_cat_coffee2.gif",
  "gif_coffee.gif",
  "gif_coffee_cup.gif",
  "gif_coffee_reflection.gif",
}

-- Inherit default theme
local theme = dofile(themes_path.."default/theme.lua")
math.randomseed(os.time())

theme.wallpaper = "~/.config/awesome/themes/wiitd_theme/wallpapers/"..wallpapers[math.random(1, #wallpapers)]
theme.gif = "~/.config/awesome/themes/wiitd_theme/gifs/"..gifs[math.random(1, 5)]

local color_scheme = "wiitd_clr_Void"

-- wiitd_clr_Void theme
if color_scheme == "wiitd_clr_Void" then
    theme.xbackground = "#130e16"
    theme.xforeground = "#cfc9d2"
    theme.xcolor0 = "#130e16"
    theme.xcolor1 = "#9c8eb2"
    theme.xcolor2 = "#cfc9d2"
    theme.xcolor3 = "#9c8eb2"
    theme.xcolor4 = "#ce1a38"
-- wii_clr_Byond
elseif color_scheme == "wiitd_clr_Byond" then
    theme.xbackground = "#dbc5e5"
    theme.xforeground = "#110f11"
    theme.xcolor0 = "#dbc5e5"
    theme.xcolor1 = "#554372"
    theme.xcolor2 = "#110f11"
    theme.xcolor3 = "#554372"
    theme.xcolor4 = "#ce1a38"
elseif color_scheme == "wiitd_clr_Abyss" then
    theme.xbackground = "#111111"
    theme.xforeground = "#d9d9f7"
    theme.xcolor0 = "#111111"
    theme.xcolor1 = "#60607a"
    theme.xcolor2 = "#d9d9f7"
    theme.xcolor3 = "#60607a"
    theme.xcolor4 = "#ce1a38"
else
    theme.xbackground = "#130e16"
    theme.xforeground = "#cfc9d2"
    theme.xcolor0 = "#130e16"
    theme.xcolor1 = "#9c8eb2"
    theme.xcolor2 = "#cfc9d2"
    theme.xcolor3 = "#9c8eb2"
    theme.xcolor4 = "#ce1a38"
end

-- RBGA
local transparent = "#00000000" --00000000

theme.font          = "Font Awesome 5 Free 9"

theme.bg_normal     = theme.xcolor3
theme.bg_focus      = theme.xcolor3
theme.bg_urgent     = theme.xcolor4
theme.bg_minimize   = theme.xbackground
theme.bg_systray    = theme.xbackground

theme.fg_normal     = theme.xforeground
theme.fg_focus      = theme.xcolor1
theme.fg_urgent     = theme.xbackground
theme.fg_minimize   = theme.xcolor3

theme.useless_gap   = dpi(2)
theme.border_width  = dpi(0)
theme.border_radius  = dpi(3)
theme.border_normal = theme.xcolor0
theme.border_focus  = theme.bg_focus
theme.border_marked = theme.xbackground

-- Taglist
theme.taglist_font = "FontAwesome 9"
theme.taglist_bg = theme.xcolor0
theme.taglist_bg_focus = theme.xcolor0
theme.taglist_fg_focus = theme.xforeground
theme.taglist_bg_urgent = theme.xcolor0
theme.taglist_fg_urgent = theme.xforeground
theme.taglist_bg_occupied = transparent
theme.taglist_fg_occupied = theme.xcolor3
theme.taglist_bg_empty = transparent
theme.taglist_bg_volatile = transparent
theme.taglist_fg_volatile = theme.xcolor2

-- Tasklist
theme.tasklist_font = "FontAwesome 9"
theme.tasklist_bg_focus = theme.xbackground
theme.tasklist_fg_focus = theme.xcolor2
theme.tasklist_bg_urgent = theme.xbackground
theme.tasklist_fg_urgent = theme.xcolor1
theme.tasklist_bg_normal = theme.xbackground
theme.tasklist_fg_normal = theme.xcolor1

-- Titlebars
theme.titlebar_size = dpi(0)

-- Tooltips
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
theme.tooltip_fg = theme.fg_normal
theme.tooltip_bg = theme.bg_normal

-- Notifications
theme.notification_position = "top_right"
theme.notification_border_width = dpi(0)
theme.notification_border_radius = theme.border_radius
theme.notification_border_color = theme.xbackground
theme.notification_bg = theme.xbackground
theme.notification_fg = theme.xcolor2
theme.notification_crit_bg = theme.xcolor4
theme.notification_crit_fg = theme.xcolor0
theme.notification_icon_size = dpi(60)
theme.notification_margin = dpi(15)
theme.notification_opacity = 0.95
theme.notification_font = theme.font
theme.notification_padding = dpi(20)
theme.notification_spacing = dpi(10)

-- Edge snap
theme.snap_bg = theme.xcolor1
theme.snap_shape = gears.shape.rectangle

-- Prompts
theme.prompt_bg = transparent
theme.prompt_fg = theme.xforeground

-- Tooltips
theme.tooltip_bg = theme.xcolor0
theme.tooltip_fg = theme.xforeground
theme.tooltip_font = theme.font
theme.tooltip_border_width = dpi(0)
theme.tooltip_border_color = theme.xcolor0
theme.tooltip_opacity = 0.95
theme.tooltip_align = "left"

-- Battery bar
theme.battery_bar_active_color = theme.xcolor1
theme.battery_bar_background_color = theme.xcolor0

-- Menu
theme.menu_bg_focus = theme.xcolor0
theme.menu_fg_focus = theme.xcolor2
theme.menu_bg_normal = theme.xbackground
theme.menu_fg_normal = theme.xcolor3
theme.menu_submenu_icon = ""
theme.menu_height = dpi(30)
theme.menu_width  = dpi(180)

-- Generate taglist squares:
-- Set size 0 to disable
local taglist_square_size = dpi(0)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.xcolor4
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.xcolor7
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Try to determine if we are running light or dark colorscheme:
local bg_numberic_value = 0;
for s in theme.bg_normal:gmatch("[a-fA-F0-9][a-fA-F0-9]") do
    bg_numberic_value = bg_numberic_value + tonumber("0x"..s);
end
local is_dark_bg = (bg_numberic_value < 383)

return theme


