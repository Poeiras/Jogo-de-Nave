/// @description config de jogo
var player = obj_player;
camera_set_view_pos(cam,player.x - p1 ,player.y - p2);


if(!instance_exists(player))
	{
		instance_destroy();
	}
		