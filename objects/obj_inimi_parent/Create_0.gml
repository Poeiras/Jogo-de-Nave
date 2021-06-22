/// @description
randomise();
estado = "parado";
vida = irandom_range(2,3);
c1 = 0;
if(global.jogadorvivo)	
{
	var player = obj_player;
	var planeta = obj_planeta_parent;
	dir1 = point_direction(x,y,player.x,player.y);
	dir2 = point_direction(x,y,planeta.x,planeta.y);
	dir3 = irandom(360);
	dir_final = choose(dir1,dir2,dir3);
}
else
	{
		dir_final = irandom(360);
	}
offseter = irandom_range(-20,20);