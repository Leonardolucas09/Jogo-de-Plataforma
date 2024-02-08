/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(place_free(x,y+4 )){
	y+=4
}

if (dir == 1) {
	if(place_free(x+4,y) && place_meeting(x+48,y+4,obj_wall)){
		x+=4
	} 
	
	else {
		dir = -1
		image_xscale = -1
	}
}

if (dir == -1) {
	if(place_free(x-4,y)){
		x-=4
	} 
	
	else {
		dir = 1
		image_xscale = 1
	}
}
var collision = instance_place(x,y,obj_arrow)
if(collision){
	with(collision){
		instance_destroy();
		}
		if(random(100) < 30){
		life--
		}
		
		if(life == 0){
		instance_destroy()
	}
}

