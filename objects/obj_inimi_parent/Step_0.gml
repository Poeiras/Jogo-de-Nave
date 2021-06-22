///@description config
//Solta o contador do script de movimento adequado
c1++;
//Morte
if(vida <= 0)
	{
		instance_destroy();
	}
if( x < -50 || x > room_width + 30) || ( y < -50 || y > room_height + 30)
	{
		instance_destroy();
	}