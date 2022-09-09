/// @description 
rot += spd * direcao;

//Girando os meus filhos
for(var i = 0; i < pedaco; i++){
	var xx = lengthdir_x(dist, rot + i * ang);
	var yy = lengthdir_y(dist, rot + i * ang);
	
	filhos[i].image_angle = (i * ang + 90) + rot; 
	filhos[i].x = x + xx;
	filhos[i].y = y + yy;
}

//Me destruindo
//Comparando o meu Y com o do player
if(instance_exists(obj_player)){
	if(obj_player.y > y + 600){
		instance_destroy();
		show_debug_message("me destrui!");
	}
}