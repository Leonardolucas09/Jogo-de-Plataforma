/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(keyboard_check(vk_right) && place_free(x+spd,y)){
	x+=spd;
	image_xscale = 1
}

else if(keyboard_check(vk_left) && place_free(x-spd,y)){
	x-=spd;
	image_xscale = -1
}

if(keyboard_check(ord("X"))){
	if(!place_free(x,y+1)){
		jump = true
	}
}

if(jump){
	if(jumpFrames < jumpHeight){
	
		if(place_free(x,y-spd)){
			jumpFrames+=spdJump
			y-=spdJump
		}
		else{
			jump = false
			jumpFrames = 0
		}
	}
	else{
		jump = false
		jumpFrames = 0
	}
}


if(jump == false){
	if(place_free(x,y+spdFall)){
		y+=spdFall
		spdFall+=gvd
	}
		if(spdFall > maxSpdFall){
			spdFall = maxSpdFall
	}
	else{
		spdFall = 2
		
	}

}

if(keyboard_check_pressed(ord("Z"))){
	var obj = instance_create_depth(x,y, -10,obj_arrow)
	obj.dir = image_xscale	
}

if(place_meeting(x,y,obj_enemy)){
	life--;
	if(life <= 0){
		room_restart();
	}
}