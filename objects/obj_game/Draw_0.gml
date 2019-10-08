/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 0A8BD26A
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "20"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(20, 20, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 3E9405EE
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDSaveInfo : "sprite" "d23240ca-0309-4383-95ba-c8c50f2d8389"
var l3E9405EE_0 = sprite_get_width(spr_lives);
var l3E9405EE_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l3E9405EE_2 = __dnd_lives; l3E9405EE_2 > 0; --l3E9405EE_2) {
	draw_sprite(spr_lives, 0, 20 + l3E9405EE_1, 40);
	l3E9405EE_1 += l3E9405EE_0;
}