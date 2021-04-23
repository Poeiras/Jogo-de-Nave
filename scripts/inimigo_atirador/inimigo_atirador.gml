function inimigo_atirador(contador,direcao)
{
///@arg contador da instance
	///Variáveis locais
	if(instance_exists(obj_planeta_parent) && instance_exists(obj_player) && instance_exists(obj_inimi_parent))
		{
			var player,planeta,spd,spd2,dis,player_dir,t1,t2;
			player	= obj_player;
			planeta = obj_planeta_parent;
			spd		= irandom_range(1,2);
			spd2	= irandom_range(2,4);
			dis		= point_distance(x,y,player.x,player.y);
			c1 = contador;
			player_dir = point_direction(x,y,player.x,player.y);
			t2 = self.direction;
		}
	else
		{
			exit;
		}
	
	///Inimigos atiradores não colisores de planeta
	if(instance_exists(player))
		{
			switch estado
			{

				case "parado":
					speed = 0;
					if(contador = global.segundo *2) 
						{
							estado = "avanço";
							contador = 0;
							c1 = 0;
						}
					if(dis <= 300)
						{
							estado = "atirador";
							contador = 0;
							c1 = 0;
						}
				break;
				
				case "avanço":
					direction = direcao + offseter;
					image_angle = direction;
					speed = spd2;
					if(dis <= 300)
						{
							estado = "atirador";
							contador = 0;
							c1 = 0;
						}
					if(contador = global.segundo * 2)
						{
							estado = "parado";
							contador = 0;
							c1 = 0;
						}
				break;
				
				case "atirador":
					speed = spd;
					direction	= player_dir;
					image_angle = direction;
					if(contador = global.segundo)
						{
							t1 = instance_create_layer(x,y,"Tiros",obj_inimi_tiro00);
							t1.image_angle	= t2;
							t1.direction	= t2;
							contador = 0;
							c1 = 0;
						}
					if(dis >=301)
						{
							estado = "parado";
							contador = 0;
							c1 = 0;
						}
				break;
			}
		}
}