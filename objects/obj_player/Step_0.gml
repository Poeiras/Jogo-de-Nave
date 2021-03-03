/// @description configuração do player
player_movimento(velocidade,deslize,giro_tec,giro_pad);
player_acoes();
if(global.vida_atual <= 0)
	{
		global.morto = true;
		global.vivo = false;
		instance_destroy();
	}
if(imune = true)
	{
		contador ++;
		if(contador >= global.segundo*4)
			{
				imune = false;
				contador = 0;
				image_index = 0;
				image_alpha = 1;
			}
	}