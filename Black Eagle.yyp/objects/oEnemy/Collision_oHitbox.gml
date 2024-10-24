if (!atackable) exit; 

hp --;
instance_create_depth(x, y, depth, oAttackEffect); 

atackable = false;
alarm[0] = 30;

var_dir = point_direction(oPlayer.x, oPlayer.y, x, y);
moveX = lengthdir_x(knockSpeed, _dir);
moveY = lengthdir_u(knockSpeed, _dir); 

if (hp <= 0) {
	sprite_index = sEnemyD; 
}
else {
	image_alpha = 0.6;
}