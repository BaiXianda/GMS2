/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6902F658
/// @DnDArgument : "code" "/// @description cast a shadow of this line segment from the point light$(13_10)/// @param VB Vertex buffer$(13_10)/// @param Ax  x1$(13_10)/// @param Ay  y1$(13_10)/// @param Bx  x2$(13_10)/// @param By  y2$(13_10)/// @param Lx  Light x$(13_10)/// @param Ly  Light Y$(13_10)$(13_10)var vb = argument0;$(13_10)var x1 = argument1;$(13_10)var y1 = argument2;$(13_10)var x2 = argument3;$(13_10)var y2 = argument4;$(13_10)var lx = argument5;$(13_10)var ly = argument6;$(13_10)$(13_10)// shadows are infinite - almost, just enough to go off screen$(13_10)var SHADOW_LENGTH = 20000;$(13_10)$(13_10)var dx1, dy1 , dx2, dy2, len$(13_10)$(13_10)// get unit length to point 1$(13_10)dx1 = x1 - lx;      $(13_10)dy1 = y1 - ly;      $(13_10)len = (1.0*SHADOW_LENGTH)/sqrt( (dx1 * dx1)+(dy1 * dy1) );      // unit length scaler * Shadow length$(13_10)dx1 = x1 + dx1 * len;$(13_10)dy1 = y1 + dy1 * len;$(13_10)$(13_10)// get unit length to point 2$(13_10)dx2 = x2 - lx;      $(13_10)dy2 = y2 - ly;      $(13_10)len = (1.0*SHADOW_LENGTH)/sqrt( (dx2 * dx2)+(dy2 * dy2) );      // unit length scaler * Shadow length$(13_10)dx2 = x2 + dx2 * len;$(13_10)dy2 = y2 + dy2 * len;$(13_10)$(13_10)// now build a quad$(13_10)vertex_position(vb, x1, y1);$(13_10)vertex_argb(vb, $ff000000);$(13_10)vertex_position(vb, x2, y2);$(13_10)vertex_argb(vb, $ff000000);$(13_10)vertex_position(vb, dx1, dy1);$(13_10)vertex_argb(vb, $ff000000);$(13_10)$(13_10)vertex_position(vb, x2, y2);$(13_10)vertex_argb(vb, $ff000000);$(13_10)vertex_position(vb, dx1, dy1);$(13_10)vertex_argb(vb, $ff000000);$(13_10)vertex_position(vb, dx2, dy2);$(13_10)vertex_argb(vb, $ff000000);$(13_10)$(13_10)"
/// @description cast a shadow of this line segment from the point light
/// @param VB Vertex buffer
/// @param Ax  x1
/// @param Ay  y1
/// @param Bx  x2
/// @param By  y2
/// @param Lx  Light x
/// @param Ly  Light Y

var vb = argument0;
var x1 = argument1;
var y1 = argument2;
var x2 = argument3;
var y2 = argument4;
var lx = argument5;
var ly = argument6;

// shadows are infinite - almost, just enough to go off screen
var SHADOW_LENGTH = 20000;

var dx1, dy1 , dx2, dy2, len

// get unit length to point 1
dx1 = x1 - lx;      
dy1 = y1 - ly;      
len = (1.0*SHADOW_LENGTH)/sqrt( (dx1 * dx1)+(dy1 * dy1) );      // unit length scaler * Shadow length
dx1 = x1 + dx1 * len;
dy1 = y1 + dy1 * len;

// get unit length to point 2
dx2 = x2 - lx;      
dy2 = y2 - ly;      
len = (1.0*SHADOW_LENGTH)/sqrt( (dx2 * dx2)+(dy2 * dy2) );      // unit length scaler * Shadow length
dx2 = x2 + dx2 * len;
dy2 = y2 + dy2 * len;

// now build a quad
vertex_position(vb, x1, y1);
vertex_argb(vb, $ff000000);
vertex_position(vb, x2, y2);
vertex_argb(vb, $ff000000);
vertex_position(vb, dx1, dy1);
vertex_argb(vb, $ff000000);

vertex_position(vb, x2, y2);
vertex_argb(vb, $ff000000);
vertex_position(vb, dx1, dy1);
vertex_argb(vb, $ff000000);
vertex_position(vb, dx2, dy2);
vertex_argb(vb, $ff000000);