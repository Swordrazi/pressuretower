draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1);
draw_text(x-56,y+56,"Prestige XP: " + string(global.xp_));
draw_healthbar(x-56,y-144,x+56,y-144-16,(10-clicks_)*10,c_blue,c_aqua,c_aqua,0,1,0);
draw_text(x-64,y-144-32,"Click to Prestige");