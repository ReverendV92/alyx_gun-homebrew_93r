
$modelname weapons/w_alyx_gun

$model "93 Raffica" 93r-ref

$surfaceprop weapon

$contents solid

$illumposition 0.024 -0.286 -3.769

$cdmaterials models/weapons/93r

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 10.79 -1.67 -2.87 rotate 0 -9.62 -84.76
$attachment "1" "ValveBiped.GunControl" 0.00 1.50 2.00 rotate 0 90 0

$bbox -5.679 -2.347 -8.145 5.777 2.901 0.625

$sequence pistol_idle {

	w_alyx_gun_anims/pistol_idle
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop

}

$sequence range_attack1 {

	w_alyx_gun_anims/attack1
	activity ACT_RANGE_ATTACK1 1
	{ event 5003 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence range_attack_pistol {

	w_alyx_gun_anims/attack1
	activity ACT_RANGE_ATTACK_PISTOL 1
	{ event 5003 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence attack1 {

	w_alyx_gun_anims/attack1
	activity ACT_GESTURE_RANGE_ATTACK_PISTOL 1
	{ event 5003 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 30

}

$sequence weapon_pistol2smg {

	w_alyx_gun_anims/weapon_pistol2smg
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 45

}

$sequence weapon_smg2rifle {

	w_alyx_gun_anims/weapon_smg2rifle
	fadein 0.2
	fadeout 0.2
	fps 30
	walkframe 40

}

$sequence weapon_pistol {

	w_alyx_gun_anims/weapon_pistol
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30

}

$sequence weapon_smg {

	w_alyx_gun_anims/weapon_smg
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30

}

$sequence weapon_rifle {

	w_alyx_gun_anims/weapon_rifle
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30

}

$sequence weapon_pistol2rifle {

	w_alyx_gun_anims/weapon_pistol
	fadein 0.2
	fadeout 0.2
	blendlayer "weapon_rifle" 0 15 15 15 spline
	fps 30

}

$sequence weapon_smg2pistol {

	w_alyx_gun_anims/weapon_smg
	fadein 0.2
	fadeout 0.2
	blendlayer "weapon_pistol" 0 12 12 12 spline
	fps 30

}

$sequence weapon_rifle2pistol {

	w_alyx_gun_anims/weapon_rifle
	fadein 0.2
	fadeout 0.2
	blendlayer "weapon_pistol" 0 15 15 15 spline
	fps 30

}

$sequence weapon_rifle2smg {

	w_alyx_gun_anims/weapon_rifle
	fadein 0.2
	fadeout 0.2
	blendlayer "weapon_smg" 0 12 12 12 spline
	fps 30

}

$collisionmodel 93r-phy
{

	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
