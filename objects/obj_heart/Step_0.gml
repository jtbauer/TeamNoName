// Enemy Collision
if(place_meeting(x+hsp,y,obj_enemy1))
{
	hearts -= 1;
	// Full Death
	if(hearts == 0) {
		game_restart();
	}
	room_restart();
}

// Death Collision Lives
if(place_meeting(x,y+vsp,obj_Death))
{
	hearts -= 1;
	// Full Death
	if(hearts == 0) {
		game_restart();
	}
	room_restart();
}

// 0 - 3 hearts
hearts = clamp(hearts, 0, maxhearts);