switch (state) {
	case "chase" :
		#region Chase State
		set_state_sprite(spr_boss_walk, 0.3, 0);
		boss_chase_state();
		boss_knockback();
		#endregion
	break;
	
	case "stall" :
		#region Stall State
		set_state_sprite(spr_boss_idle, 0.3, 0);
		if (alarm[1] <= 0) 
			state = "chase";
			
		boss_knockback();
		#endregion
	break;
	
	case "attack" :
		#region Attack State
		set_state_sprite(spr_boss_attack, 0.5, 0);
		if (animation_hit_frame(7)) {
			audio_play_sound(a_big_hit, 5, false);
			audio_play_sound(a_medium_hit, 2, false);
			create_hitbox(x, y, self, spr_boss_attack_damage, 10, 3, 20, image_xscale);
			add_screenshake(10, 6);
		}
		
		if (animation_end()) {	
			state = "stall";
			alarm[1] = 30;
		}
		
		boss_knockback();
		#endregion
	break;
	
	case "death" :
		#region Death State
		death_state(spr_boss_die);
		#endregion
	break;
}