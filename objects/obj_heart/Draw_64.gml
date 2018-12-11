var xoffset = 30;

// Gray Hearts
for(var i = 0; i < maxhearts; i++) 
	draw_sprite_ext(life, 0, xstart+(xoffset*i), ystart, 1, 1, 0, c_gray, 0.3);


// Red Hearts
for(var i = 0; i < lives; i++) 
	draw_sprite(life, 0, xstart+(xoffset*i), ystart);	
