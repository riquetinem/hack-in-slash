switch(state) {
	case "chase" :
		#region Chase State
		set_state_sprite(spr_knight_walk, 0.4, 0);
		
		if (!instance_exists(obj_skeleton)) 
			break;
		
		// matem o inimigo sempre virado para o player
		image_xscale = sign(obj_skeleton.x - x);
		if(image_xscale == 0)
			image_xscale = 1;
			
		var directionFacing = image_xscale;
			
		var distance_to_player = point_distance(x, y, obj_skeleton.x, obj_skeleton.y);
		if (distance_to_player <= attackRange)
			state = "attack";
		else
			move_and_collide(directionFacing * chaseSpeed, 0);
		#endregion
	break;
	
	case "attack" :
	#region Attack State
		set_state_sprite(spr_knight_attack, 0.6, 0);
		
		if (animation_hit_frame(4))
			create_hitbox(x, y, self, spr_skeleton_attack_one_damage, 4, 4, 1, image_xscale);
	
		
		if(animation_end()) 
			state = "chase";
	#endregion
	break;
}