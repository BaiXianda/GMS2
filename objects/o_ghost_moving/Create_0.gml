/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5A0556A8
/// @DnDArgument : "code" "/// create $(13_10)$(13_10)randomize()$(13_10)dir = irandom_range(1, 4)$(13_10)$(13_10)switch(dir) {$(13_10)	case 1:$(13_10)		direction = 0$(13_10)		break$(13_10)	case 2:$(13_10)		direction = 90$(13_10)		break$(13_10)	case 3:$(13_10)		direction = 180$(13_10)		break$(13_10)	case 4:$(13_10)		direction = 270$(13_10)		break$(13_10)}$(13_10)speed = 3"
/// create 

randomize()
dir = irandom_range(1, 4)

switch(dir) {
	case 1:
		direction = 0
		break
	case 2:
		direction = 90
		break
	case 3:
		direction = 180
		break
	case 4:
		direction = 270
		break
}
speed = 3