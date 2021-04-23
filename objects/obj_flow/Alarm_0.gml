/// @description inimigos básicos
var criador = 1;
var i = irandom_range(0,3);
repeat(criador)
	{
		randomize();
		var pedra,pox,poy,chance;
		chance = irandom(100);
		pedra = po_ini[i];
		pox = pedra.x;
		poy = pedra.y
		if(chance >= 65)
				{
					ini00 = instance_create_layer(pox,poy,"Inimigos",obj_inimi_00);
				}
			else
				{
					ini01 = instance_create_layer(pox,poy,"Inimigos",obj_inimi_01);
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
gf_debuger(false);