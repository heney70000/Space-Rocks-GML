switch(room){
	case rm_game:
		draw_text(20, 20, "SCORE: "+ string(score));
		draw_text(20, 40, "LIVES: "+ string(lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS",
			3,3, text_swing, c_purple, c_purple, c_fuchsia, c_fuchsia, 1
		);
		draw_text(
			room_width/2, 200,
@"Score 1000 points to win!

UP: move
LEFT/RIGHT: change direction
SPACE: shoot

[PRESS ENTER TO START]"
			);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		draw_text_transformed_color(
			room_width/2, 200, "YOU WON!",3,3,text_swing,
			c_green,c_green,c_lime,c_lime,1);
		draw_text(room_width/2, 300,
			"[PRESS ENTER TO RESTART]");
		draw_set_halign(fa_left);
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER!",3,3,text_swing,
			c_red,c_red,c_maroon,c_maroon,1);
		draw_text(room_width/2,250,
			"FINAL SCORE: " + string(score));
		draw_text(room_width/2, 300,
			"[PRESS ENTER TO RESTART]");
		draw_set_halign(fa_left);
		break;
		break;
}