set $mod Mod4
workspace_layout tabbed
new_window pixel 1
new_float normal
hide_edge_borders none
bindsym $mod+u border none
bindsym $mod+y border pixel 1
bindsym $mod+n border normal
font xft:URWGothic-Book 11
floating_modifier $mod
bindsym $mod+Return exec kitty
bindsym $mod+Shift+q kill
bindsym $mod+d exec --no-startup-id dmenu_run
exec --no-startup-id volumeicon
bindsym $mod+Ctrl+m exec terminal -e 'alsamixer'
#focus_on_window_activation focus


bindsym $mod+Ctrl+b exec terminal -e 'bmenu'
bindsym $mod+F2 exec firefox
bindsym $mod+F3 exec pcmanfm
bindsym $mod+Shift+F3 exec gksu pcmanfm
bindsym $mod+F5 exec terminal -e 'mocp'
bindsym $mod+Shift+d --release exec "killall dunst; exec notify-send 'restart dunst'"
bindsym Print exec --no-startup-id ksnip -r
bindsym $mod+Ctrl+x --release exec --no-startup-id xkill


bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

workspace_auto_back_and_forth yes
bindsym $mod+b workspace back_and_forth
bindsym $mod+Shift+b move container to workspace back_and_forth; workspace back_and_forth

bindsym $mod+h split h;exec notify-send 'tile horizontally'
bindsym $mod+v split v;exec notify-send 'tile vertically'
bindsym $mod+q split toggle

bindsym $mod+f fullscreen toggle

bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

bindsym $mod+Shift+space floating toggle

bindsym $mod+space focus mode_toggle

bindsym $mod+Shift+s sticky toggle

bindsym $mod+a focus parent

bindsym $mod+Shift+minus move scratchpad

bindsym $mod+minus scratchpad show

bindsym $mod+Ctrl+Right workspace next
bindsym $mod+Ctrl+Left workspace prev

set $ws1 1
set $ws2 2
set $ws3 3
set $ws4 4
set $ws5 5
set $ws6 6
set $ws7 7
set $ws8 8
set $ws9 9

bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9

bindsym $mod+Ctrl+1 move container to workspace $ws1
bindsym $mod+Ctrl+2 move container to workspace $ws2
bindsym $mod+Ctrl+3 move container to workspace $ws3
bindsym $mod+Ctrl+4 move container to workspace $ws4
bindsym $mod+Ctrl+5 move container to workspace $ws5
bindsym $mod+Ctrl+6 move container to workspace $ws6
bindsym $mod+Ctrl+7 move container to workspace $ws7
bindsym $mod+Ctrl+8 move container to workspace $ws8
bindsym $mod+Ctrl+9 move container to workspace $ws9

bindsym $mod+Shift+1 move container to workspace $ws1; workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2; workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3; workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4; workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5; workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6; workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7; workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8; workspace $ws8
bindsym $mod+Shift+9 move container to workspace $ws9; workspace $ws9


for_window [title="alsamixer"] floating enable border pixel 1
for_window [class="Pavucontrol"] floating enable
for_window [class="Skype"] floating enable border normal
for_window [class="Spotify"] move to workspace $ws9
assign [class="firefox"] $ws1
assign [class="Thunderbird"] $ws1
assign [class="kitty"] $ws2
assign [class="(?i)virtualbox"] $ws3
assign [class="Signal"] $ws8
assign [class="Slack"] $ws8

for_window [urgent=latest] focus

bindsym $mod+Shift+c reload

bindsym $mod+Shift+r restart

bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

bindsym $mod+0 mode "$mode_system"
set $mode_system (l)ock, (e)xit, switch_(u)ser, (s)uspend, (h)ibernate, (r)eboot, (Shift+s)hutdown
mode "$mode_system" {
    bindsym l exec --no-startup-id i3exit lock, mode "default"
    bindsym s exec --no-startup-id i3exit suspend, mode "default"
    bindsym u exec --no-startup-id i3exit switch_user, mode "default"
    bindsym e exec --no-startup-id i3exit logout, mode "default"
    bindsym h exec --no-startup-id i3exit hibernate, mode "default"
    bindsym r exec --no-startup-id i3exit reboot, mode "default"
    bindsym Shift+s exec --no-startup-id i3exit shutdown, mode "default"

    # exit system mode: "Enter" or "Escape"
    bindsym Return mode "default"
    bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode
        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 5 px or 5 ppt
        bindsym k resize grow height 5 px or 5 ppt
        bindsym l resize shrink height 5 px or 5 ppt
        bindsym semicolon resize grow width 5 px or 5 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 30 px or 30 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # exit resize mode: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}


exec --no-startup-id nm-applet
exec --no-startup-id volctl
exec --no-startup-id xfce4-power-manager
exec --no-startup-id clipit
exec --no-startup-id blueberry-tray
exec --no-startup-id birdtray

exec --no-startup-id xrandr
exec --no-startup-id "xrandr --output eDP1 --mode 1920x1080"
#exec --no-startup-id onescreen.sh

set_from_resource $term_background background
set_from_resource $term_foreground foreground
set_from_resource $term_color0     color0
set_from_resource $term_color1     color1
set_from_resource $term_color2     color2
set_from_resource $term_color3     color3
set_from_resource $term_color4     color4
set_from_resource $term_color5     color5
set_from_resource $term_color6     color6
set_from_resource $term_color7     color7
set_from_resource $term_color8     color8
set_from_resource $term_color9     color9
set_from_resource $term_color10    color10
set_from_resource $term_color11    color11
set_from_resource $term_color12    color12
set_from_resource $term_color13    color13
set_from_resource $term_color14    color14
set_from_resource $term_color15    color15

bar {
	i3bar_command i3bar
	status_command i3status
	position bottom


	bindsym button4 nop
	bindsym button5 nop
	strip_workspace_numbers yes

}

bindsym $mod+m bar mode toggle

#  client.focused          #556064 #556064 #80FFF9 #FDF6E3
#  client.focused_inactive #2F3D44 #2F3D44 #1ABC9C #454948
#  client.unfocused        #2F3D44 #2F3D44 #1ABC9C #454948
#  client.urgent           #CB4B16 #FDF6E3 #1ABC9C #268BD2
#  client.placeholder      #000000 #0c0c0c #ffffff #000000 
#
#  client.background       #2B2C2B


bindsym Control+mod1+l exec i3lock
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +5%
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -5% #decrease sound volume
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle # mute sound

#bindsym Control+Shift+KP_Subtract exec --no-startup-id amixer -q sset Master 5%+
#bindsym Control+Shift+KP_Multiply exec --no-startup-id amixer -q sset Master 5%-
#bindsym Control+Shift+KP_Divide exec --no-startup-id amixer  sset Master toggle -q
#
#bindsym Control+Shift+KP_6 exec --no-startup-id "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next"
#bindsym Control+Shift+KP_5 exec --no-startup-id "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"
#bindsym Control+Shift+KP_4 exec --no-startup-id "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Previous"
bindsym XF86MonBrightnessUp exec xbacklight -inc 40
bindsym XF86MonBrightnessDown exec xbacklight -dec 40

bindsym Control+Shift+F12 exec "xbacklight -inc 10; notify-send 'brightness up'"
bindsym Control+Shift+F11 exec "xbacklight -dec 10; notify-send 'brightness down'"

bindsym $mod+Control+F1 exec $HOME/.local/bin/onescreen.sh
exec --no-startup-id /usr/bin/thunderbird
