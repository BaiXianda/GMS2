/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 021D9080
/// @DnDArgument : "code" "var mx$(13_10)var my$(13_10)$(13_10)var dv$(13_10)$(13_10)$(13_10)for(dv = 0; dv < 5; dv++){$(13_10)	mx = device_mouse_x(dv)$(13_10)	my = device_mouse_y(dv)$(13_10)	$(13_10)	if instance_exists(o_attack) {$(13_10)		if position_meeting(mx, my, o_attack){$(13_10)			if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)				audio_play_sound(a_fire, 2, false)$(13_10)				instance_create_layer(o_player.x,o_player.y,"Object_Layer",o_fireball)$(13_10)				if o_player.direction == 0 {$(13_10)					o_fireball.sprite_index = s_fireball_right	$(13_10)				} else if o_player.direction == 90 {$(13_10)					o_fireball.sprite_index = s_fireball_up	$(13_10)				} else if o_player.direction == 180 {$(13_10)					o_fireball.sprite_index = s_fireball_left	$(13_10)				} else {$(13_10)					o_fireball.sprite_index = s_fireball_down$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if position_meeting(mx, my, o_play){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_level)$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_credit){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_credit)$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_level1){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_level1)$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_level2){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_level2)$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_level3){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_level3)$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_level4){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_level4)$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_level5){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_level5)$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_level6){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_level6)$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_level7){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_level7)$(13_10)		}$(13_10)	}else if position_meeting(mx, my, o_pause){$(13_10)		var vx = camera_get_view_x(view_camera[0]);$(13_10)		var vy = camera_get_view_y(view_camera[0]);$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			if o_pause.paused == 0 {$(13_10)				o_pause.paused = 1$(13_10)				o_pause.image_index = 1$(13_10)				instance_deactivate_all(o_pause)$(13_10)				instance_activate_object(o_pause)$(13_10)				instance_create_depth(vx, vy, 50, o_pause_menu)$(13_10)				instance_create_depth(vx + 300, vy + 300, -150, o_home)$(13_10)				instance_create_depth(vx + 500, vy + 300, -150, o_level)$(13_10)				instance_create_depth(vx + 700, vy + 300, -150, o_restart)$(13_10)			} else {$(13_10)				o_pause.paused = 0$(13_10)				o_pause.image_index = 0$(13_10)				instance_activate_all()$(13_10)				instance_destroy(o_pause_menu)$(13_10)				instance_destroy(o_level)$(13_10)				instance_destroy(o_restart)$(13_10)				instance_destroy(o_home)$(13_10)			}$(13_10)			$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_level){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_level)$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_restart){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_restart()$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_home){$(13_10)		if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)			room_goto(r_start)$(13_10)		}$(13_10)	} $(13_10)	$(13_10)	// player control$(13_10)	if position_meeting(mx, my, o_left) {$(13_10)		if device_mouse_check_button(dv, mb_left) {$(13_10)			o_player.dir = 2$(13_10)		} else if device_mouse_check_button_released(dv, mb_left){$(13_10)			o_player.dir = 0$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_right){$(13_10)		if device_mouse_check_button(dv, mb_left) {$(13_10)			o_player.dir = 1$(13_10)		} else if device_mouse_check_button_released(dv, mb_left){$(13_10)			o_player.dir = 0$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_up){$(13_10)		if device_mouse_check_button(dv, mb_left) {$(13_10)			o_player.dir = 3$(13_10)		} else if device_mouse_check_button_released(dv, mb_left){$(13_10)			o_player.dir = 0$(13_10)		}$(13_10)	} else if position_meeting(mx, my, o_down){$(13_10)		if device_mouse_check_button(dv, mb_left) {$(13_10)			o_player.dir = 4$(13_10)		} else if device_mouse_check_button_released(dv, mb_left){$(13_10)			o_player.dir = 0$(13_10)		}$(13_10)	} $(13_10)	$(13_10)	$(13_10)}"
var mx
var my

var dv


for(dv = 0; dv < 5; dv++){
	mx = device_mouse_x(dv)
	my = device_mouse_y(dv)
	
	if instance_exists(o_attack) {
		if position_meeting(mx, my, o_attack){
			if device_mouse_check_button_pressed(dv, mb_left) {
				audio_play_sound(a_fire, 2, false)
				instance_create_layer(o_player.x,o_player.y,"Object_Layer",o_fireball)
				if o_player.direction == 0 {
					o_fireball.sprite_index = s_fireball_right	
				} else if o_player.direction == 90 {
					o_fireball.sprite_index = s_fireball_up	
				} else if o_player.direction == 180 {
					o_fireball.sprite_index = s_fireball_left	
				} else {
					o_fireball.sprite_index = s_fireball_down
				}
			}
		}
	}
	
	if position_meeting(mx, my, o_play){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_level)
		}
	} else if position_meeting(mx, my, o_credit){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_credit)
		}
	} else if position_meeting(mx, my, o_level1){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_level1)
		}
	} else if position_meeting(mx, my, o_level2){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_level2)
		}
	} else if position_meeting(mx, my, o_level3){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_level3)
		}
	} else if position_meeting(mx, my, o_level4){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_level4)
		}
	} else if position_meeting(mx, my, o_level5){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_level5)
		}
	} else if position_meeting(mx, my, o_level6){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_level6)
		}
	} else if position_meeting(mx, my, o_level7){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_level7)
		}
	}else if position_meeting(mx, my, o_pause){
		var vx = camera_get_view_x(view_camera[0]);
		var vy = camera_get_view_y(view_camera[0]);
		if device_mouse_check_button_pressed(dv, mb_left) {
			if o_pause.paused == 0 {
				o_pause.paused = 1
				o_pause.image_index = 1
				instance_deactivate_all(o_pause)
				instance_activate_object(o_pause)
				instance_create_depth(vx, vy, 50, o_pause_menu)
				instance_create_depth(vx + 300, vy + 300, -150, o_home)
				instance_create_depth(vx + 500, vy + 300, -150, o_level)
				instance_create_depth(vx + 700, vy + 300, -150, o_restart)
			} else {
				o_pause.paused = 0
				o_pause.image_index = 0
				instance_activate_all()
				instance_destroy(o_pause_menu)
				instance_destroy(o_level)
				instance_destroy(o_restart)
				instance_destroy(o_home)
			}
			
		}
	} else if position_meeting(mx, my, o_level){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_level)
		}
	} else if position_meeting(mx, my, o_restart){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_restart()
		}
	} else if position_meeting(mx, my, o_home){
		if device_mouse_check_button_pressed(dv, mb_left) {
			room_goto(r_start)
		}
	} 
	
	// player control
	if position_meeting(mx, my, o_left) {
		if device_mouse_check_button(dv, mb_left) {
			o_player.dir = 2
		} else if device_mouse_check_button_released(dv, mb_left){
			o_player.dir = 0
		}
	} else if position_meeting(mx, my, o_right){
		if device_mouse_check_button(dv, mb_left) {
			o_player.dir = 1
		} else if device_mouse_check_button_released(dv, mb_left){
			o_player.dir = 0
		}
	} else if position_meeting(mx, my, o_up){
		if device_mouse_check_button(dv, mb_left) {
			o_player.dir = 3
		} else if device_mouse_check_button_released(dv, mb_left){
			o_player.dir = 0
		}
	} else if position_meeting(mx, my, o_down){
		if device_mouse_check_button(dv, mb_left) {
			o_player.dir = 4
		} else if device_mouse_check_button_released(dv, mb_left){
			o_player.dir = 0
		}
	} 
	
	
}