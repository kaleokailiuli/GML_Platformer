/// @desc Core Player Logic

//get player inputs
Key_left = keyboard_check(vk_left);
Key_right = keyboard_check(vk_right);
Key_jump = keyboard_check_pressed(vk_space);

//calculate our movement
var _move = Key_right - Key_left;

HorizontalSpeed = _move * walkspeed;

HorizontalSpeed = _move * walkspeed;

VerticalSpeed = VerticalSpeed + Grv;

if (place_meeting(x,y+1,Obj_InvisibleWall)) && (Key_jump)
{
	VerticalSpeed = -jumpspeed
}

//horizontal collision
if (place_meeting(x + HorizontalSpeed,y,Obj_InvisibleWall))
{
	while (!place_meeting(x+sign(HorizontalSpeed),y,Obj_InvisibleWall))
	{
		x = x + sign(HorizontalSpeed);
	}
	HorizontalSpeed = 0;
}
x = x + HorizontalSpeed;

//vertical collision
if (place_meeting(x,y + VerticalSpeed,Obj_InvisibleWall))
{
	while (!place_meeting(x,y+sign(VerticalSpeed),Obj_InvisibleWall))
	{
		y = y + sign(VerticalSpeed);
	}
	VerticalSpeed = 0;
}
y = y + VerticalSpeed

//Animation
if(!place_meeting(x,y+1,Obj_InvisibleWall))
{
	sprite_index = Spr_jump;
	image_speed = 0
	if (VerticalSpeed > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (HorizontalSpeed == 0)
	{
		sprite_index = Spr_player;
		
	}
	else
	{ 
		sprite_index = Spr_walk
	}
}

if (HorizontalSpeed != 0) image_xscale = sign(HorizontalSpeed);