/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3ABF30CF
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// player control$(13_10)$(13_10)if keyboard_check(vk_up) || dir == 3 {$(13_10)	direction = 90;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_player_up$(13_10)	image_speed = img_speed$(13_10)	audio_resume_sound(a_walk)$(13_10)} else if keyboard_check(vk_down) || dir == 4{$(13_10)	direction = 270;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_player_down$(13_10)	image_speed = img_speed$(13_10)	audio_resume_sound(a_walk)$(13_10)} else if keyboard_check(vk_left) || dir == 2{$(13_10)	direction = 180;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_player_left$(13_10)	image_speed = img_speed$(13_10)	audio_resume_sound(a_walk)$(13_10)} else if keyboard_check(vk_right) || dir == 1{$(13_10)	direction = 0;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_player_right$(13_10)	image_speed = img_speed$(13_10)	audio_resume_sound(a_walk)$(13_10)} else {$(13_10)	audio_pause_sound(a_walk)$(13_10)	speed = 0	$(13_10)	if direction == 0 {$(13_10)		sprite_index = s_player_right_ide$(13_10)	} else if direction == 90 {$(13_10)		sprite_index = s_player_back_ide$(13_10)	} else if direction == 180 {$(13_10)		sprite_index = s_player_left_ide$(13_10)	} else {$(13_10)		sprite_index = s_player_front_ide$(13_10)	}$(13_10)}$(13_10)$(13_10)if nextRoom {$(13_10)	o_light.radius -= 2$(13_10)	if o_light.radius < 0 {$(13_10)		room_goto_next()$(13_10)	} $(13_10)	instance_deactivate_object(o_touch_controller)$(13_10)	audio_pause_sound(a_walk)$(13_10)	speed = 0	$(13_10)	if direction == 0 {$(13_10)		sprite_index = s_player_right_ide$(13_10)	} else if direction == 90 {$(13_10)		sprite_index = s_player_back_ide$(13_10)	} else if direction == 180 {$(13_10)		sprite_index = s_player_left_ide$(13_10)	} else {$(13_10)		sprite_index = s_player_front_ide$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if key > 0{$(13_10)	var mx$(13_10)	var my$(13_10)	var dv$(13_10)$(13_10)	for(dv = 0; dv < 5; dv++){$(13_10)		mx = device_mouse_x(dv)$(13_10)		my = device_mouse_y(dv)$(13_10)		if position_meeting(mx, my, o_open){$(13_10)			if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)				var dx = x$(13_10)				var dy = y$(13_10)$(13_10)				if direction == 0 {$(13_10)					dx += 35$(13_10)				} else if direction == 90 {$(13_10)					dy -= 35$(13_10)				} else if direction == 180 {	$(13_10)					dx -= 35$(13_10)				} else {$(13_10)					dy += 35$(13_10)				}$(13_10)$(13_10)				door = instance_place(dx, dy, o_door)$(13_10)$(13_10)				if door != noone {$(13_10)					// delete wall tile after door is open$(13_10)					var tilemap = layer_tilemap_get_id("wall")$(13_10)					var tile = tilemap_get_at_pixel(tilemap, door.x, door.y);$(13_10)					tile = tile_set_empty(tile)$(13_10)					tilemap_set_at_pixel(tilemap, tile, door.x, door.y)$(13_10)					instance_destroy(door)$(13_10)					key--$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)} else {$(13_10)	instance_destroy(o_open)	$(13_10)}"
/// @description Execute Code
// player control

if keyboard_check(vk_up) || dir == 3 {
	direction = 90;
	speed = move_speed;
	sprite_index = s_player_up
	image_speed = img_speed
	audio_resume_sound(a_walk)
} else if keyboard_check(vk_down) || dir == 4{
	direction = 270;
	speed = move_speed;
	sprite_index = s_player_down
	image_speed = img_speed
	audio_resume_sound(a_walk)
} else if keyboard_check(vk_left) || dir == 2{
	direction = 180;
	speed = move_speed;
	sprite_index = s_player_left
	image_speed = img_speed
	audio_resume_sound(a_walk)
} else if keyboard_check(vk_right) || dir == 1{
	direction = 0;
	speed = move_speed;
	sprite_index = s_player_right
	image_speed = img_speed
	audio_resume_sound(a_walk)
} else {
	audio_pause_sound(a_walk)
	speed = 0	
	if direction == 0 {
		sprite_index = s_player_right_ide
	} else if direction == 90 {
		sprite_index = s_player_back_ide
	} else if direction == 180 {
		sprite_index = s_player_left_ide
	} else {
		sprite_index = s_player_front_ide
	}
}

if nextRoom {
	o_light.radius -= 2
	if o_light.radius < 0 {
		room_goto_next()
	} 
	instance_deactivate_object(o_touch_controller)
	audio_pause_sound(a_walk)
	speed = 0	
	if direction == 0 {
		sprite_index = s_player_right_ide
	} else if direction == 90 {
		sprite_index = s_player_back_ide
	} else if direction == 180 {
		sprite_index = s_player_left_ide
	} else {
		sprite_index = s_player_front_ide
	}

}


if key > 0{
	var mx
	var my
	var dv

	for(dv = 0; dv < 5; dv++){
		mx = device_mouse_x(dv)
		my = device_mouse_y(dv)
		if position_meeting(mx, my, o_open){
			if device_mouse_check_button_pressed(dv, mb_left) {
				var dx = x
				var dy = y

				if direction == 0 {
					dx += 35
				} else if direction == 90 {
					dy -= 35
				} else if direction == 180 {	
					dx -= 35
				} else {
					dy += 35
				}

				door = instance_place(dx, dy, o_door)

				if door != noone {
					// delete wall tile after door is open
					var tilemap = layer_tilemap_get_id("wall")
					var tile = tilemap_get_at_pixel(tilemap, door.x, door.y);
					tile = tile_set_empty(tile)
					tilemap_set_at_pixel(tilemap, tile, door.x, door.y)
					instance_destroy(door)
					key--
				}
			}
		}
	}
} else {
	instance_destroy(o_open)	
}