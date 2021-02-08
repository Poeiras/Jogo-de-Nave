/// @description
x = obj_player.x;
y = obj_player.y;

if(aparecer)
	{
		image_alpha += rate_alfa;
	}
if(image_alpha >= alfa)
	{
		image_alpha = alfa;
		aparecer = false;
		contador ++;
	}
if(contador = global.segundo * 3.5)
	{
		sumir = true;
		image_alpha -= rate_alfa;
		if(image_alpha <=0 && sumir)
			{
				instance_destroy();
			}
	}