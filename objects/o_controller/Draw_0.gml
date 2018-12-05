/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7AC688A4
/// @DnDArgument : "code" "vx = camera_get_view_x(view_camera[0]);$(13_10)vy = camera_get_view_y(view_camera[0]);$(13_10)$(13_10)$(13_10)if time > 90 {$(13_10)	sy = 0$(13_10)} else {$(13_10)	sy = (1 - time / 90) * (251 - 27)$(13_10)}$(13_10)$(13_10)$(13_10)draw_sprite_part(s_waterbottle_water, -1, $(13_10)0, sy + 27, $(13_10)91, 251 - sy, $(13_10)vx + 64, vy + 32 + sy + 27)$(13_10)$(13_10)draw_sprite_part(s_waterbottle, -1, $(13_10)0, 0, $(13_10)91, 251, $(13_10)vx + 64, vy + 32)$(13_10)$(13_10)draw_sprite(s_up, 0, vx + 96, vy + 448)$(13_10)draw_sprite(s_down, 0, vx + 96, vy + 576)$(13_10)draw_sprite(s_left, 0, vx + 32, vy + 512)$(13_10)draw_sprite(s_right, 0, vx + 160, vy + 512)$(13_10)$(13_10)"
vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);


if time > 90 {
	sy = 0
} else {
	sy = (1 - time / 90) * (251 - 27)
}


draw_sprite_part(s_waterbottle_water, -1, 
0, sy + 27, 
91, 251 - sy, 
vx + 64, vy + 32 + sy + 27)

draw_sprite_part(s_waterbottle, -1, 
0, 0, 
91, 251, 
vx + 64, vy + 32)

draw_sprite(s_up, 0, vx + 96, vy + 448)
draw_sprite(s_down, 0, vx + 96, vy + 576)
draw_sprite(s_left, 0, vx + 32, vy + 512)
draw_sprite(s_right, 0, vx + 160, vy + 512)