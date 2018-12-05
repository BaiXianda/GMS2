/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BC9A0E3
/// @DnDArgument : "expr" "0.5"
/// @DnDArgument : "var" "img_speed"
img_speed = 0.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A1BCD08
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "move_speed"
move_speed = 2;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1788AE6B
/// @DnDArgument : "code" "door1 = 0;$(13_10)door2 = 0;$(13_10)door3 = 0;$(13_10)door4 = 0;$(13_10)$(13_10)room_speed = 30;$(13_10)timer = 0;$(13_10)$(13_10)behind = inst_3238D719;$(13_10)$(13_10)isImmune = false;$(13_10)$(13_10)myScore = 0;$(13_10)$(13_10)hp = 3;$(13_10)$(13_10)audio_play_sound(walkingSound, 10, true);$(13_10)audio_pause_sound(walkingSound);"
door1 = 0;
door2 = 0;
door3 = 0;
door4 = 0;

room_speed = 30;
timer = 0;

behind = inst_3238D719;

isImmune = false;

myScore = 0;

hp = 3;

audio_play_sound(walkingSound, 10, true);
audio_pause_sound(walkingSound);