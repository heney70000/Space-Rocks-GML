//Check for player input and move accordingly
if keyboard_check(vk_left) or keyboard_check(ord("A"))
{
	image_angle += turn_speed;
}

if keyboard_check(vk_right) or keyboard_check(ord("D"))
{
	image_angle -= turn_speed;
}

if keyboard_check(vk_up) or keyboard_check(ord("W"))
{
	motion_add(image_angle, ship_acceleration);
}

if (keyboard_check(vk_down) or keyboard_check(ord("S"))) and speed >= 0
{
	motion_add(direction, -ship_acceleration);
}

if keyboard_check_pressed(vk_space)
{
	repeat (bullet_count)
	{
	audio_play_sound(snd_zap, 1, false);
	var inst = instance_create_layer(x,y, "Instances", obj_bullet)
	inst.direction = image_angle
	inst.image_angle = image_angle
	}
}

//Wrap player to other side of the screen
move_wrap(true, true, sprite_width/2);