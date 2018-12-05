/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3ABF30CF
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// player control$(13_10)$(13_10)if keyboard_check(vk_up) || dir == 3 {$(13_10)	direction = 90;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_player_up$(13_10)	image_speed = img_speed$(13_10)	audio_resume_sound(a_walk)$(13_10)} else if keyboard_check(vk_down) || dir == 4{$(13_10)	direction = 270;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_player_down$(13_10)	image_speed = img_speed$(13_10)	audio_resume_sound(a_walk)$(13_10)} else if keyboard_check(vk_left) || dir == 2{$(13_10)	direction = 180;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_player_left$(13_10)	image_speed = img_speed$(13_10)	audio_resume_sound(a_walk)$(13_10)} else if keyboard_check(vk_right) || dir == 1{$(13_10)	direction = 0;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_player_right$(13_10)	image_speed = img_speed$(13_10)	audio_resume_sound(a_walk)$(13_10)} else {$(13_10)	audio_pause_sound(a_walk)$(13_10)	speed = 0	$(13_10)	if direction == 0 {$(13_10)		sprite_index = s_player_right_ide$(13_10)	} else if direction == 90 {$(13_10)		sprite_index = s_player_back_ide$(13_10)	} else if direction == 180 {$(13_10)		sprite_index = s_player_left_ide$(13_10)	} else {$(13_10)		sprite_index = s_player_front_ide$(13_10)	}$(13_10)}$(13_10)$(13_10)if nextRoom {$(13_10)	o_light.radius--$(13_10)	if o_light.radius < 0 {$(13_10)		room_goto_next()$(13_10)	} $(13_10)	instance_deactivate_object(o_touch_controller)$(13_10)	audio_pause_sound(a_walk)$(13_10)	speed = 0	$(13_10)	if direction == 0 {$(13_10)		sprite_index = s_player_right_ide$(13_10)	} else if direction == 90 {$(13_10)		sprite_index = s_player_back_ide$(13_10)	} else if direction == 180 {$(13_10)		sprite_index = s_player_left_ide$(13_10)	} else {$(13_10)		sprite_index = s_player_front_ide$(13_10)	}$(13_10)$(13_10)}"
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
	o_light.radius--
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