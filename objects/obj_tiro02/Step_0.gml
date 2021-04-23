/// @description configurações
if(image_xscale = 1 && image_yscale = 1)
	{
		image_xscale += 0.1;
		image_yscale += 0.1;
	}
if(image_xscale = 1.5 && image_yscale = 1.5)
	{
		image_xscale -= 0.1;
		image_yscale -= 0.1;
	}
if(y < -30)
	{
		instance_destroy();
	}
