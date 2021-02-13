/// @description abertura
switch(fase)
	{
		case "abertura00":

		m1 = 100;
		draw_set_font(fnt_abertura);
		draw_text(metx,mety,"SEJA BEM VINDO");
		draw_text(metx,mety+m1,"O ESPAÇO PRECISA DE VOCÊ!");
		if(room = rm_abertura01)
			{
				fase = "abertura01";
			}
		break;
		
		case "abertura01":
		draw_text(metx,mety,"ESCOLHA SEU DESTINO");
		break;
	}



