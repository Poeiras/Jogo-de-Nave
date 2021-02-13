/// @description pedaços
var pedaco;
pedaco = irandom_range(5,10);

repeat(pedaco)
	{
		instance_create_layer(x,y,"Obstaculos",obj_pedaco);
	}
