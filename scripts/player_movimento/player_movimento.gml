function player_movimento(velo_char,des_char,giro_teclado,giro_gamepad)
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
var x1 = x;
var y1 = y;
//Giro para esquerda
if(stick_h < 0)
	{
		if(!place_meeting(x1,y1,obj_bloco))
		{
			image_angle += giro_gamepad;
			girando = true;
		}
	}
if(vira_e)
	{
		if(!place_meeting(x1,y1,obj_bloco))
			{
				image_angle += giro_teclado;
				girando = true;
			}
	}
//Giro para direita
if(stick_h > 0)
	{
		if(!place_meeting(x1,y1,obj_bloco))
		{
			image_angle -= giro_gamepad;
			girando = true;
		}
	}
if(vira_d)
	{
		if(!place_meeting(x1,y1,obj_bloco))
		{
			image_angle -= giro_teclado;
			girando = true;
		}
	}
else if(stick_h = 0 &&! vira_d &&! vira_e)
	{
		girando = false;
	}
	
/////Colisão
//Horizontal
var h3 = x + horizontal;
var v3 = y + vertical;
if(place_meeting(h3,y,obj_bloco))
	{
		while(!place_meeting(x+sign(horizontal),y,obj_bloco))
			{
				x += sign(horizontal);
			}
		horizontal = 0;
	}
//Vertical
if(place_meeting(x,v3,obj_bloco))
	{
		while(!place_meeting(x,y+sign(vertical),obj_bloco))
			{
				y += sign(vertical);
			}
		vertical = 0;
	}

/////Movimento
x += horizontal;
y += vertical;
//Para config de imagem
if(horizontal != 0 || vertical != 0)
	{
		mover = true;
	}
if(horizontal = 0 && vertical = 0)
	{
		mover = false;
	}

////Clamp de tela
x = clamp(x,50,room_width - 50);
y = clamp(y,50,room_height - 35);
}