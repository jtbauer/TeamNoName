var xoffset = 30;

// Gray Hearts
for(var i = 0; i < maxhearts; i++) 
	draw_sprite_ext(Heart, 0, xstart+(xoffset*i), ystart, 1, 1, 0, c_gray, 0.3);


// Red Hearts
for(var i = 0; i < hearts; i++) 
	draw_sprite(Heart, 0, xstart+(xoffset*i), ystart);	
