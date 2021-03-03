/// @description variáveis
entrada = obj_entrada;
player = obj_player;
if(room = rm_base)
	{
		alarm[0] = room_speed * 2;
		e1 = instance_create_layer(64,64,"Obstaculos",obj_entrada_ini);
		e2 = instance_create_layer(1408,64,"Obstaculos",obj_entrada_ini);
		e3 = instance_create_layer(64,1440,"Obstaculos",obj_entrada_ini);
		e4 = instance_create_layer(1440,1440,"Obstaculos",obj_entrada_ini);
	}
else
	{
		exit;
	}