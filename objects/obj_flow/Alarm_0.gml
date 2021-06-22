/// @description inimigos básicos
randomize();
var i,pedra,chance,pox,poy,criador,vazio;
i = irandom_range(0,3);
pedra = po_ini[i];
chance = irandom(100);
pox = pedra.x;
poy = pedra.y;
criador = 1;
vazio = place_empty(pox,poy)
if(vazio)
	{
		repeat(criador)
		{
			if(chance >= 65)
				{
					ini00 = instance_create_layer(pox,poy,"Inimigos",obj_inimi_00); //atirador
				}
			else
				{
					ini01 = instance_create_layer(pox,poy,"Inimigos",obj_inimi_01); //colisor
				}
		}
	}
else
	{
		i ++;
	}

if(global.planetavivo = true)
	{
		var trigger = "um";
		var temporizador = 5;
		switch trigger
		{
			case "um":
				if(global.nivel = 2)
					{
						temporizador = 4;
						trigger = "dois";
					}
			break;
			
			case "dois":
				if(global.nivel = 3)
					{
						temporizador = 3;
						trigger = "tres";
					}
			break;			
			
			case "tres":
				if(global.nivel = 4)
					{
						temporizador = 2.5;
						trigger = "quatro";
					}
			break;			
			
			case "quatro":
				if(global.nivel = 5)
					{
						temporizador = 2;
						trigger = "cinco";
					}
			break;			
			case "cinco":
				if(global.nivel >= 5)
					{
						temporizador = 1.8;
					}
			break;
		}
		alarm[0] = global.segundo * temporizador;
	}
else
	{
		alarm[0] = 0;
	}