/// @description config
image_angle += 1;
var branco, vermelho;
branco = c_white;
vermelho = c_red;

///State machine
switch estado
	{
		case "parado":
		image_blend = branco;
		break;
		
		case "atingido":
		image_blend = vermelho;
		contador ++;
		imunidade = true;
		if(contador = global.segundo * 3)
			{
				estado = "parado";
				contador = 0;
				imunidade = false;
			}
		break;
		
		case "destruindo":
		image_blend = vermelho;
		diminuir = true;
		if(diminuir)
			{
				image_alpha -= redutor;
				if(image_alpha <= 0.25)
					{
						diminuir = false;
						aumentar = true;
					}
			}
		if(aumentar)
			{
				image_alpha += redutor;
				if(image_alpha >=1)
					{
						aumentar = false;
						diminuir = true;
					}
			}
		break;
	}

if(vida_atual >= 20)
	{
		vida_atual = vida_max;
	}
if(vida_atual <= 0)
	{
		instance_destroy();
	}