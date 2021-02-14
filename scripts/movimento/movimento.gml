function movimento(velo_char,des_char,giro_char)
{
///@arg velocidade
///@arg deslize
///@arg giro

//Teclas e gamepad
var cima,baixo,esq,dir;
var stick_hor,stick_ver,dead;

//Gamepad
stick_hor = gamepad_axis_value(0,gp_axislh);
stick_ver = gamepad_axis_value(0,gp_axislv);
dead = 0.2; //zona morta
gamepad_set_axis_deadzone(0,dead);

//Teclado
cima	= keyboard_check(ord("W"))	|| stick_ver < 0;
baixo	= keyboard_check(ord("S"))	|| stick_ver > 0;
esq		= keyboard_check(ord("A"))	|| stick_hor < 0;
dir		= keyboard_check(ord("D"))	|| stick_hor > 0;

//Cálculo de velocidade
var horizontal,vertical,h1,v1;
h1 = (dir - esq) * velo_char;
v1 = (baixo - cima) * velo_char;
horizontal	= lerp(0,h1,des_char);
vertical	= lerp(0,v1,des_char);

////Configuração de turning
var stick_h,vira_d,vira_e;
stick_h = gamepad_axis_value(0,gp_axisrh);
vira_d = keyboard_check(ord("E"));
vira_e = keyboard_check(ord("Q"));

if(stick_h < 0 || vira_e)
	{
		image_angle += giro_char;
	}
if(stick_h > 0 || vira_d)
	{
		image_angle -= giro_char;
	}


//Colisão
//Horizontal
if(place_meeting(x+horizontal,y,obj_bloco))
	{
		while(!place_meeting(x+sign(horizontal),y,obj_bloco))
			{
				x += sign(horizontal);
			}
		horizontal = 0;
	}
//Vertical
if(place_meeting(x,y+vertical,obj_bloco))
	{
		while(!place_meeting(x,y+sign(vertical),obj_bloco))
			{
				y += sign(vertical);
			}
		vertical = 0;
	}

//Movimento
x += horizontal;
y += vertical;

//Clamp de tela
x = clamp(x,50,room_width - 50);
y = clamp(y,50,room_height - 35);
}