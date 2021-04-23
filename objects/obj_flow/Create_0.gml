/// @description variáveis
entrada = obj_entrada;
player = obj_player;
if(room = rm_base)
	{
		alarm[0] = room_speed * 2;
		po_ini[0] = instance_create_layer(64,64,"Obstaculos",obj_entrada_ini);
		po_ini[1] = instance_create_layer(1408,64,"Obstaculos",obj_entrada_ini);
		po_ini[2] = instance_create_layer(64,1440,"Obstaculos",obj_entrada_ini);
		po_ini[3] = instance_create_layer(1440,1440,"Obstaculos",obj_entrada_ini);
	}
else
	{
		exit;
	}