function player_imagens()
{
	//State machine de imagens
	switch estado
	{
		case "parado":
		image_index = 0;
		if(mover)
			{
				estado = "movimento";
			}
		break;
		
		case "movimento":
		image_index = 1;
		if(mover = false)
			{
				estado = "parado";
			}
		break;
		
		case "girando":
		image_index = 2;
		if(girando = false)
			{
				estado = "parado";
			}
		break;
		
		case "escudo":
		image_index = 4;
		if (protegido = false)
			{
				estado = "parado";
			}
		break;
		
		case "meiomorto":
		image_index = 5;
		if(global.vida_atual >=5)
		{
			estado = "parado";
		}
		break;
		
		case "morrendo":
		image_index = 6;
		if(global.vida_atual >=5)
		{
			estado = "parado";
		}
		break;
		
		case"imune":
		image_index = 3;
		if(imune = false)
			{
				estado = "parado";
			}
		break;
	}
	
	//Condições extras
	if (protegido = true)
		{
			estado = "escudo";
		}
	if (global.vida_atual <= 4)
		{
			estado = "meiomorto";
		}
	if(global.vida_atual <= 2)
		{
			estado = "morrendo";
		}
	if(girando)
		{
			estado = "girando";
		}
	if(imune)
		{
			estado = "imune";
		}
}