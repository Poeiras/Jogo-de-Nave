/// @description config
image_xscale += 0.25;
image_yscale += 0.25;
image_alpha -= 0.01;

if(image_alpha <= 0)
	{
		instance_destroy();
	}