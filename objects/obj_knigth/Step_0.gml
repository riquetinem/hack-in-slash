switch(state) {
	case "chase" :
		#region Chase State
		set_state_sprite(spr_knight_walk, 0.4, 0);
		
		chase_state();
		#endregion
	break;
	
	case "attack" :
	#region Attack State
		set_state_sprite(spr_knight_attack, 0.6, 0);
		
		if (animation_hit_frame(4)){
			audio_play_sound(a_miss, 3, false);	
			create_hitbox(x, y, self, spr_skeleton_attack_one_damage, 4, 4, 10, image_xscale);
		}
		
		if(animation_end()) 
			state = "chase";
	#endregion
	break;
	
	case "knockback" :
		#region Knockback State
			knockback_state(spr_knight_hitstun, "chase");
		#endregion
	break;
	
	case "death" :
		#region Deat State
			death_state(spr_knight_die);
		#endregion
	break;
	
	default :
		state = "chase";
	break;
}