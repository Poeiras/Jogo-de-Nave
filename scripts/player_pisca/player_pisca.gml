//Descrição
function player_pisca(ativo)
{
	if(ativo)
		{
			var taxa;
			taxa = 0.01;
			switch(alfa_mstate)
			{
				case "diminuir":
				image_alpha -= taxa;
				if(image_alpha <= 0.5)
					{
						alfa_mstate = "crescer";
					}
				break;
				
				case "crescer":
				image_alpha += taxa;
				if(image_alpha >= 1)
					{
						alfa_mstate = "diminuir";
					}
				break;
			}
		}
	else
	{
		exit;
	}
}