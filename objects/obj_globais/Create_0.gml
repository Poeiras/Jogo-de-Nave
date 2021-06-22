/// @description variáveis

//Globais de config
global.segundo = game_get_speed(gamespeed_fps) * 1;
global.metadex = room_width/2;
global.metadey = room_height/2;
global.debuger = false;

//Player
global.vida_total	= 6;
global.vida_atual	= 6;
global.vivo			= false;
global.morto		= false;
global.escudo		= 3;
global.arma = "arma 00";

//Planeta
global.planetavivo	= false;
global.planetamorto = false;

//Jogo
global.jogadorvivo	= false;
global.jogadormorto	= true;
global.pontosatual	= 0;
global.maxpontos	= 0;
global.nivel		= 1;
global.colisoes	= 0;
global.meta_de_ponto = 5;
global.vitoria = false;
global.derrota = false;