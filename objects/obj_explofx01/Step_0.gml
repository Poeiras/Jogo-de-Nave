/// @description
image_xscale += 0.1;
image_yscale += 0.1;
image_alpha -= 0.025;

if(image_alpha <= 0)
	{
		instance_destroy();
	}