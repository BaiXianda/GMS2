/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08E79241
/// @DnDArgument : "code" "canfire = true$(13_10)var vx = camera_get_view_x(view_camera[0]);$(13_10)var vy = camera_get_view_y(view_camera[0]);$(13_10)instance_create_layer(vx + 992, vy + 512, "UI_Layer", o_attack)$(13_10)instance_destroy(other)"
canfire = true
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
instance_create_layer(vx + 992, vy + 512, "UI_Layer", o_attack)
instance_destroy(other)