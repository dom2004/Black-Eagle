hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
hascontrol = true;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();


enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
	
	
	
}