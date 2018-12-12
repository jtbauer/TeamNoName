hsp = dir * movespeed;
vsp += grav;

if(place_meeting(x+hsp,y,obj_Wall)){
	while(!place_meeting(x+sign(hsp),y,obj_Wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
	
	dir *= -1;
}
x += hsp;

//Vertical collision
if(place_meeting(x,y+vsp,obj_Wall)){
	while(!place_meeting(x,y+sign(vsp),obj_Wall)){
		y += sign(vsp);
	}
	vsp = 0;
	if(fallDetection) && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2)+8, obj_Wall){
		dir *= -1;	
	}
}
y += vsp;

//Enemy Collision
if(place_meeting(x,y,User))
{
	if(User.y < y - 8){
		instance_destroy();
	}
}



	