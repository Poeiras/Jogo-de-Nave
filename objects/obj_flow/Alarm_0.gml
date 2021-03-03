/// @description inimigos básicos
var criador = irandom_range(1,2) * global.nivel;
repeat(criador)
	{
		randomize();
		var chance,pedra,pox,poy;
		chance = irandom(100);
		pedra = choose(e1,e2,e3,e4);
		pox = pedra.x;
		poy = pedra.y
		if(chance >= 65)
			{
				var ini00 = instance_create_layer(pox,poy,"Inimigos",obj_inimi_00);
				//show_debug_message(string(chahor));
				show_debug_message("Atirador pedra: " + string(pedra));
			}
		else
			{
				var ini01 = instance_create_layer(pox,poy,"Inimigos",obj_inimi_01);
				//show_debug_message("colisor criado");
				show_debug_message("Colisor pedra: " + string(pedra));
				//show_debug_message(string(chaver));
			}
	}

if(global.planetavivo = true)
	{
		alarm[0] = global.segundo * 4;
	}
else
	{
		alarm[0] = 0;
	}
show_debug_message("Inimigos criados normal");