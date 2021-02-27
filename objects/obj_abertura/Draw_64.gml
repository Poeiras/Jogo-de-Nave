/// @description abertura
switch(fase)
	{
		case "abertura00":

		m1 = 100;
		draw_set_font(fnt_abertura);
		if(room = rm_abertura01)
			{
				fase = "abertura01";
			}
		break;
		
		case "abertura01":
		draw_text(metx,mety,"ESCOLHA SEU DESTINO");
		break;
	}



