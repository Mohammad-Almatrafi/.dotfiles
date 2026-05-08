-- ################
-- ### MONITORS ###
-- ################

-- # See https://wiki.hyprland.org/Configuring/Monitors/
hl.monitor({
	output = "", --"DP-1",
	mode = "highrr", --"1920x1080@144",
	position = "auto", --"0x0",
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

-- #################
-- ### AUTOSTART ###
-- #################

-- # Autostart necessary processes (like notifications daemons, status bars, etc.)
-- # Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function()
	hl.dsp.exec_cmd("~/.config/waybar/waybar.sh & hyprpaper")
	hl.dsp.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
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
hl.general.gaps_in = 0
hl.general.gaps_out = 5
hl.general.hl.general.border_size = 1
-- # https://wiki.hyprland.org/Configuring/Variables/#variable-types for info about colors
--
hl.general.col.active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 }
hl.general.col.inactive_border = { colors = { "rgba(595959aa)", "rgba(595959aa)" }, angle = 0 }
-- # Set to true enable resizing windows by clicking and dragging on borders and gaps
hl.general.resize_on_border = true

-- # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
hl.general.allow_tearing = false
hl.general.layout = "dwindle"

-- # https://wiki.hyprland.org/Configuring/Variables/#decoration
hl.decoration.rounding = 0

hl.decoration.rounding_power = 0
hl
	.decoration
	-- # Change transparency of focused and unfocused windows
	.hl
	.decoration
	.active_opacity = 1.0
hl.decoration.inactive_opacity = 1.0
hl.decoration.shadow.enabled = true
hl.decoration.shadow.range = 4
hl.decoration.shadow.render_power = 3
hl.decoration.shadow.color = "rgba(1a1a1aee)"
-- # https://wiki.hyprland.org/Configuring/Variables/#blur
hl.decoration.blur.enabled = true
hl.decoration.blur.size = 3
hl.decoration.blur.passes = 1
hl.decoration.blur.vibrancy = 0.1696

-- # https://wiki.hyprland.org/Configuring/Variables/#animations
hl.animations.enabled = true

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
hl.config.pseudotile = true
hl.config.preserve_split = true

-- # https://wiki.hyprland.org/Configuring/Variables/#misc
hl.misc.force_default_wallpaper = 2
hl.misc.disable_hyprland_logo = false

-- #############
-- ### INPUT ###
-- #############
--

-- # https://wiki.hyprland.org/Configuring/Variables/#input

hl.input.kb_layout = "us,ara"
hl.input.kb_variant = ",qwerty"
hl.input.kb_options = "grp:win_space_toggle"
hl.input.accel_profile = "flat"
-- hl.input.force_no_accel = true
hl.input.scroll_method = "on_button_down"
hl.input.scroll_button = 274 -- the value reported by wev

hl.input.touchpad.natural_scroll = false

-- ###################
-- ### KEYBINDINGS ###
-- ###################

-- # See https://wiki.hyprland.org/Configuring/Keywords/
-- Alt_L
MainMod = "SUPER" --# Sets "Windows" key as main modifier

-- # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
hl.bind(MainMod .. "return", hl.dsp.exec_cmd({ cmd = Terminal }))
hl.bind(MainMod .. "Q", hl.dsp.window.kill())
hl.bind(MainMod .. "M", hl.dsp.exit())
hl.bind(MainMod .. "E", hl.dsp.exec_cmd({ cmd = FileManager }))
hl.bind(MainMod .. "space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(MainMod .. "F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(MainMod .. "D", hl.dsp.exec_cmd({ cmd = Menu }))

-- # Move focus with mainMod + arrow keys
hl.bind(MainMod .. "H", hl.dsp.focus({ direction = "l" }))
hl.bind(MainMod .. "L", hl.dsp.focus({ direction = "r" }))
hl.bind(MainMod .. "K", hl.dsp.focus({ direction = "u" }))
hl.bind(MainMod .. "J", hl.dsp.focus({ direction = "d" }))

-- # Switch workspaces with mainMod + [0-9]
hl.bind(MainMod .. "1", hl.dsp.focus({ workspace = 1 }))
hl.bind(MainMod .. "2", hl.dsp.focus({ workspace = 2 }))
hl.bind(MainMod .. "3", hl.dsp.focus({ workspace = 3 }))
hl.bind(MainMod .. "4", hl.dsp.focus({ workspace = 4 }))
hl.bind(MainMod .. "5", hl.dsp.focus({ workspace = 5 }))
hl.bind(MainMod .. "6", hl.dsp.focus({ workspace = 6 }))
hl.bind(MainMod .. "7", hl.dsp.focus({ workspace = 7 }))
hl.bind(MainMod .. "8", hl.dsp.focus({ workspace = 8 }))
hl.bind(MainMod .. "9", hl.dsp.focus({ workspace = 9 }))
hl.bind(MainMod .. "0", hl.dsp.focus({ workspace = 10 }))

hl.bind(MainMod .. "1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(MainMod .. "2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(MainMod .. "3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(MainMod .. "4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(MainMod .. "5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(MainMod .. "6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(MainMod .. "7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(MainMod .. "8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(MainMod .. "9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(MainMod .. "0", hl.dsp.window.move({ workspace = 10 }))

-- # Move active window to a workspace with mainMod + SHIFT + [0-9]
-- bind = $mainMod SHIFT, R, exec, ~/.config/waybar/waybar.sh

-- # Example special workspace (scratchpad)
-- # bind = $mainMod, S, togglespecialworkspace, magic
-- # bind = $mainMod SHIFT, S, movetoworkspace, special:magic
--
-- # Scroll through existing workspaces with mainMod + scroll
-- bind = $mainMod, mouse_down, workspace, e+1
-- bind = $mainMod, mouse_up, workspace, e-1
--
-- # Move/resize windows with mainMod + LMB/RMB and dragging
-- bindm = $mainMod, mouse:272, movewindow
-- bindm = $mainMod, mouse:273, resizewindow
-- bind = $mainMod SHIFT, H, movewindow,l
-- bind = $mainMod SHIFT, J, movewindow,d
-- bind = $mainMod SHIFT, K, movewindow,u
-- bind = $mainMod SHIFT, L, movewindow,r
--
-- # Laptop multimedia keys for volume and LCD brightness
-- bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
-- bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
-- bindel = ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
-- bindel = ,XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
-- bindel = ,XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+
-- bindel = ,XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-
--
-- # Requires playerctl
-- bindl = , XF86AudioNext, exec, playerctl next
-- bindl = , XF86AudioPause, exec, playerctl play-pause
-- bindl = , XF86AudioPlay, exec, playerctl play-pause
-- bindl = , XF86AudioPrev, exec, playerctl previous
--
-- ##############################
-- ### WINDOWS AND WORKSPACES ###
-- ##############################
--
-- # See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
-- # See https://wiki.hyprland.org/Configuring/Workspace-Rules/ for workspace rules
--
-- # Example windowrule
-- # windowrule = float,class:^(kitty)$,title:^(kitty)$
--
-- # Ignore maximize requests from apps. You'll probably like this.
-- # windowrule = suppressevent maximize, class:.*
--
-- # Fix some dragging issues with XWayland
-- # windowrule = nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0
