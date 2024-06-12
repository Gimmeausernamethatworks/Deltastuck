function scr_set_defaults_for_text(){
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	txtb_sprite[page_number] = spr_text;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
}


function scr_text(_text){
	
	scr_set_defaults_for_text();
	
	text[page_number] = _text;
	
	if argument_count > 1 {speaker_sprite[page_number] = argument[1]}
	if argument_count > 2 {speaker_side[page_number] = argument[2]}
	
	switch(argument[1])
		{
		case "john_smile":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_john_smile; break;
				case 1: speaker_sprite[page_number] = spr_talk_john_suit_smile; break;
				case 2: speaker_sprite[page_number] = spr_talk_john_ebsuit_smile; break;
				case 3: speaker_sprite[page_number] = spr_talk_john_vrisjacket_smile; break;
				case 4: speaker_sprite[page_number] = spr_talk_john_dream_smile; break;
				case 5: speaker_sprite[page_number] = spr_talk_john_god_smile; break;
				}
		break;
		case "john_largesmile":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_john_largesmile; break;
				case 1: speaker_sprite[page_number] = spr_talk_john_suit_largesmile; break;
				case 2: speaker_sprite[page_number] = spr_talk_john_ebsuit_largesmile; break;
				case 3: speaker_sprite[page_number] = spr_talk_john_vrisjacket_largesmile; break;
				case 4: speaker_sprite[page_number] = spr_talk_john_dream_largesmile; break;
				case 5: speaker_sprite[page_number] = spr_talk_john_god_largesmile; break;
				}
		break;
		case "john_confused":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_john_confused; break;
				case 1: speaker_sprite[page_number] = spr_talk_john_suit_confused; break;
				case 2: speaker_sprite[page_number] = spr_talk_john_ebsuit_confused; break;
				case 3: speaker_sprite[page_number] = spr_talk_john_vrisjacket_confused; break;
				case 4: speaker_sprite[page_number] = spr_talk_john_dream_confused; break;
				case 5: speaker_sprite[page_number] = spr_talk_john_god_confused; break;
				}
		break;
			
		case "john_surprised":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_john_surprised; break;
				case 1: speaker_sprite[page_number] = spr_talk_john_suit_surprised; break;
				case 2: speaker_sprite[page_number] = spr_talk_john_ebsuit_surprised; break;
				case 3: speaker_sprite[page_number] = spr_talk_john_vrisjacket_surprised; break;
				case 4: speaker_sprite[page_number] = spr_talk_john_dream_surprised; break;
				case 5: speaker_sprite[page_number] = spr_talk_john_god_surprised; break;
				}
		break;
		
		case "john_blush":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_john_blush; break;
				case 1: speaker_sprite[page_number] = spr_talk_john_suit_blush; break;
				case 2: speaker_sprite[page_number] = spr_talk_john_ebsuit_blush; break;
				case 3: speaker_sprite[page_number] = spr_talk_john_vrisjacket_blush; break;
				case 4: speaker_sprite[page_number] = spr_talk_john_dream_blush; break;
				case 5: speaker_sprite[page_number] = spr_talk_john_god_blush; break;
				}
		break;
		
		case "john_angry":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_john_angry; break;
				case 1: speaker_sprite[page_number] = spr_talk_john_suit_angry; break;
				case 2: speaker_sprite[page_number] = spr_talk_john_ebsuit_angry; break;
				case 3: speaker_sprite[page_number] = spr_talk_john_vrisjacket_angry; break;
				case 4: speaker_sprite[page_number] = spr_talk_john_dream_angry; break;
				case 5: speaker_sprite[page_number] = spr_talk_john_god_angry; break;
				}
		break;
		
		case "john_scared":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_john_scared; break;
				case 1: speaker_sprite[page_number] = spr_talk_john_suit_scared; break;
				case 2: speaker_sprite[page_number] = spr_talk_john_ebsuit_scared; break;
				case 3: speaker_sprite[page_number] = spr_talk_john_vrisjacket_scared; break;
				case 4: speaker_sprite[page_number] = spr_talk_john_dream_scared; break;
				case 5: speaker_sprite[page_number] = spr_talk_john_god_scared; break;
				}
		break;
		
		
		
		case "rose_blink":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_rose_blink; break;
				case 1: speaker_sprite[page_number] = spr_talk_rose_dark_blink; break;
				}
		break;
		
		case "rose_bored":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_rose_bored; break;
				case 1: speaker_sprite[page_number] = spr_talk_rose_dark_bored; break;
				}
		break;
		
		case "rose_boredblink":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_rose_boredblink; break;
				case 1: speaker_sprite[page_number] = spr_talk_rose_dark_boredblink; break;
				}
		break;
		
		case "rose_confused":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_rose_confused; break;
				case 1: speaker_sprite[page_number] = spr_talk_rose_dark_confused; break;
				}
		break;
		
		case "rose_disapointed":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_rose_disapointed; break;
				case 1: speaker_sprite[page_number] = spr_talk_rose_dark_disapointed; break;
				}
		break;
		
		case "rose_happy":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_rose_happy; break;
				case 1: speaker_sprite[page_number] = spr_talk_rose_dark_happy; break;
				}
		break;
		
		case "rose_neutral":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_rose_neutral; break;
				case 1: speaker_sprite[page_number] = spr_talk_rose_dark_neutral; break;
				}
		break;
		
		case "rose_smug":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_rose_smug; break;
				case 1: speaker_sprite[page_number] = spr_talk_rose_dark_smug; break;
				}
		break;
		
		
		
		case "dave_smile":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_dave_smile; break;
				case 1: speaker_sprite[page_number] = spr_talk_dave_green_smile; break;
				case 2: speaker_sprite[page_number] = spr_talk_dave_suit_white_smile; break;
				case 3: speaker_sprite[page_number] = spr_talk_dave_suit_black_smile; break;
				case 4: speaker_sprite[page_number] = spr_talk_dave_suit_red_smile; break;
				case 5: speaker_sprite[page_number] = spr_talk_dave_smile; break;
				case 6: speaker_sprite[page_number] = spr_talk_dave_god_smile; break;
				}
		break;
		
		case "dave_neutral":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_dave_neutral; break;
				case 1: speaker_sprite[page_number] = spr_talk_dave_green_neutral; break;
				case 2: speaker_sprite[page_number] = spr_talk_dave_suit_white_neutral; break;
				case 3: speaker_sprite[page_number] = spr_talk_dave_suit_black_neutral; break;
				case 4: speaker_sprite[page_number] = spr_talk_dave_suit_red_neutral; break;
				case 5: speaker_sprite[page_number] = spr_talk_dave_neutral; break;
				case 6: speaker_sprite[page_number] = spr_talk_dave_god_neutral; break;
				}
		break;
		
		case "dave_confused":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_dave_confused; break;
				case 1: speaker_sprite[page_number] = spr_talk_dave_green_confused; break;
				case 2: speaker_sprite[page_number] = spr_talk_dave_suit_white_confused; break;
				case 3: speaker_sprite[page_number] = spr_talk_dave_suit_black_confused; break;
				case 4: speaker_sprite[page_number] = spr_talk_dave_suit_red_confused; break;
				case 5: speaker_sprite[page_number] = spr_talk_dave_confused; break;
				case 6: speaker_sprite[page_number] = spr_talk_dave_god_confused; break;
				}
		break;
		
		case "dave_look":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_dave_look; break;
				case 1: speaker_sprite[page_number] = spr_talk_dave_green_look; break;
				case 2: speaker_sprite[page_number] = spr_talk_dave_suit_white_look; break;
				case 3: speaker_sprite[page_number] = spr_talk_dave_suit_black_look; break;
				case 4: speaker_sprite[page_number] = spr_talk_dave_suit_red_look; break;
				case 5: speaker_sprite[page_number] = spr_talk_dave_look; break;
				case 6: speaker_sprite[page_number] = spr_talk_dave_god_look; break;
				}
		break;
		
		case "dave_angry":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_dave_angry; break;
				case 1: speaker_sprite[page_number] = spr_talk_dave_green_angry; break;
				case 2: speaker_sprite[page_number] = spr_talk_dave_suit_white_angry; break;
				case 3: speaker_sprite[page_number] = spr_talk_dave_suit_black_angry; break;
				case 4: speaker_sprite[page_number] = spr_talk_dave_suit_red_angry; break;
				case 5: speaker_sprite[page_number] = spr_talk_dave_angry; break;
				case 6: speaker_sprite[page_number] = spr_talk_dave_god_angry; break;
				}
		break;
		
		case "dave_smug":
			switch(obj_player.outfit)
				{
				case 0: speaker_sprite[page_number] = spr_talk_dave_smug; break;
				case 1: speaker_sprite[page_number] = spr_talk_dave_green_smug; break;
				case 2: speaker_sprite[page_number] = spr_talk_dave_suit_white_smug; break;
				case 3: speaker_sprite[page_number] = spr_talk_dave_suit_black_smug; break;
				case 4: speaker_sprite[page_number] = spr_talk_dave_suit_red_smug; break;
				case 5: speaker_sprite[page_number] = spr_talk_dave_smug; break;
				case 6: speaker_sprite[page_number] = spr_talk_dave_god_smug; break;
				}
		break;
		
		}

	page_number ++;

}
function scr_option(_option, _link_id) {
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number ++;
	
}

function create_textbox(_text_id) {
	with instance_create_depth(0, 0, -10000, obj_textbox)
		{
		scr_game_text(_text_id)
		}
}
