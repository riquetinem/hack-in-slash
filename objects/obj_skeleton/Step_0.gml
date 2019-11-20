switch (state) {
	case "move" :
		#region Move State
		if (input.rigth){
			move_and_collide(spd, 0);
			sprite_index = spr_skeleton_run;
			image_xscale = 1;
			image_speed = 0.6;
		}
	
		if(input.left){
			move_and_collide(-spd, 0);
			sprite_index = spr_skeleton_run;
			image_xscale = -1;
			image_speed = 0.6;
		}

		if (!input.left && !input.rigth){
			sprite_index = spr_skeleton_idle;	
			image_speed = 0.4;
		}
	
		if(input.roll)
			state = "roll";
	
	
		if (input.attack)
			state = "attack1";
	
	
		#endregion
	break;

	case "roll" :
		#region Roll State
		set_state_sprite(spr_skeleton_roll, 0.7, 0);
	
		if(image_xscale == 1)
			move_and_collide(spdRoll, 0);
		else if (image_xscale == -1)
			move_and_collide(-spdRoll, 0);
		
		if (animation_end())
			state = "move";
		#endregion
	break;

	case "attack1" :
		#region Attack One State
		set_state_sprite(spr_skeleton_attack_one, 0.7, 0);
	
		if (animation_hit_frame(0))
			create_hitbox(x, y, self, spr_skeleton_attack_one_damage, 3, 4, 5, image_xscale);
	
		if (input.attack && animation_hit_frame_range(2, 4)) 
			state = "attack2";
	
		if(animation_end()) 
			state = "move";
		#endregion
	break;

	case "attack2" :
		#region Attack Two State
		set_state_sprite(spr_skeleton_attack_two, 0.7, 0);
	
		if (animation_hit_frame(1))
			create_hitbox(x, y, self, spr_skeleton_attack_two_damage, 3, 4, 5, image_xscale);
	
		if (input.attack && animation_hit_frame_range(2, 4)) 
			state = "attack3";
	
		if(animation_end()) 
			state = "move";
		#endregion
	break;
	
	case "attack3" :
		#region Attack Three State
		set_state_sprite(spr_skeleton_attack_three, 0.7, 0);
	
		if (animation_hit_frame(2))
			create_hitbox(x, y, self, spr_skeleton_attack_three_damage, 4, 4, 8, image_xscale);
		
		if(animation_end()) 
			state = "move";
		#endregion
	break;
	
	case "knockback" :
	#region Knockback State
		knockback_state(spr_skeleton_hitstun, "move");
	#endregion
	break;
	default :
		state = "move";
	break;
}