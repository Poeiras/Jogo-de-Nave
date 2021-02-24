//Debug de colisão com retângulo para ajudar
function debug_colider()
{
	//Inicializadores
	var plx = obj_player.x; //51
	var ply = obj_player.y; //35
	var s1,s2,s3,s4,p1,p2,p3,p4,cor,cor2,sprite;
	
	//Estático
	p1 = plx - 50 ; //origem x
	p2 = ply - 50; //origem y
	p3 = plx + 50; //ponto máximo x
	p4 = ply + 50 ; //ponto máximo y
	cor = c_green;
	draw_rectangle_color(p1,p2,p3,p4,cor,cor,cor,cor,false);

	//Com movimento
	sprite = spr_player;
	s1 = sprite(sprite_get_bbox_left(0)); //x=0
	s2 = sprite(sprite_get_bbox_top(0)); //y=0
	s3 = p1 + sprite(sprite_get_bbox_right(0)); //x = 101 (base)
	s4 = p2 + sprite(sprite_get_bbox_bottom(0)); // y = 69; (base)
	cor2 = c_blue;
	draw_rectangle_color(p1,p2,s3,s4,cor2,cor2,cor2,cor2,false);
	
	///Mensagensa de debug
	//show_debug_message(string(p1));
	//show_debug_message(string(p2));
	//show_debug_message(string(p3));
	//show_debug_message(string(p4));
	//show_debug_message(string(s1));
	//show_debug_message(string(s2));
	show_debug_message(string(s3));
	show_debug_message(string(s4));

}