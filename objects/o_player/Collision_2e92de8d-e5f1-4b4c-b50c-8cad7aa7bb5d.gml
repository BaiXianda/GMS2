/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6DCE5EF7
/// @DnDArgument : "code" "/*$(13_10)if key > 0{$(13_10)	var mx$(13_10)	var my$(13_10)	var dv$(13_10)$(13_10)	for(dv = 0; dv < 5; dv++){$(13_10)		mx = device_mouse_x(dv)$(13_10)		my = device_mouse_y(dv)$(13_10)		if position_meeting(mx, my, o_open){$(13_10)			if device_mouse_check_button_pressed(dv, mb_left) {$(13_10)				// delete wall tile after door is open$(13_10)				var tilemap = layer_tilemap_get_id("wall")$(13_10)				var tile = tilemap_get_at_pixel(tilemap, other.x, other.y);$(13_10)				tile = tile_set_empty(tile)$(13_10)				tilemap_set_at_pixel(tilemap, tile, other.x, other.y)$(13_10)	$(13_10)				instance_destroy(other)$(13_10)				key--$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}"
/*
if key > 0{
	var mx
	var my
	var dv

	for(dv = 0; dv < 5; dv++){
		mx = device_mouse_x(dv)
		my = device_mouse_y(dv)
		if position_meeting(mx, my, o_open){
			if device_mouse_check_button_pressed(dv, mb_left) {
				// delete wall tile after door is open
				var tilemap = layer_tilemap_get_id("wall")
				var tile = tilemap_get_at_pixel(tilemap, other.x, other.y);
				tile = tile_set_empty(tile)
				tilemap_set_at_pixel(tilemap, tile, other.x, other.y)
	
				instance_destroy(other)
				key--
			}
		}
	}
}/**/