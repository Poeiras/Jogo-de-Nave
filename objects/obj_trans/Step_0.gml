/// @description configuração

//Config da transação
if (sumindo = true)
	{
		alfa -=0.05;
	}
else
	{
		alfa +=0.05;
	}

if ( alfa >=1)
	{
		sumindo = true;
		room_goto(destino);
	}

if (alfa <=0 and novaroom=true)
	{
		instance_destroy();
	}