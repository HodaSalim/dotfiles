local wezterm = require("wezterm")
return {
	font = wezterm.font("Recursive Mono Linear Static", {weight="Medium", stretch="Normal", style="Normal"}),
    font_size = 20,
    line_height = 1.2,
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	show_tab_index_in_tab_bar = false,
	automatically_reload_config = true,
	color_scheme = "rose-pine",
	window_background_opacity = 1,
    window_decorations = "RESIZE",
	enable_wayland = false,
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = false
}
