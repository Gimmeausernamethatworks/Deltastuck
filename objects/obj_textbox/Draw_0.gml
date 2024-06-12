accept_key = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"));
skip_key = keyboard_check_pressed(vk_rshift) or keyboard_check_pressed(ord("X"));

textbox_x = camera_get_view_x(view_camera[0]) - 44;
textbox_y = camera_get_view_y(view_camera[0]) + 300 - textbox_height;

if setup == false
	{
		
		setup = true;
		draw_set_font(font_menu);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		
		page_number = array_length(text);
		for(var p = 0; p < page_number; p++)
			{
			text_length[p] = string_length(text[p]);
			
			text_x_offset[p] = 44;
			
			for (var c = 0; c < text_length[p]; c++)
				{
				
				var _char_pos = c+1;
				
				char[c, p] = string_char_at(text[p], _char_pos);
				
				var _txt_up_to_char = string_copy( text[p], 1, _char_pos );
				var _current_txt_w = string_width( _txt_up_to_char) - string_width(char[c, p]);
				
				if char[c, p] == " " {last_free_space = _char_pos+1;};
				if speaker_side[p] == -1 {line_width = textbox_width - border*2 - sprite_get_width(speaker_sprite[p])}
				if speaker_side[p] == 1 
					{
					line_width = textbox_width - border*2 - sprite_get_width(speaker_sprite[p])
					}
				
				if _current_txt_w - line_break_offset[p] > line_width
					{
					line_break_pos[ line_break_num[p], p] = last_free_space;
					line_break_num[p]++
					var _txt_up_to_last_space = string_copy( text[p], 1, last_free_space);
					var _last_free_space_string = string_char_at( text[p], last_free_space);
					line_break_offset[p] = string_width( _txt_up_to_last_space) - string_width( _last_free_space_string);
					}
				
				}
				
				for (var c = 0; c < text_length[p]; c++)
					{
					var _char_pos = c+1;
					var _txt_x = textbox_x + text_x_offset[p] + border
					if speaker_side[p] = 1 {_txt_x = textbox_x + text_x_offset[p] + border + sprite_get_width(speaker_sprite[p])}
					var _txt_y = textbox_y + border;
					var _txt_up_to_char = string_copy( text[p], 1, _char_pos);
					var _current_txt_w = string_width( _txt_up_to_char ) - string_width( char[c, p]);
					var _txt_line = 0;
					
					for (var lb = 0; lb < line_break_num[p]; lb++)
						{
						
						if _char_pos >= line_break_pos[lb, p]
							{
							var _str_copy = string_copy( text[p], line_break_pos[lb, p], _char_pos-line_break_pos[lb, p]);
							_current_txt_w = string_width( _str_copy);
							
							_txt_line = lb+1;
							
							}
						}
						
						char_x[c, p] = _txt_x + _current_txt_w;
						char_y[c, p] = _txt_y + _txt_line*line_sep;
						
					}
			}
	
	}

if draw_char < text_length[page]
	{
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);
	}
	
if accept_key 
	{
	if draw_char == text_length[page]
		{
		if page < page_number - 1
			{
			page++
			draw_char = 0;
			}
		else
			{
			if option_number > 0 {
				create_textbox(option_link_id[option_pos]);	
			}
			
			global.control_type = 0; instance_destroy();
			}
		}
	}
if skip_key {draw_char = text_length[page];}


var _txtb_x = textbox_x + text_x_offset[page]
var _txtb_y = textbox_y;
txtb_img += txtb_img_speed
txtb_sprite_w = sprite_get_width(txtb_sprite[page]);
txtb_sprite_h = sprite_get_height(txtb_sprite[page]);

draw_sprite_ext(txtb_sprite[page], txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_sprite_w, textbox_height/txtb_sprite_h, 0, c_white, 1);

var _speaker_x = 0

if speaker_sprite[page] != noone 
	{
	sprite_index = speaker_sprite[page]
	if speaker_side[page] = 1 {_speaker_x = 0; _txtb_x = textbox_x + text_x_offset[page] + sprite_get_width(sprite_index);}
	if speaker_side[page] = -1 {_speaker_x = 400; _txtb_x = textbox_x + text_x_offset[page];}
	//if speaker_side[page] == -1 {_speaker_x += sprite_width};
	
	
	
	draw_sprite_ext(sprite_index, image_index, _speaker_x, 300 - sprite_height, speaker_side[page], 1, 0, c_white, 1);
	}

if draw_char == text_length[page] && page == page_number -1
	{
	
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos, 0, option_number - 1);
	
	
	var _op_space = 20;
	var _op_bord = 10;
	for (var op = 0; op < option_number; op++)
		{
		var _o_w = string_width(option[op]) + _op_bord*2
		draw_sprite_ext(txtb_sprite[page], txtb_img, _txtb_x + 20, _txtb_y - _op_space*option_number + _op_space*op, _o_w/txtb_sprite_w, (_op_space - 1)/txtb_sprite_h, 0, c_white, 1);
		
		if option_pos = op
			{
			draw_sprite(spr_selection_indicator, 0, _txtb_x, _txtb_y - _op_space*option_number + _op_space*op)
			}
		
		draw_text_color(_txtb_x + 20 + _op_bord, _txtb_y - _op_space*option_number + _op_space*op, option[op], c_black, c_black, c_black, c_black, 1);
		}
	
	}

for(var c = 0; c < draw_char; c++)
	{
	
	draw_text_color(char_x[c, page], char_y[c, page], char[c, page], text_color, text_color, text_color, text_color, 1);
	
	}