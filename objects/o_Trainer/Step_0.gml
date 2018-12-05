/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1A80AF17
/// @DnDArgument : "code" "/// set the depth$(13_10)$(13_10)$(13_10)depth = -y$(13_10)$(13_10)// Check the Door$(13_10)$(13_10)if(door1 == 1 && door2 == 1 && door3 == 1 && door4 ==1){$(13_10)	room_goto(r_Win);$(13_10)	$(13_10)}$(13_10)$(13_10)image_speed = img_speed;$(13_10)$(13_10)if keyboard_check(vk_right) and keyboard_check(vk_up) {$(13_10)	direction = 45;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_Trainer_up;$(13_10)	image_speed = img_speed;$(13_10)	audio_resume_sound(walkingSound);$(13_10)} else if keyboard_check(vk_right) and keyboard_check(vk_down) {$(13_10)	direction = 315;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_Trainer_down;$(13_10)	image_speed = img_speed;$(13_10)	audio_resume_sound(walkingSound);$(13_10)} else if keyboard_check(vk_left) and keyboard_check(vk_up) {$(13_10)	direction = 135;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_Trainer_up;$(13_10)	image_speed = img_speed;$(13_10)	audio_resume_sound(walkingSound);$(13_10)} else if keyboard_check(vk_left) and keyboard_check(vk_down) {$(13_10)	direction = 225;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_Trainer_down;$(13_10)	image_speed = img_speed;$(13_10)	audio_resume_sound(walkingSound);$(13_10)} else if keyboard_check(vk_right) {$(13_10)	direction = 0;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_Trainer_right;$(13_10)	image_speed = img_speed;$(13_10)	audio_resume_sound(walkingSound);$(13_10)} else if keyboard_check(vk_up) {$(13_10)	direction = 90;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_Trainer_up;$(13_10)	image_speed = img_speed;$(13_10)	audio_resume_sound(walkingSound);$(13_10)} else if keyboard_check(vk_left) {$(13_10)	direction = 180;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_Trainer_left;$(13_10)	image_speed = img_speed;$(13_10)	audio_resume_sound(walkingSound);$(13_10)} else if keyboard_check(vk_down) {$(13_10)	direction = 270;$(13_10)	speed = move_speed;$(13_10)	sprite_index = s_Trainer_down;$(13_10)	image_speed = img_speed;$(13_10)	audio_resume_sound(walkingSound);$(13_10)} else {$(13_10)	speed = 0;$(13_10)	if direction > 180 $(13_10)		sprite_index = s_Trainer_idle_front;$(13_10)	else $(13_10)		sprite_index = s_Trainer_ide_back;$(13_10)	audio_pause_sound(walkingSound);$(13_10)}$(13_10)$(13_10)if timer > 0 {$(13_10)	timer++;$(13_10)}$(13_10)$(13_10)if timer == 60 {$(13_10)	timer = 0;	$(13_10)	isImmune = false;$(13_10)}$(13_10)$(13_10)with(behind) {$(13_10)	if  o_Trainer.x > x and o_Trainer.x < x + sprite_width$(13_10)	and o_Trainer.y > y and o_Trainer.y < y + sprite_height {$(13_10)		o_Trainer.isImmune = true;$(13_10)	} else {$(13_10)		if o_Trainer.timer == 0$(13_10)			o_Trainer.isImmune = false;	$(13_10)	}$(13_10)}$(13_10)"
/// set the depth


depth = -y

// Check the Door

if(door1 == 1 && door2 == 1 && door3 == 1 && door4 ==1){
	room_goto(r_Win);
	
}

image_speed = img_speed;

if keyboard_check(vk_right) and keyboard_check(vk_up) {
	direction = 45;
	speed = move_speed;
	sprite_index = s_Trainer_up;
	image_speed = img_speed;
	audio_resume_sound(walkingSound);
} else if keyboard_check(vk_right) and keyboard_check(vk_down) {
	direction = 315;
	speed = move_speed;
	sprite_index = s_Trainer_down;
	image_speed = img_speed;
	audio_resume_sound(walkingSound);
} else if keyboard_check(vk_left) and keyboard_check(vk_up) {
	direction = 135;
	speed = move_speed;
	sprite_index = s_Trainer_up;
	image_speed = img_speed;
	audio_resume_sound(walkingSound);
} else if keyboard_check(vk_left) and keyboard_check(vk_down) {
	direction = 225;
	speed = move_speed;
	sprite_index = s_Trainer_down;
	image_speed = img_speed;
	audio_resume_sound(walkingSound);
} else if keyboard_check(vk_right) {
	direction = 0;
	speed = move_speed;
	sprite_index = s_Trainer_right;
	image_speed = img_speed;
	audio_resume_sound(walkingSound);
} else if keyboard_check(vk_up) {
	direction = 90;
	speed = move_speed;
	sprite_index = s_Trainer_up;
	image_speed = img_speed;
	audio_resume_sound(walkingSound);
} else if keyboard_check(vk_left) {
	direction = 180;
	speed = move_speed;
	sprite_index = s_Trainer_left;
	image_speed = img_speed;
	audio_resume_sound(walkingSound);
} else if keyboard_check(vk_down) {
	direction = 270;
	speed = move_speed;
	sprite_index = s_Trainer_down;
	image_speed = img_speed;
	audio_resume_sound(walkingSound);
} else {
	speed = 0;
	if direction > 180 
		sprite_index = s_Trainer_idle_front;
	else 
		sprite_index = s_Trainer_ide_back;
	audio_pause_sound(walkingSound);
}

if timer > 0 {
	timer++;
}

if timer == 60 {
	timer = 0;	
	isImmune = false;
}

with(behind) {
	if  o_Trainer.x > x and o_Trainer.x < x + sprite_width
	and o_Trainer.y > y and o_Trainer.y < y + sprite_height {
		o_Trainer.isImmune = true;
	} else {
		if o_Trainer.timer == 0
			o_Trainer.isImmune = false;	
	}
}