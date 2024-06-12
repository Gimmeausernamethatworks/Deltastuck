depth = -10000;
global.control_type = 1;

textbox_width = 400;
textbox_height = 150;
border = 10;
line_sep = 15;
line_width = textbox_width - border*2;

txtb_sprite[0] = spr_text;
txtb_img = 0;
txtb_img_speed = 6/60;



page = 0;
page_number = 0;

text[0] = "I am Error.";

text_length[0] = string_length(text[0]);

char[0, 0] = "";
char_x[0, 0] = "";
char_y[0, 0] = "";

draw_char = 0;
text_speed = 1;

option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;


scr_set_defaults_for_text();
last_free_space = 0;

text_color = c_black
