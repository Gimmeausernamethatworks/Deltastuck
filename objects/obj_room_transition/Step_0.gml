if place_meeting (x, y, obj_player) && !instance_exists(obj_warp_effect)
	{
	var inst = instance_create_depth(0, 0, -1000, obj_warp_effect)
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	inst.target_direction = target_direction;
	}