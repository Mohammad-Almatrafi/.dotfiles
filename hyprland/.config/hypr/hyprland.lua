-- ################
-- ### MONITORS ###
-- ################

-- # See https://wiki.hyprland.org/Configuring/Monitors/
hl.monitor({
	output = "",
	mode = "highrr",
	position = "auto",
	scale = 1,
})

-- ###################
-- ### MY PROGRAMS ###
-- ###################

-- # See https://wiki.hyprland.org/Configuring/Keywords/

-- # Set programs that you use
Terminal = "ghostty"
FileManager = "files"
Menu = "wofi --show drun"
Waybar_Restart = "exec ~/.config/waybar/waybar.sh"

-- #################
-- ### AUTOSTART ###
-- #################

hl.on("hyprland.start", function()
	hl.exec_cmd(Waybar_Restart)
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hyprctl hyprpaper wallpaper ', /home/rur1k/Downloads/2029381-final.png, '")
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)

-- #############################
-- ### ENVIRONMENT VARIABLES ###
-- #############################

-- # See https://wiki.hyprland.org/Configuring/Environment-variables/

-- env = XCURSOR_SIZE,24
-- env = HYPRCURSOR_SIZE,24
-- cursor:no_hardware_cursors = false

-- #####################
-- ### LOOK AND FEEL ###
-- #####################

-- # Refer to https://wiki.hyprland.org/Configuring/Variables/

-- # https://wiki.hyprland.org/Configuring/Variables/#general
hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 5,
		border_size = 1,
		resize_on_border = true,
		allow_tearing = false,

		layout = "dwindle",
		col = {

			active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			inactive_border = { colors = { "rgba(595959aa)", "rgba(595959aa)" }, angle = 0 },
		},
	},
})
-- # https://wiki.hyprland.org/Configuring/Variables/#variable-types for info about colors
--
-- # Set to true enable resizing windows by clicking and dragging on borders and gaps

-- # https://wiki.hyprland.org/Configuring/Variables/#decoration
hl.config({
	decoration = {
		rounding = 0,
		rounding_power = 0,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},
		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},
})

-- # https://wiki.hyprland.org/Configuring/Variables/#blur

-- # https://wiki.hyprland.org/Configuring/Variables/#animations
hl.config({ animations = { enabled = false } })

-- animations {
--     enabled = yes, please :)
--
--     -- # Default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more
--
--     bezier = easeOutQuint,0.23,1,0.32,1
--     bezier = easeInOutCubic,0.65,0.05,0.36,1
--     bezier = linear,0,0,1,1
--     bezier = almostLinear,0.5,0.5,0.75,1.0
--     bezier = quick,0.15,0,0.1,1
--
--     animation = global, 1, 10, default
--     animation = border, 1, 5.39, easeOutQuint
--     animation = windows, 1, 4.79, easeOutQuint
--     animation = windowsIn, 1, 4.1, easeOutQuint, popin 87%
--     animation = windowsOut, 1, 1.49, linear, popin 87%
--     animation = fadeIn, 1, 1.73, almostLinear
--     animation = fadeOut, 1, 1.46, almostLinear
--     animation = fade, 1, 3.03, quick
--     animation = layers, 1, 3.81, easeOutQuint
--     animation = layersIn, 1, 4, easeOutQuint, fade
--     animation = layersOut, 1, 1.5, linear, fade
--     animation = fadeLayersIn, 1, 1.79, almostLinear
--     animation = fadeLayersOut, 1, 1.39, almostLinear
--     animation = workspaces, 1, 1.94, almostLinear, fade
--     animation = workspacesIn, 1, 1.21, almostLinear, fade
--     animation = workspacesOut, 1, 1.94, almostLinear, fade
-- }

-- # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
-- hl.pseudotile = true
-- hl.preserve_split = true

-- # https://wiki.hyprland.org/Configuring/Variables/#misc
hl.config({
	-- misc = {
	-- force_default_wallpaper = 2,
	-- disable_hyprland_logo = false,
	-- },
})

-- #############
-- ### INPUT ###
-- #############
--
-- # https://wiki.hyprland.org/Configuring/Variables/#input
hl.config({
	input = {
		kb_layout = "us,ara",
		kb_variant = ",qwerty",
		kb_options = "grp:alt_shift_toggle",
		accel_profile = "flat",
		scroll_method = "on_button_down",
		scroll_button = 274, -- the value reported by wev

		touchpad = {
			natural_scroll = false,
		},
	},
})

-- ###################
-- ### KEYBINDINGS ###
-- ###################

-- # See https://wiki.hyprland.org/Configuring/Keywords/
-- Alt_L
MainMod = "SUPER" --# Sets "Windows" key as main modifier
plus = " + "

-- # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
hl.bind(MainMod .. plus .. "return", hl.dsp.exec_cmd(Terminal))
hl.bind(MainMod .. plus .. "SHIFT" .. plus .. "K", hl.dsp.window.kill())
hl.bind(MainMod .. plus .. "Q", hl.dsp.window.close(Terminal))
hl.bind(MainMod .. plus .. "M", hl.dsp.exit())
hl.bind(MainMod .. plus .. "E", hl.dsp.exec_cmd(FileManager))
hl.bind(MainMod .. plus .. "space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(MainMod .. plus .. "F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(MainMod .. plus .. "D", hl.dsp.exec_cmd(Menu))

-- # Move focus with mainMod + arrow keys
hl.bind(MainMod .. plus .. "H", hl.dsp.focus({ direction = "l" }))
hl.bind(MainMod .. plus .. "L", hl.dsp.focus({ direction = "r" }))
hl.bind(MainMod .. plus .. "K", hl.dsp.focus({ direction = "u" }))
hl.bind(MainMod .. plus .. "J", hl.dsp.focus({ direction = "d" }))
-- hl.bind(
-- 	MainMod .. plus .. "W",
-- 	hl.dsp.exec_cmd("hyprctl hyperpaper wallpaper ', /home/rur1k/Downloads/2029381-final.png, '")
-- )

-- # Switch workspaces with mainMod + [0-9]
for i = 1, 10 do
	local key = i % 10
	hl.bind(MainMod .. plus .. key, hl.dsp.focus({ workspace = key }))

	hl.bind(MainMod .. plus .. "SHIFT" .. plus .. key, hl.dsp.window.move({ workspace = key }))
end
hl.bind(MainMod .. plus .. "SHIFT" .. plus .. "R", hl.dsp.exec_cmd(Waybar_Restart))


hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | swappy -f -'))
