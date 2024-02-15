// basic movement
// move up & down
if (keyboard_check(ord("W")))
{
	if (!place_meeting(x,y-movespeed,obj_wall))
		y -= movespeed;	
}
if (keyboard_check(ord("S")))
{
	if (!place_meeting(x,y+movespeed,obj_wall))
		y += movespeed;
}

// move right & left
if (keyboard_check(ord("D")))
{	
	if (!place_meeting(x+movespeed,y,obj_wall))
		x += movespeed;
}
if (keyboard_check(ord("A")))
{
	if (!place_meeting(x-movespeed,y,obj_wall))
		x -= movespeed;
}

// when we touch a breakable object, find it and break it
if (place_meeting(x,y,obj_breakable))
{
	instance_destroy(instance_place(x,y,obj_breakable))
}
