xspeed = 0;
yspeed = 0;
movespeed = 1;

player = 0;
outfit = 0;
player_amt = 0;
outfit_amt = 0;

if 1 = 1 //character definitions
{
sprite[0] [0] [RIGHT] = spr_chr_john_right
sprite[0] [0] [UP] = spr_chr_john_up
sprite[0] [0] [LEFT] = spr_chr_john_left
sprite[0] [0] [DOWN] = spr_chr_john_down 

sprite[0] [1] [RIGHT] = spr_chr_john_suit_right
sprite[0] [1] [UP] = spr_chr_john_suit_up
sprite[0] [1] [LEFT] = spr_chr_john_suit_left
sprite[0] [1] [DOWN] = spr_chr_john_suit_down

sprite[0] [2] [RIGHT] = spr_chr_john_ebsuit_right
sprite[0] [2] [UP] = spr_chr_john_ebsuit_up
sprite[0] [2] [LEFT] = spr_chr_john_ebsuit_left
sprite[0] [2] [DOWN] = spr_chr_john_ebsuit_down

sprite[0] [3] [RIGHT] = spr_chr_john_vrisjacket_right
sprite[0] [3] [UP] = spr_chr_john_vrisjacket_up
sprite[0] [3] [LEFT] = spr_chr_john_vrisjacket_left
sprite[0] [3] [DOWN] = spr_chr_john_vrisjacket_down

sprite[0] [4] [RIGHT] = spr_chr_john_dream_right
sprite[0] [4] [UP] = spr_chr_john_dream_up
sprite[0] [4] [LEFT] = spr_chr_john_dream_left
sprite[0] [4] [DOWN] = spr_chr_john_dream_down

sprite[0] [5] [RIGHT] = spr_chr_john_god_right
sprite[0] [5] [UP] = spr_chr_john_god_up
sprite[0] [5] [LEFT] = spr_chr_john_god_left
sprite[0] [5] [DOWN] = spr_chr_john_god_down



sprite[1] [0] [RIGHT] = spr_chr_rose_right
sprite[1] [0] [UP] = spr_chr_rose_up
sprite[1] [0] [LEFT] = spr_chr_rose_left
sprite[1] [0] [DOWN] = spr_chr_rose_down

sprite[1] [1] [RIGHT] = spr_chr_rose_dark_right
sprite[1] [1] [UP] = spr_chr_rose_dark_up
sprite[1] [1] [LEFT] = spr_chr_rose_dark_left
sprite[1] [1] [DOWN] = spr_chr_rose_dark_down

sprite[1] [2] [RIGHT] = spr_chr_rose_right
sprite[1] [2] [UP] = spr_chr_rose_up
sprite[1] [2] [LEFT] = spr_chr_rose_left
sprite[1] [2] [DOWN] = spr_chr_rose_down

sprite[1] [3] [RIGHT] = spr_chr_rose_right
sprite[1] [3] [UP] = spr_chr_rose_up
sprite[1] [3] [LEFT] = spr_chr_rose_left
sprite[1] [3] [DOWN] = spr_chr_rose_down



sprite[2] [0] [RIGHT] = spr_chr_dave_right
sprite[2] [0] [UP] = spr_chr_dave_up
sprite[2] [0] [LEFT] = spr_chr_dave_left
sprite[2] [0] [DOWN] = spr_chr_dave_down

sprite[2] [1] [RIGHT] = spr_chr_dave_green_right
sprite[2] [1] [UP] = spr_chr_dave_green_up
sprite[2] [1] [LEFT] = spr_chr_dave_green_left
sprite[2] [1] [DOWN] = spr_chr_dave_green_down

sprite[2] [2] [RIGHT] = spr_chr_dave_suit_white_right
sprite[2] [2] [UP] = spr_chr_dave_suit_white_up
sprite[2] [2] [LEFT] = spr_chr_dave_suit_white_left
sprite[2] [2] [DOWN] = spr_chr_dave_suit_white_down

sprite[2] [3] [RIGHT] = spr_chr_dave_suit_black_right
sprite[2] [3] [UP] = spr_chr_dave_suit_black_up
sprite[2] [3] [LEFT] = spr_chr_dave_suit_black_left
sprite[2] [3] [DOWN] = spr_chr_dave_suit_black_down

sprite[2] [4] [RIGHT] = spr_chr_dave_suit_red_right
sprite[2] [4] [UP] = spr_chr_dave_suit_red_up
sprite[2] [4] [LEFT] = spr_chr_dave_suit_red_left
sprite[2] [4] [DOWN] = spr_chr_dave_suit_red_down

sprite[2] [5] [RIGHT] = spr_chr_dave_dream_right
sprite[2] [5] [UP] = spr_chr_dave_dream_up
sprite[2] [5] [LEFT] = spr_chr_dave_dream_left
sprite[2] [5] [DOWN] = spr_chr_dave_dream_down

sprite[2] [6] [RIGHT] = spr_chr_dave_god_right
sprite[2] [6] [UP] = spr_chr_dave_god_up
sprite[2] [6] [LEFT] = spr_chr_dave_god_left
sprite[2] [6] [DOWN] = spr_chr_dave_god_down



sprite[3] [0] [RIGHT] = spr_chr_jade_right
sprite[3] [0] [UP] = spr_chr_jade_up
sprite[3] [0] [LEFT] = spr_chr_jade_left
sprite[3] [0] [DOWN] = spr_chr_jade_down
}


face = DOWN;