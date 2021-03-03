/// @description planet vida up
var planet = obj_planeta_parent;
if((planet.vida_atual < planet.vida_max))
	{
		planet.vida_atual ++;
	}
else if (!instance_exists(planet))
	{
		exit;
	}