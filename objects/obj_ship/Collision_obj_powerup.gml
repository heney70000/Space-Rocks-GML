switch other.sprite_index
{
	case spr_nuke:
	score += 100;
	with(obj_asteroid)
	{
		instance_destroy();
	
		if (sprite_index == spr_asteroid_large)
		{
			repeat(2)
			{
				var new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid);
				new_asteroid.sprite_index = spr_asteroid_med;
			}
		}
		else if (sprite_index == spr_asteroid_med)
		{
			repeat(2)
			{
				var new_asteroid = instance_create_layer(x,y, "Instances", obj_asteroid);
				new_asteroid.sprite_index = spr_asteroid_small;
			}
		}
	
		repeat(10)
		{
			instance_create_layer(x,y, "Instances", obj_debris);
		}
	}

	case spr_gun_up:
	bullet_count += 1;
	
	case spr_1up:
	lives += 1;
}

instance_destroy(other);