switch(room);
	case rm_game:
		draw_text(20, 20, "SCORE: "+ string(score));
		draw_text(20, 40, "LIVES: "+ string(lives));
		break;
		
	case rm_start:
		draw_text_transformed_color(
		room_width/2, 100, "SPACE ROCKS",
		)
		break;
		
	case rm_win:
		
		break;
		
	case rm_gameover:
		
		break;