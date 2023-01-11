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

if keyboard_check_pressed(vk_space)
{
	var inst = instance_create_layer(x,y, "Instances", obj_bullet)
	inst.direction = image_angle
}

//Wrap player to other side of the screen
move_wrap(true, true, sprite_width/2);