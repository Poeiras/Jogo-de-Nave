/// @description planet vida down
var planet = obj_planeta_parent;
if(planet.vida_atual > 0)
	{
		planet.vida_atual --;
	}
else if(!instance_exists(planet))
	{
		exit;
	}
