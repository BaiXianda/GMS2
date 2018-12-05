/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B7F1A72
/// @DnDArgument : "code" "vx = camera_get_view_x(view_camera[0]);$(13_10)vy = camera_get_view_y(view_camera[0]);$(13_10)$(13_10)if instance_exists(o_pause) {$(13_10)	if o_pause.paused == 0 {$(13_10)		draw_sprite(s_pause, 0, vx + 1050, vy + 30)	$(13_10)	} else {$(13_10)		draw_sprite(s_pause, 1, vx + 1050, vy + 30)	$(13_10)	}$(13_10)}$(13_10)$(13_10)if instance_exists(o_attack) {$(13_10)	draw_sprite(s_attack, 0, vx + 992, vy + 512)$(13_10)}"
vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);

if instance_exists(o_pause) {
	if o_pause.paused == 0 {
		draw_sprite(s_pause, 0, vx + 1050, vy + 30)	
	} else {
		draw_sprite(s_pause, 1, vx + 1050, vy + 30)	
	}
}

if instance_exists(o_attack) {
	draw_sprite(s_attack, 0, vx + 992, vy + 512)
}