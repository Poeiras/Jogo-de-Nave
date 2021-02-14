function acoes()
{
var tiro,escudo,arma,prox_arma,ante_arma;
arma = equipado[eq];
tiro = keyboard_check_released(ord("P")) || gamepad_button_check_released(0,gp_shoulderrb);
escudo = keyboard_check_released(ord("O")) || gamepad_button_check_released(0,gp_face2);
prox_arma = keyboard_check_released(ord("3")) || gamepad_button_check_released(0,gp_shoulderr);
ante_arma = keyboard_check_released(ord("1")) || gamepad_button_check_released(0,gp_shoulderl);

if(tiro)
	{
		instance_create_layer(x,y,"Tiros",arma);
	}
if(prox_arma &&! eq = 1)
	{
		eq ++;
	}
if(ante_arma &&! eq = 0)
	{
		eq --;
	}
if(escudo &&! protegido)
	{
		global.escudo --;
		protegido = true;
		instance_create_layer(x,y,"Player",obj_shield);
	}
}