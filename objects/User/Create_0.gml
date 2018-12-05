// Ryan Ader
// Team no-name
// Player Description

//horizontal position
hsp = 0;
//vertical position
vsp = 0;
//gravity
grv = 0.25;
//Walkspeed
walksp = 9;
//Lives
lives = 3;
audio_play_sound(level1Music, 10, true);
hit_play = false;
view_camera[0] = camera_create_view(x,y,1280,720,0,self,-1, -1, 640, 360);
view_set_camera(0, view_camera[0]);
view_visible[0] = true;
view_enable = true;