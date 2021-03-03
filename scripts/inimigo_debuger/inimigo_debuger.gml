//Descrição debuger de inimigos
function inimigo_debuger(debugador)
{
	///Debug de direção
	if(debugador = 1)
	{
		show_debug_message("Direção Atirador: " + string(obj_inimi_00.dir_final));
		show_debug_message("Direção Colisor: "  + string(obj_inimi_01.dir_final));
	}
	else
	{
		exit;
	}
}