up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))

op_length = array_length(option[menu_type] [menu_level])

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length - 1};

if accept_key{
	
var _sml = menu_level
	
	switch(menu_type){
	//main menu
	case 0:
		switch(menu_level){
		//main menu
		case 0:
			switch(pos){
			//start game
			case 0: room_goto_next(); global.control_type = 0; instance_destroy(); break;
			//rick roll
			case 1: menu_level = 1; pos = 0; break;
			//close game
			case 2: game_end(); break;
				}
		break;
		//rick roll
		case 1:
			switch(pos){
			//never
			case 0: menu_level = 0; pos = 0; break;
			//gonna
			case 1: menu_level = 0; pos = 0; break;
			//give
			case 2: menu_level = 0; pos = 0; break;
			//you
			case 3: menu_level = 0; pos = 0; break;
			//up
			case 4: menu_level = 0; pos = 0; break;
				}
		break;
		}
	break;
	//pause menu
	case 1:
		switch(menu_level){
		case 0:
			//pause menu
			switch(pos){
			//continue
			case 0: global.control_type = 0; instance_destroy(); break;
			//rick roll
			case 1: menu_level = 1; pos = 0; break;
			//close game
			case 2: game_end(); break;
			}
		break;
		case 1:
			//rick roll
			switch(pos){
			//never
			case 0: menu_level = 0; pos = 0; break;
			//gonna
			case 1: menu_level = 0; pos = 0; break;
			//give
			case 2: menu_level = 0; pos = 0; break;
			//you
			case 3: menu_level = 0; pos = 0; break;
			//up
			case 4: menu_level = 0; pos = 0; break;
			}
		break;
		}
	break;
		}
	
	if _sml != menu_level {pos = 0;}


op_length = array_length(option[menu_type] [menu_level])

	}