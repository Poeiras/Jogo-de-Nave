/// @description GUI/HUD
//Checando se o player vive
var vivo = instance_exists(obj_player);
if(vivo = false)
	{
		exit;
	}
//Textos
draw_text(10,10,"VIDAS");
draw_text(10,100,"ESCUDOS");
draw_text(10,200,"ARMA EQUIPADA");

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