switch (state) {
	case "chase" :
		#region Chase State
			if (!instance_exists(obj_skeleton))
				exit;
				
			if(place_meeting(x, y, obj_skeleton) && obj_skeleton.state != "roll" && attacked = false) {
				create_hitbox(x, y, self, sprite_index, knockBack, 1, damage, image_xscale);
				attacked = true;	
			}
			
			if (attacked == true){
				vspeed = -1;	
			}
		#endregion
	break;
	
	case "death" : 
		#region Death State
		audio_play_sound(a_crow_pop, 1, false);
			repeat (6) {
				instance_create_layer(x + random_range(-4, 4), y - 16 +  random_range(-4, 4), "Effects", obj_feather)	;
			}
			instance_destroy();
		#endregion
	break;
}