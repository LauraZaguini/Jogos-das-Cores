/// @description 

var _c = make_color_rgb(131, 68, 87);
var _largura = display_get_gui_width();
var _altura = display_get_gui_height();

if(room == room_menu){
	draw_set_font(fnt_font);
	if(alpha <= 0){
		alpha_add = 0.05;
	}else if(alpha >= 1){
		alpha_add -= 0.05;
	}
	
	alpha += alpha_add;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(_largura/2, _altura - _altura / 3, "Aperte qualquer botao para comecar", _c, _c, _c, _c, alpha);
	
	if(keyboard_check_pressed(vk_anykey)){
		room_goto_next();
	}
}