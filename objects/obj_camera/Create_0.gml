/// @description 

if(instance_exists(obj_player)){
	alvo = obj_player;	
}else {
	alvo = self;	
}


//Girar a camera
camera_set_view_angle(view_camera[0], 180);