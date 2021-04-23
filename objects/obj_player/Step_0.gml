/// @description configuração do player
player_movimento(velocidade,deslize,giro_tec,giro_pad);
player_acoes();
player_debug(0);
if(global.vida_atual <= 0)
	{
		global.morto = true;
		global.vivo = false;
		instance_destroy();
	}
if(imune = true)
	{
		contador ++;
		player_pisca(true);
		if(contador >= global.segundo*4)
			{
				imune = false;
				contador = 0;
				image_index = 0;
				image_alpha = 1;
				alfa_mstate = "diminuir";
				player_pisca(false);
			}
	}