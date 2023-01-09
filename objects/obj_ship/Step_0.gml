//Check for player input and move accordingly
if keyboard_check(vk_left)
{
	image_angle += turn_speed;
}

if keyboard_check(vk_right)
{
	image_angle -= turn_speed;
}

if keyboard_check(vk_up)
{
	motion_add(image_angle, ship_acceleration);
}

//Wrap player to other side of the screen
move_wrap(true, true, sprite_width/2);