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
}