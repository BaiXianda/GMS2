/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6DCE5EF7
/// @DnDArgument : "code" "if key > 0{$(13_10)	instance_destroy(other)$(13_10)	key--$(13_10)}"
if key > 0{
	instance_destroy(other)
	key--
}