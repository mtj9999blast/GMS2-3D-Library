/// @description Creates a Quadrilateral in 3D space from any 4 verticies
/// @param x1
/// @param y1
/// @param z1
/// @param x2
/// @param y2
/// @param z2
/// @param x3
/// @param y3
/// @param z3
/// @param x4
/// @param y4
/// @param z4


/*
Get all four verticies to build the vertex buffer for our wall
*/
//Vertex 1
	var x1 = argument0;
	var y1 = argument1;
	var z1 = argument2;
//Vertex 2
	var x2 = argument3;
	var y2 = argument4;
	var z2 = argument5;
//Vertex 3
	var x3 = argument6;
	var y3 = argument7;
	var z3 = argument8;
//Vertex 4
	var x4 = argument9;
	var y4 = argument10;
	var z4 = argument11;

var temp_quad_buff = vertex_buffer_begin_assembly();
vertex_buffer_add_quadrilateral_pos(x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4,temp_quad_buff);
var finished_quad_buff = vertex_buffer_finish_assembly(temp_quad_buff);
return finished_quad_buff;
/*
//Get Color Information
var color = draw_get_colour();
//Define a vector format
vertex_format_begin();

vertex_format_add_position_3d(); //Add 3D position info
vertex_format_add_normal(); //Add 3D surface normal info
vertex_format_add_color(); //Add color info
vertex_format_add_textcoord(); //Texture coordinate info

//End building the format, and assign the format to the variable "temp_format"
var temp_format = vertex_format_end();

//Create the Buffer
var temp_buff = vertex_create_buffer();

//Start construction of previously created buffer
vertex_begin(temp_buff,temp_format);

//Add the six vertices needed to draw a simple quadrilateral plane. 
//The normals are all pointing to (0,0,-1) (upward, in our case)

//The first triangle
vertex_position_3d(temp_buff, x3, y3, z3);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 0, 0);

vertex_position_3d(temp_buff, x4, y4, z4);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 1, 0);

vertex_position_3d(temp_buff, x1, y1, z1);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 0, 1);

//The second triangle. The winding order has been maintained so drawing is consistent if culling is enabled.
vertex_position_3d(temp_buff, x1, y1, z1);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 0, 1);

vertex_position_3d(temp_buff, x4, y4, z4);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 1, 0);

vertex_position_3d(temp_buff, x2, y2, z2);
vertex_normal(temp_buff, 0, 0, 1);
vertex_color(temp_buff, color, 1);
vertex_texcoord(temp_buff, 1, 1);

//Finish building the buffer.
vertex_end(temp_buff);

//Return the Buffer
return temp_buff;
*/