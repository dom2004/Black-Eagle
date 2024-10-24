hsp = 0;
vsp = 0;

//	Start of the attack
if sprite_index != sPlayerS
{
	sprite_index = sPlayerS;
	image_speed = -1;
	ds_list_clear(hitByAttack);	
}

// Use attack hitbox and check for hits
mask_index = sHitbox;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,oEnemy,hitByAttackNow,false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		// if this instance has not yet been hit by this attack
		var hitID = hitByAttackNow[| i]; 
		if (ds_list_find_index(hitByAttack,hitID) == -1)
		{
			ds_list_add(hitByAttack,hitID);
			with (hitID)
			{
				EnemyHit(2);
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sPlayer;

if (animation_end())
{
	sprite_index = sPlayer;
	state = PLAYERSTATE.FREE;
} 