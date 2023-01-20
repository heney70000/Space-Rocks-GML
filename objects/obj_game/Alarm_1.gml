/// @desc 
if (room != rm_game)
{
	exit;
}

if (choose(0, 1) == 0)
{
	//go down the sides
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
}
else
{
	//from top or bottom
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "Instances", obj_asteroid);

alarm[1] = room_speed * 4;
