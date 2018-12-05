/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 448E1AF7
/// @DnDArgument : "code" "display_set_gui_size(320, 240)"
display_set_gui_size(320, 240)

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 09F319A1
/// @DnDArgument : "x" "240"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Score：""
/// @DnDArgument : "var" "myScore"
draw_text(240, 10, string("Score：") + string(myScore));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 4AE16E9A
/// @DnDApplyTo : 339e7161-ce57-405a-a92b-b580230099fa
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-20"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "15"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-25"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "hp * 33.33"
/// @DnDArgument : "backcol" "$00FFFFFF"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000CC"
/// @DnDArgument : "maxcol" "$FF00FF00"
with(o_Trainer) draw_healthbar(x + 0, y + -20, x + 15, y + -25, hp * 33.33, $00FFFFFF & $FFFFFF, $FF0000CC & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($00FFFFFF>>24) != 0), (($FF000000>>24) != 0));