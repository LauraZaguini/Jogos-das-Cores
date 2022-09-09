/// @description 

if(instance_exists(obj_player)){
	alvo = obj_player;	
}else {
	alvo = self;	
}

var yy = lerp(y, alvo.y, .1);

x = lerp(x, alvo.x, .1);
y = max(y, yy);

//Reiniciando ao sair da tela
if(alvo.y < y - 550){
	room_restart();	
}

//Aumentando o tamanho da room

if(y + 500 >= room_height){
	room_height += 1000;
}