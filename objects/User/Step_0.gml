//Check the keys for input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate the movement (-1 if left 1 if right)
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;
//Animation
/*
if(keyboard_check(vk_right)){
	image_xscale = 1;
	sprite_index = spr_player_run;
}

if(keyboard_check(vk_left)){
	image_xscale = -1;
	sprite_index = spr_player_run;
}

if not keyboard_check(vk_left) and not keyboard_check(vk_right){
	sprite_index = spr_player_idle;
}
*/
//Jumping Collision
if(place_meeting(x,y+1,obj_Wall)) && (key_jump){
	vsp = -7;
}

if(place_meeting(x,y+vsp,obj_startingBlock)){
	hit_play = true;
}

//Horizontal Collision
if(place_meeting(x+hsp,y,obj_Wall))
{
	while(!place_meeting(x+sign(hsp), y, obj_Wall)){
		x = x + sign(hsp);		
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,obj_Wall))
{
	while(!place_meeting(x,y+sign(vsp), obj_Wall)){
		y = y + sign(vsp);		
	}
	vsp = 0;
}
y = y + vsp;

//Enemy Collision
if(place_meeting(x+hsp,y,obj_enemy1))
{
	lives -= 1;
	if(hit_play == true) {
		audio_play_sound(deathSound, 2, false);
		hit_play = false;
	}
}

//Verticle Enemy Collision or enemy death
if(place_meeting(x+vsp,y,obj_enemy1)){
	vsp = -7;	
}

//Death Collision Lives
if(place_meeting(x,y+vsp,obj_Death))
{
	lives -= 1;
	if(hit_play == true){
		audio_play_sound(deathSound, 10, false);
		hit_play = false;
	}
}


if(place_meeting(x+hsp,y,obj_endLevel1))
{
	room_goto(level2);	
}
