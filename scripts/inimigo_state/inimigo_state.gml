///@function inimigo_state()
///@descrption script controlador da state machine


function inimigo_state(atirador)
{
	///@arg atirador bool
	///Variáveis locais
	if(instance_exists(obj_planeta_parent) && instance_exists(obj_player))
		{
			var player,planeta,dir,dir2,spd,spd2,dis,dis2,contador1,contador2;
			player	= obj_player;
			planeta = obj_planeta_parent;
			dir		= planeta.x;
			dir2	= player.x;
			spd		= irandom_range(1,5);
			spd2	= irandom_range(3,6);
			dis		= point_distance(x,y,player.x,player.y);
			dis2	= point_distance(x,y,planeta.x,planeta.y);
		}
	else
		{
			exit;
		}
	
	///Inimigos atiradores não colisores de planeta
	if(atirador && instance_exists(player))
		{
			switch estado
			{
				case "parado":
					speed = 0;
					contador1 ++;
					if(contador1 = global.segundo *2)
						{
							estado = "avanço";
							contador1 = 0;
						}
					if(dis <= 200)
						{
							estado = "atirador";
						}
				break;
				
				case "avanço":
					direction = player.xprevious;
					image_angle = direction;
					speed = spd2;
					contador1 ++;
					if(dis <= 200)
						{
							estado = "atirador";
							contador1 = 0;
						}
					if(contador1 = global.segundo * 2)
						{
							estado = "parado";
							contador1 = 0;
						}
				break;
				
				case "atirador":
					speed = 0;
					direction	= obj_player.xprevious + 90;
					image_angle = direction;
					contador1++;
					if(contador1 = global.segundo)
						{
							instance_create_layer(x,y,"Tiros",obj_inimi_tiro00);
							contador1 = 0;
						}
					if(dis >=201)
						{
							estado = "parado";
							contador1 = 0;
						}
				break;
			}
		}
			
	///Inimigos não atiradores colisores de planeta
	if(atirador = false && instance_exists(planeta))
	{
			image_angle = planeta;
			switch estado
		{
			case "parado":
				speed = 0;
				contador2 ++;
				if(contador2 >= global.segundo *2)
					{
						estado = "movendo";
						contador2 = 0;
					}
			break;
		
			case"movendo":
				direction = dir;
				speed = spd;
				contador2 ++
				if(contador2 = global.segundo * 2)
					{
						estado	= "parado";
						contador2 = 0;
					}
			break;
		}
	}
}