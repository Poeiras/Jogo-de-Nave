/// @description configs
//Iniciando o flow dessa fase
if(room = rm_base and not global.morto)
	{
		if(!instance_exists(obj_player))
			{
				instance_create_layer(entrada.x,entrada.y,"Player",obj_player)	
				global.vivo = true;
			}
				
		if(!instance_exists(obj_camera))
			{
				instance_create_layer(player.x,player.y,"Controladoras",obj_camera)
			}
	}