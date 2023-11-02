/// @desc Core Player logic

//Get player inputs
key_left = keyboard_check(vk_left); 
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculater movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_InvisableWall)) && (key_jump)
{
	vsp = -jumpsp
}

//horizontal collision
if(place_meeting(x+hsp,y,obj_InvisableWall))
{
	while (!place_meeting(x+sign(hsp),y,obj_InvisableWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,obj_InvisableWall))
{
	while (!place_meeting(x,y+sign(vsp),obj_InvisableWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;