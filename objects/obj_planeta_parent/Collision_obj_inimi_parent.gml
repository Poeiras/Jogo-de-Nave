/// @description
if(imunidade = false)
	{
		vida_atual --;
		estado = "atingido";
		if(vida_atual <= 5)
			{
				estado = "destruindo";
			}
	}