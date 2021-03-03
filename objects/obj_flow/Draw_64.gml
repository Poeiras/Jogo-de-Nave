/// @description GUI/HUD
//Checando se o player vive
if(room != rm_base)
	{
		exit;
	}
	

#region HUD do Planeta
///Vida do planeta
var planet,p2,cor1,cor2,cor3,hb1;
planet = obj_planeta_parent;
if(instance_exists(planet))
	{
		p2 = (planet.vida_atual/planet.vida_max) * 100;
		cor1 = c_black;
		cor2 = c_red;
		cor3 = c_green;

		draw_text(15,300,"VIDA DO PLANETA:");
		hb1 = draw_healthbar(15,325,150,350,p2,cor1,cor2,cor3,0,true,true);
	}
else
	{
		hb1 = false;
	}
#endregion


#region HUD Player
var vivo = instance_exists(obj_player);
if(vivo = true)
{
	//Textos e HUD do player
	draw_set_font(fnt_jogo);
	draw_set_halign(fa_left);
	draw_set_valign(fa_left);

	draw_text(15,10,"VIDAS");
	draw_text(15,100,"ESCUDOS");
	draw_text(15,200,"ARMA EQUIPADA");

	#region Vida e escudo
	//Vidas
	var n1,n2;
	n1 = 25;
	n2 = 35;
	repeat(global.vida_atual)
		{
			draw_sprite_ext(spr_vidas,1,0+n1,50,1,1,0,c_white,1);
			n1 += 25;
		}

	//Diferença entre vida e perda
	global.vida_diffe	= global.vida_total - global.vida_atual;
	repeat(global.vida_diffe)
		{
			draw_sprite_ext(spr_vidas,0,10+n1,50,1,1,0,c_white,1);
			n1 += 25;
		}
	
	//Escudos
	repeat(global.escudo)
		{
			draw_sprite_ext(spr_shield,10,0+n2,150,0.25,0.25,0,c_white,1);
			n2 += 35;
		}
	#endregion

	#region Armas e itens
	//Armas
	switch(global.arma)
			{
				case "arma 00":
				var t01,t02;
				t01 = draw_sprite_ext(spr_tiro01,0,25,250,1.5,1.5,0,c_white,1);
				t02 = draw_sprite_ext(spr_tiro02,0,75,250,1,1,0,c_white,0.25);
					if(obj_player.eq = 1)
						{
							global.arma = "arma 01";
						}
				break;
		
				case "arma 01":
				t01 = draw_sprite_ext(spr_tiro01,0,25,250,1.5,1.5,0,c_white,0.25);
				t02 = draw_sprite_ext(spr_tiro02,0,75,250,1,1,0,c_white,1);
					if(obj_player.eq = 0)
						{
							global.arma = "arma 00";
						}
				break;
			}
#endregion
}
#endregion