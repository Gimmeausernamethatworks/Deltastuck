if global.control_type = 0
	{
	right_key = keyboard_check(vk_right);
	left_key = keyboard_check(vk_left);
	up_key = keyboard_check(vk_up);
	down_key = keyboard_check(vk_down);
	x_key = keyboard_check(ord("X"));
	p_key = keyboard_check_pressed(ord("P"));
	o_key = keyboard_check_pressed(ord("O"));
	c_key = keyboard_check_pressed(ord("C"));
	accept_key = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter)
	
	movespeed = 1;
	if x_key {movespeed = 2}
	
	if c_key 
		{
		var inst = instance_create_depth(0, 0, -9999, obj_menu)
		inst.menu_type = 1;
		}

	if o_key = 1 {outfit += 1}
	if p_key = 1 {player += 1}
	player_amt = array_length(sprite)
	if player >= player_amt {player = 0}
	if player < 0 {player = player_amt}
	outfit_amt = array_length(sprite[player])
	if outfit >= outfit_amt {outfit = 0}
	if outfit < 0 {outfit = outfit_amt}
	
	
	
	xspeed = (right_key - left_key) * movespeed;
	yspeed = (down_key - up_key) * movespeed;
	
	mask_index = sprite[player] [outfit] [DOWN]
	
	if yspeed > 0 {face = DOWN}
	if yspeed < 0 {face = UP}
	if xspeed > 0 {face = RIGHT}
	if xspeed < 0 {face = LEFT}
	
	if place_meeting(x + xspeed, y, obj_wall)
		{
		if !place_meeting(x + xspeed, y - movespeed, obj_wall)
			{
			y -= movespeed;
			}
		else if !place_meeting(x + xspeed, y + movespeed, obj_wall)
			{
			y += movespeed;
			}
		else
			{
			xspeed = 0;
			}
		}
	if place_meeting(x, y + yspeed, obj_wall)
	{
		if !place_meeting(x + movespeed, y + yspeed, obj_wall)
			{
			x += movespeed;
			face = RIGHT
			}
		else if !place_meeting(x - movespeed, y + yspeed, obj_wall)
			{
			x -= movespeed;
			face = LEFT
			}
		else
			{
			yspeed = 0;
			}
	}
	
	if !instance_exists(obj_textbox) {
		if accept_key
		{
	
		switch face{
			case(RIGHT): 
			if place_meeting(x + 5, y, obj_speak_block) 
				{
				create_textbox(obj_speak_block.text_id)
				} 
			break;
			case(UP): 
			if place_meeting(x, y - 5, obj_speak_block) 
				{
				create_textbox(obj_speak_block.text_id)
				} 
			break;
			case(LEFT): 
			if place_meeting(x - 5, y, obj_speak_block) 
				{
				create_textbox(obj_speak_block.text_id)
				} 
			break;
			case(DOWN): 
			if place_meeting(x, y + 5, obj_speak_block) 
				{
				create_textbox(obj_speak_block.text_id)
				} 
			break;
		}
	}
	}
	
	}
sprite_index = sprite[player] [outfit] [face];
if global.control_type = !0 {xspeed = 0; yspeed = 0;}
if xspeed == 0 and yspeed == 0 {image_index = 0;}

x += xspeed;
y += yspeed;



depth = -bbox_bottom