/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0FA59E0C
/// @DnDArgument : "code" "instance_destroy(other)$(13_10)key++$(13_10)var vx = camera_get_view_x(view_camera[0]);$(13_10)var vy = camera_get_view_y(view_camera[0]);$(13_10)instance_create_layer(vx + 992, vy + 400, "UI_Layer", o_open)"
instance_destroy(other)
key++
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
instance_create_layer(vx + 992, vy + 400, "UI_Layer", o_open)