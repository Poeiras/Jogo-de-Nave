/// @description
if(imunidade = false)
	{
		vida_atual --;
		estado = "atingido";
		imunidade = true;
		if(vida_atual <= 5)
			{
				estado = "destruindo";
			}
	}