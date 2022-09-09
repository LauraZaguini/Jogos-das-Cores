/// @description 

alpha = 0;
alpha_add = 0;

//Definindo informações basicas
pedaco = irandom_range(4, 10);
dist = pedaco * 20;
ang = 360 / pedaco;
rot = 0;

spd = choose(.3, .6, 1, 1.5);
direcao = choose(1, -1);

filhos[pedaco] = 0;

//Definindo as cores
var cor = [c_red, c_blue, c_yellow, c_green];
var valor_c = irandom(3);

//Criando os meus pedaços
for(var i = 0; i < pedaco; i++){
	var xx = lengthdir_x(dist, rot + i * ang);
	var yy = lengthdir_y(dist, rot + i * ang);
	
	filhos[i] = instance_create_layer(x + xx, y + yy, "Instances", obj_cor);
	filhos[i].image_blend = cor[valor_c];
	filhos[i].image_angle = i * ang + 90;
	filhos[i].valor = valor_c;
	
	valor_c++;
	
	valor_c = valor_c mod 4;
}

//Criando um objeto novo
instance_create_layer(x, y + 600, "Instances", obj_novo);