/// @description configuração

//Variáveis
var player = obj_player;
cam = camera_create();
cam = view_camera[0];
bordas = 64;
velo = 20;
portw = 800;
porth = 600;
resolux = 1366;
resoluy = 768;
p1 = resolux/2;
p2 = resoluy/2

//Definindo o player como principal alvo
camera_set_view_target(cam,player);
camera_set_view_pos(cam,player.x - p1,player.y - p2);
camera_set_view_border(cam,bordas,bordas);
camera_set_view_speed(cam,velo,velo)

//Tamanho da câmera
camera_set_view_size(cam,resolux,resoluy);
view_set_wport(cam,portw);
view_set_hport(cam,porth);

//Ativação
view_set_visible(cam,true);
camera_apply(cam);
view_enabled = true;

//Debugando
/*
var wv = view_get_wport(cam);
var hv = view_get_hport(cam);
var cwv = camera_get_view_width(cam);
var chv = camera_get_view_height(cam);
show_debug_message("W " + string(wv) + " H " + string(hv)); //view port
show_debug_message("W " + string(cwv) + " H " + string(chv)); // camera
*/
