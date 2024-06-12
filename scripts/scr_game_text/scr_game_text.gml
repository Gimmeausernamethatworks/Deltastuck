function scr_game_text(_text_id){
	
switch(_text_id) {
	
	case "NPC 1":
		scr_text("hihihihihihihihihihihi")
		break;
	
	case "NPC 2":
		switch(obj_player.player)
			{
			case 0:
				scr_text("I am Dave Strider.", spr_talk_dave_neutral, -1)
				scr_text("long long long long long long long long long long long long long long long long long long long long", "john_smile", 1); 
					scr_option("Yes", "NPC 1");
					scr_option("No", "NPC 2");
				break;
			case 1:
				scr_text("I am Dave Strider.", spr_talk_dave_neutral, -1)
				scr_text("I have talk sprites!", "rose_happy")
			break;
			case 2:
				scr_text("What?", spr_talk_dave_confused, -1)
				scr_text("I am you, but from the future", "dave_neutral", 1);
			break;
			}
		break;
	
	}

}