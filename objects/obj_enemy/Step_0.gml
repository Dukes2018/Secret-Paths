/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3A70F129
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "a5ae7cb3-7652-4b4c-9166-053428845d2b"
var l3A70F129_0 = false;
l3A70F129_0 = instance_exists(obj_player);
if(l3A70F129_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 59AA29B9
	/// @DnDParent : 3A70F129
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0015C701
	/// @DnDParent : 3A70F129
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 1C65A77A
image_xscale = 1;
image_yscale = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AE23EE9
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5F410786
	/// @DnDParent : 6AE23EE9
	instance_destroy();
}

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 59BC13BC
/// @DnDArgument : "path" "pth_enemy"
/// @DnDArgument : "speed" "1.5"
/// @DnDArgument : "atend" "path_action_continue"
/// @DnDSaveInfo : "path" "45553f20-9e95-4ab7-92d5-32e1521024d5"
path_start(pth_enemy, 1.5, path_action_continue, false);