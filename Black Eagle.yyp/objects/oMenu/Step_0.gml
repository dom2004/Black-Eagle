/// @description 
var up, down, accept, back;

up			= keyboard_check_pressed(vk_up);
down		= keyboard_check_pressed(vk_down);
accept		= keyboard_check_pressed(vk_enter);
back		= keyboard_check_pressed(vk_escape);

if up and image_index > 0 {
	image_index--;

}

if down and image_index < image_number-1 {
	image_index++;
}

if image_index == 0 and accept {
	room_goto(rOne); 
}

if image_index == 1 and accept {
	room_goto(rOptions);
}

if image_index == 2 and accept {
	game_end();
}

if image_index == 2 and back {
	room_goto(rMenu);
}