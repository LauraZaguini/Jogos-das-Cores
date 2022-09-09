/// @description 

var click = mouse_check_button_pressed(mb_left);

if(click){
	if(velv < 0){
		//Diminuindo a velocidade em 50%
		velv *= .5;	
	}
	velv += -vel;	
}

velv += grav;

//Limitando a velocidade
if(velv < vel){
	velv = vel;	
}
if(velv > - vel){
	velv = - vel;	
}

y += velv;

//Trocando de cor
var col = instance_place(x, y, obj_cor);

if(col){
	//Checando se a cor diferente do bloco
	if(col.valor != valor){
			room_restart();
	}
}

