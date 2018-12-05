/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F9E1D8D
/// @DnDArgument : "code" "if( !surface_exists(surf) ){$(13_10)    surf = surface_create(room_width,room_height);$(13_10)}$(13_10)$(13_10)var lx = x$(13_10)var ly = y$(13_10)$(13_10)var tile_size = 32$(13_10)var tilemap = layer_tilemap_get_id("wall")$(13_10)var rad = radius$(13_10)var startx = floor((lx-rad)/tile_size);$(13_10)var endx = floor((lx+rad)/tile_size);$(13_10)var starty = floor((ly-rad)/tile_size);$(13_10)var endy = floor((ly+rad)/tile_size);$(13_10)arrayIndex = 0$(13_10)$(13_10)shader_set(shader0);$(13_10)shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.0 );$(13_10)draw_surface(surf,0,0);$(13_10)shader_reset();$(13_10)$(13_10)surface_set_target(surf);$(13_10)draw_clear_alpha(0,0);$(13_10)$(13_10)vertex_begin(VBuffer, VertexFormat);$(13_10)$(13_10)// left to right top to bottom$(13_10)var array1;$(13_10)var array1Index = 0$(13_10)for(var yy=starty; yy<=endy; yy++)$(13_10){$(13_10)    for(var xx=startx; xx<=endx; xx++)$(13_10)    {$(13_10)		$(13_10)        var tile = tilemap_get(tilemap,xx,yy);$(13_10)        if( tile!=0 )$(13_10)        {$(13_10)			$(13_10)            // get corners of the $(13_10)            var px1 = xx*tile_size;     // top left$(13_10)            var py1 = yy*tile_size;$(13_10)            var px2 = px1+tile_size;    // bottom right$(13_10)            var py2 = py1+tile_size;$(13_10)			$(13_10)			array1[array1Index++] = px1$(13_10)			array1[array1Index++] = px2$(13_10)			array1[array1Index++] = py1$(13_10)			array1[array1Index++] = py2  $(13_10)        }$(13_10)    }$(13_10)}$(13_10)$(13_10)// top to bottom, left to right$(13_10)$(13_10)var array2$(13_10)var array2Index = 0$(13_10)for(var xx=startx; xx<=endx; xx++)$(13_10){$(13_10)    for(var yy=starty; yy<=endy; yy++)$(13_10)    { $(13_10)		$(13_10)        var tile = tilemap_get(tilemap,xx,yy);$(13_10)        if( tile!=0 )$(13_10)        {$(13_10)			$(13_10)            // get corners of the $(13_10)            var px1 = xx*tile_size;     // top left$(13_10)            var py1 = yy*tile_size;$(13_10)            var px2 = px1+tile_size;    // bottom right$(13_10)            var py2 = py1+tile_size;$(13_10)			$(13_10)			array2[array2Index++] = px1$(13_10)			array2[array2Index++] = px2$(13_10)			array2[array2Index++] = py1$(13_10)			array2[array2Index++] = py2  $(13_10)        }$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)var newArr;$(13_10)var singleArr;$(13_10)var index = 0;$(13_10)var sIndex = 0$(13_10)$(13_10)// calculate x cor walls$(13_10)for( i = 0; i < array1Index; i+= 4) {$(13_10)	var x1 = array1[i]$(13_10)	var x2 = array1[i + 1]$(13_10)	var y1 = array1[i + 2]$(13_10)	var y2 = array1[i + 3]$(13_10)	var j = 0$(13_10)	var count = 0$(13_10)	for( j = i + 4; j < array1Index; j+= 4) {$(13_10)		if x2 + 32 == array1[j + 1] && y2 == array1[j+3] {$(13_10)			x2 = array1[j + 1]$(13_10)			y2 = array1[j + 3] $(13_10)			count++$(13_10)		} else {$(13_10)			break	$(13_10)		}$(13_10)	}$(13_10)	i = j$(13_10)	$(13_10)	if count > 0 {$(13_10)		newArr[index++] = x1$(13_10)		newArr[index++] = x2$(13_10)		newArr[index++] = y1$(13_10)		newArr[index++] = y2$(13_10)	}$(13_10)}$(13_10)$(13_10)// calculate y cor walls$(13_10)$(13_10)for( i = 0; i < array2Index; i+= 4) {$(13_10)	var x1 = array2[i]$(13_10)	var x2 = array2[i + 1]$(13_10)	var y1 = array2[i + 2]$(13_10)	var y2 = array2[i + 3]$(13_10)	var j = 0$(13_10)	var count = 0$(13_10)	for( j = i + 4; j < array2Index; j+= 4) {$(13_10)		if x2 == array2[j+1] && y2 + 32 == array2[j+3] {$(13_10)			x2 = array2[j + 1]$(13_10)			y2 = array2[j + 3] $(13_10)			count++$(13_10)		} else {$(13_10)			break$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	i = j$(13_10)	$(13_10)	if count > 0 {$(13_10)	newArr[index++] = x1$(13_10)	newArr[index++] = x2$(13_10)	newArr[index++] = y1$(13_10)	newArr[index++] = y2$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)// calculate wall without any other wall connect$(13_10)/*$(13_10)for( i = 0; i < arrayIndex; i+= 4) {$(13_10)	var x1 = array[i]$(13_10)	var x2 = array[i + 1]$(13_10)	var y1 = array[i + 2]$(13_10)	var y2 = array[i + 3]$(13_10)	var j = 0$(13_10)	var count = 0$(13_10)	for( j = i + 4; j < arrayIndex; j+= 4) {$(13_10)		if x2 == array[j+1] && y2 + 32 == array[j+3] {$(13_10)			x2 = array[j + 1]$(13_10)			y2 = array[j + 3] $(13_10)			count++$(13_10)		} else {$(13_10)			i = j$(13_10)			break	$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if count > 0 {$(13_10)		newArr[index++] = x1$(13_10)		newArr[index++] = x2$(13_10)		newArr[index++] = y1$(13_10)		newArr[index++] = y2$(13_10)	}$(13_10)}$(13_10)*/$(13_10)$(13_10)// create shadow for walls$(13_10)for(i = 0; i < index; i+=4){$(13_10)	var x1 = newArr[i]$(13_10)	var x2 = newArr[i + 1]$(13_10)	var y1 = newArr[i + 2]$(13_10)	var y2 = newArr[i + 3]$(13_10)	if y1 < ly {$(13_10)		ProjectShadow(VBuffer,  x1,y1, x2,y1, lx,ly );$(13_10)	} $(13_10)	if y2 > ly {$(13_10)		ProjectShadow(VBuffer,  x1,y2, x2,y2, lx,ly );$(13_10)	}$(13_10)	if x1 < lx {$(13_10)		 ProjectShadow(VBuffer,  x1,y1, x1,y2, lx,ly );$(13_10)	} $(13_10)	if x2 > lx {$(13_10)		ProjectShadow(VBuffer,  x2,y1, x2,y2, lx,ly );$(13_10)	}$(13_10)}$(13_10)$(13_10)// create shadow for single wall$(13_10)for(i = 0; i < sIndex; i+=4){$(13_10)	$(13_10)	var x1 = singleArr[i]$(13_10)	var x2 = singleArr[i + 1]$(13_10)	var y1 = singleArr[i + 2]$(13_10)	var y2 = singleArr[i + 3]$(13_10)	$(13_10)	if y1 < ly {$(13_10)		ProjectShadow(VBuffer,  x1,y1, x2,y1, lx,ly );$(13_10)	} $(13_10)	if y2 > ly {$(13_10)		ProjectShadow(VBuffer,  x1,y2, x2,y2, lx,ly );$(13_10)	}$(13_10)	if x1 < lx {$(13_10)		 ProjectShadow(VBuffer,  x1,y1, x1,y2, lx,ly );$(13_10)	} $(13_10)	if x2 > lx {$(13_10)		ProjectShadow(VBuffer,  x2,y1, x2,y2, lx,ly );$(13_10)	}$(13_10)}$(13_10)$(13_10)vertex_end(VBuffer);    $(13_10)vertex_submit(VBuffer,pr_trianglelist,-1);$(13_10)$(13_10)surface_reset_target();$(13_10)$(13_10)draw_surface(surf,0,0);"
if( !surface_exists(surf) ){
    surf = surface_create(room_width,room_height);
}

var lx = x
var ly = y

var tile_size = 32
var tilemap = layer_tilemap_get_id("wall")
var rad = radius
var startx = floor((lx-rad)/tile_size);
var endx = floor((lx+rad)/tile_size);
var starty = floor((ly-rad)/tile_size);
var endy = floor((ly+rad)/tile_size);
arrayIndex = 0

shader_set(shader0);
shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.0 );
draw_surface(surf,0,0);
shader_reset();

surface_set_target(surf);
draw_clear_alpha(0,0);

vertex_begin(VBuffer, VertexFormat);

// left to right top to bottom
var array1;
var array1Index = 0
for(var yy=starty; yy<=endy; yy++)
{
    for(var xx=startx; xx<=endx; xx++)
    {
		
        var tile = tilemap_get(tilemap,xx,yy);
        if( tile!=0 )
        {
			
            // get corners of the 
            var px1 = xx*tile_size;     // top left
            var py1 = yy*tile_size;
            var px2 = px1+tile_size;    // bottom right
            var py2 = py1+tile_size;
			
			array1[array1Index++] = px1
			array1[array1Index++] = px2
			array1[array1Index++] = py1
			array1[array1Index++] = py2  
        }
    }
}

// top to bottom, left to right

var array2
var array2Index = 0
for(var xx=startx; xx<=endx; xx++)
{
    for(var yy=starty; yy<=endy; yy++)
    { 
		
        var tile = tilemap_get(tilemap,xx,yy);
        if( tile!=0 )
        {
			
            // get corners of the 
            var px1 = xx*tile_size;     // top left
            var py1 = yy*tile_size;
            var px2 = px1+tile_size;    // bottom right
            var py2 = py1+tile_size;
			
			array2[array2Index++] = px1
			array2[array2Index++] = px2
			array2[array2Index++] = py1
			array2[array2Index++] = py2  
        }
    }
}


var newArr;
var singleArr;
var index = 0;
var sIndex = 0

// calculate x cor walls
for( i = 0; i < array1Index; i+= 4) {
	var x1 = array1[i]
	var x2 = array1[i + 1]
	var y1 = array1[i + 2]
	var y2 = array1[i + 3]
	var j = 0
	var count = 0
	for( j = i + 4; j < array1Index; j+= 4) {
		if x2 + 32 == array1[j + 1] && y2 == array1[j+3] {
			x2 = array1[j + 1]
			y2 = array1[j + 3] 
			count++
		} else {
			break	
		}
	}
	i = j
	
	if count > 0 {
		newArr[index++] = x1
		newArr[index++] = x2
		newArr[index++] = y1
		newArr[index++] = y2
	}
}

// calculate y cor walls

for( i = 0; i < array2Index; i+= 4) {
	var x1 = array2[i]
	var x2 = array2[i + 1]
	var y1 = array2[i + 2]
	var y2 = array2[i + 3]
	var j = 0
	var count = 0
	for( j = i + 4; j < array2Index; j+= 4) {
		if x2 == array2[j+1] && y2 + 32 == array2[j+3] {
			x2 = array2[j + 1]
			y2 = array2[j + 3] 
			count++
		} else {
			break
		}
	}
	
	i = j
	
	if count > 0 {
	newArr[index++] = x1
	newArr[index++] = x2
	newArr[index++] = y1
	newArr[index++] = y2
	}
}


// calculate wall without any other wall connect
/*
for( i = 0; i < arrayIndex; i+= 4) {
	var x1 = array[i]
	var x2 = array[i + 1]
	var y1 = array[i + 2]
	var y2 = array[i + 3]
	var j = 0
	var count = 0
	for( j = i + 4; j < arrayIndex; j+= 4) {
		if x2 == array[j+1] && y2 + 32 == array[j+3] {
			x2 = array[j + 1]
			y2 = array[j + 3] 
			count++
		} else {
			i = j
			break	
		}
	}
	
	if count > 0 {
		newArr[index++] = x1
		newArr[index++] = x2
		newArr[index++] = y1
		newArr[index++] = y2
	}
}
*/

// create shadow for walls
for(i = 0; i < index; i+=4){
	var x1 = newArr[i]
	var x2 = newArr[i + 1]
	var y1 = newArr[i + 2]
	var y2 = newArr[i + 3]
	if y1 < ly {
		ProjectShadow(VBuffer,  x1,y1, x2,y1, lx,ly );
	} 
	if y2 > ly {
		ProjectShadow(VBuffer,  x1,y2, x2,y2, lx,ly );
	}
	if x1 < lx {
		 ProjectShadow(VBuffer,  x1,y1, x1,y2, lx,ly );
	} 
	if x2 > lx {
		ProjectShadow(VBuffer,  x2,y1, x2,y2, lx,ly );
	}
}

// create shadow for single wall
for(i = 0; i < sIndex; i+=4){
	
	var x1 = singleArr[i]
	var x2 = singleArr[i + 1]
	var y1 = singleArr[i + 2]
	var y2 = singleArr[i + 3]
	
	if y1 < ly {
		ProjectShadow(VBuffer,  x1,y1, x2,y1, lx,ly );
	} 
	if y2 > ly {
		ProjectShadow(VBuffer,  x1,y2, x2,y2, lx,ly );
	}
	if x1 < lx {
		 ProjectShadow(VBuffer,  x1,y1, x1,y2, lx,ly );
	} 
	if x2 > lx {
		ProjectShadow(VBuffer,  x2,y1, x2,y2, lx,ly );
	}
}

vertex_end(VBuffer);    
vertex_submit(VBuffer,pr_trianglelist,-1);

surface_reset_target();

draw_surface(surf,0,0);/**/