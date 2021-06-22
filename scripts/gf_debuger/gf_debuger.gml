//Descrição
function gf_debuger(numero)
{
	if(numero = 1)
		{
			show_debug_message(string(i));
			show_debug_message(chance);
		}
	if(numero = 2)
		{
			//Qual foi criado
			var x1,y1,st1;
			x1 = 10;
			y1 = 375;
			st1 = ("criado: "  + string(at1) + " posição: " + string(i));
			draw_text(x1,y1,st1);
			
			//Status do place empty
			var x2,y2,st2;
			x2 = 10;
			y2 = 400;
			st2 = ("status do local: " + string(bool(vazio)));
			draw_text(x2,y2,st2);
		}
	else
		{
			exit;
		}
}