/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09A49A0C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var vx = camera_get_view_x(view_camera[0]);$(13_10)var vy = camera_get_view_y(view_camera[0]);$(13_10)$(13_10)if time > 0 && !o_player.nextRoom{$(13_10)	if torch_time > 30 {$(13_10)		o_light.radius = 300$(13_10)		torch_time = torch_time - delta_time/1000000$(13_10)	} else if torch_time > 0 {$(13_10)		o_light.radius = 250$(13_10)		torch_time = torch_time - delta_time/1000000$(13_10)	} else {$(13_10)		o_light.radius = 200$(13_10)	}$(13_10)	$(13_10)	o_pause.x = vx + 1050$(13_10)	o_pause.y = vy + 30$(13_10)	$(13_10)	o_up.x = vx + 96$(13_10)	o_up.y = vy + 448$(13_10)	o_down.x = vx + 96$(13_10)	o_down.y = vy + 576$(13_10)	o_left.x = vx + 32 $(13_10)	o_left.y = vy + 512$(13_10)	o_right.x = vx + 160 $(13_10)	o_right.y = vy + 512$(13_10)	$(13_10)	if instance_exists(o_attack) {$(13_10)		o_attack.x = vx + 992$(13_10)		o_attack.y = vy + 512	$(13_10)	}$(13_10)	$(13_10)	if instance_exists(o_open) {$(13_10)		o_open.x = vx + 992$(13_10)		o_open.y = vy + 400$(13_10)	}$(13_10)	$(13_10)}$(13_10)time = time - delta_time/1000000$(13_10)$(13_10)if time < 0 {$(13_10)	$(13_10)		instance_deactivate_all(false)$(13_10)		instance_activate_object(o_touch_controller)$(13_10)		instance_create_depth(vx, vy, 50, o_die_menu)$(13_10)		instance_create_depth(vx + 750, vy + 50, -150, o_home)$(13_10)		instance_create_depth(vx + 750, vy + 250, -150, o_level)$(13_10)		instance_create_depth(vx + 750, vy + 450, -150, o_restart)$(13_10)		$(13_10)		instance_create_depth(vx + 136, vy + 305, -100, o_fire)$(13_10)		instance_create_depth(vx + 1000, vy + 305, -100, o_fire)$(13_10)		instance_create_depth(vx+ 136, vy + 300, -100, o_wood)$(13_10)		instance_create_depth(vx + 1000, vy + 300, -100, o_wood)$(13_10)	$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

if time > 0 && !o_player.nextRoom{
	if torch_time > 30 {
		o_light.radius = 300
		torch_time = torch_time - delta_time/1000000
	} else if torch_time > 0 {
		o_light.radius = 250
		torch_time = torch_time - delta_time/1000000
	} else {
		o_light.radius = 200
	}
	
	o_pause.x = vx + 1050
	o_pause.y = vy + 30
	
	o_up.x = vx + 96
	o_up.y = vy + 448
	o_down.x = vx + 96
	o_down.y = vy + 576
	o_left.x = vx + 32 
	o_left.y = vy + 512
	o_right.x = vx + 160 
	o_right.y = vy + 512
	
	if instance_exists(o_attack) {
		o_attack.x = vx + 992
		o_attack.y = vy + 512	
	}
	
	if instance_exists(o_open) {
		o_open.x = vx + 992
		o_open.y = vy + 400
	}
	
}
time = time - delta_time/1000000

if time < 0 {
	
		instance_deactivate_all(false)
		instance_activate_object(o_touch_controller)
		instance_create_depth(vx, vy, 50, o_die_menu)
		instance_create_depth(vx + 750, vy + 50, -150, o_home)
		instance_create_depth(vx + 750, vy + 250, -150, o_level)
		instance_create_depth(vx + 750, vy + 450, -150, o_restart)
		
		instance_create_depth(vx + 136, vy + 305, -100, o_fire)
		instance_create_depth(vx + 1000, vy + 305, -100, o_fire)
		instance_create_depth(vx+ 136, vy + 300, -100, o_wood)
		instance_create_depth(vx + 1000, vy + 300, -100, o_wood)
	
}