//Check the keys for input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate the movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y+1,obj_Brick)) && (key_jump){
	vsp = -7;
}
//Horizontal Collision
if(place_meeting(x+hsp,y,obj_Brick))
{
	while(!place_meeting(x+sign(hsp), y, obj_Brick)){
		x = x + sign(hsp);		
	}
	hsp = 0;
}
x = x + hsp;
//Vertical Collision
if(place_meeting(x,y+vsp,obj_Brick))
{
	while(!place_meeting(x,y+sign(vsp), obj_Brick)){
		y = y + sign(vsp);		
	}
	vsp = 0;
}
y = y + vsp;

/* //Enemy Collision Lives
if(place_meeting(x,y, obj_enemy))
{
	lives -= 1;
}
*/
//Death Collision Lives
if(place_meeting(x,y,obj_Death))
{
	lives -= 1;
}