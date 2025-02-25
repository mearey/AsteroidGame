/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
boss_killed= false
boss = false
event_inherited();

lighting_layer = level_1__sun

foreground_layer = ruinedearth
hp_mod = 0
boss_obj = OrbOfScorb

level3 = true

songs = [Level3Song, lvl3songvar2, lvl3songvar3]

t_min = 99
t_sec = 59
t_mil = 0

PlaySong(array_get_random(songs))