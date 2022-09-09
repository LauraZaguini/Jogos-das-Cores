/// @description 

instance_create_layer(x, y + 550, "Instances", obj_controller);

//Mudando a cor do outro que sempre vai ser o player
with(other){
	//Alterando o valor do player
	valor = irandom(3);
	image_blend = cor[valor];
}

instance_destroy();