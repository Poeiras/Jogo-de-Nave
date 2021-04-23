function inimigo_colisor(contador,direcao)
{
	///@arg contador escolhido
	if(instance_exists(obj_planeta_parent) && instance_exists(obj_player) && instance_exists(obj_inimi_parent))
		{
			randomize();
			var player,planeta,spd,spd2;
			player	= obj_player;
			planeta = obj_planeta_parent;
			spd		= irandom_range(1,5);
			spd2	= irandom_range(3,6);
			c1 = contador;
		}
	else
		{
			exit;
		}
			
	///Inimigos não atiradores colisores de planeta
	if(instance_exists(planeta))
	{
			image_angle = planeta;
			switch estado
		{
			case "parado":
				speed = 0;
				if(contador >= global.segundo *2)
					{
						estado = "movendo";
						contador = 0;
						c1 = 0;
					}
			break;
		
			case"movendo":
				direction = direcao + offseter;
				speed = spd;
				if(contador = global.segundo * 2)
					{
						estado	= "parado";
						contador = 0;
						c1 = 0;
					}
			break;
		}
	}
}