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
//Flow de pontos
if(global.pontosatual > global.maxpontos)	
	{
		global.maxpontos = global.pontosatual;
	}
else
	{
		global.maxpontos = global.maxpontos;
	}
if(global.pontosatual = global.meta_de_ponto)
	{
		global.nivel += 1;
		global.meta_de_ponto += 5;
	}
// nívels
// 5 - 10 - 15 - 20 - 25
if(global.nivel = 5)
	{
		global.vitoria = true;
	}