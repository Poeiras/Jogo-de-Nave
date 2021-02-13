/// @description configuração do player
movimento(velocidade,deslize);
acoes();
if(global.vida_atual <= 0)
	{
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
				show_debug_message("fim da imunidade!");
			}
	}