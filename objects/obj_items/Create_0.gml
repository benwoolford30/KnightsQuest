/// @description Initialise item array variables
// You can write your code in this editor
/*

Longsword
Mrs Pot's Pan
Sneaky Dagger
Flaming Battle Mace
Sturdy Shield
Plate Armour
Wishing Ring
Elevating boots
36x36
48x48
72x72
96x96
144x144
192x192
*/

var i = 0;
itemname[i]="Easy Flag";
itemroll[i]=1;
itemeffect[i]=0;
itemrenowncost[i]=2;
itemhp[i]=0;
itemspr[i]=spr_Glongsword;
itemdesc[i]="Easier minigames";

var i = 1;
itemname[i]="Hard Flag";
itemroll[i]=2;
itemeffect[i]=0;
itemrenowncost[i]=3;
itemhp[i]=0;
itemspr[i]=spr_Gpotpan;
itemdesc[i]="Harder Minigames";

var i = 2;
itemname[i]="Sneaky Dagger";
//in a duel deal 1 hp damage and then remove 
itemroll[i]=0;
itemeffect[i]=1;
itemrenowncost[i]=1;
itemhp[i]=0;
itemspr[i]=spr_Gsneakydagger;
itemdesc[i]="Deal 1 damage in a duel";

var i = 3;
itemname[i]="Flaming Battle Mace";
itemroll[i]=2;
itemeffect[i]=0;
itemrenowncost[i]=3;
itemhp[i]=0;
itemspr[i]=spr_Gflambatmace;
itemdesc[i]="+2 to rolls";

var i = 4;
itemname[i]="Sturdy Shield";
//When taking damage- 30% chance to negate it
itemroll[i]=0;
itemeffect[i]=2;
itemrenowncost[i]=2;
itemhp[i]=0;
itemspr[i]=spr_Gsturdyshield;
itemdesc[i]="30% chance to block damage";

var i = 5;
itemname[i]="Plate Armour";
itemroll[i]=0;
itemeffect[i]=0;
itemrenowncost[i]=2;
itemhp[i]=1;
itemspr[i]=spr_Gplatearmour;
itemdesc[i]="Gain 1 extra hitpoint";

var i = 6;
itemname[i]="Wishing Ring";
//Take a 6 on any roll- discard after
itemroll[i]=0;
itemeffect[i]=3;
itemrenowncost[i]=2;
itemhp[i]=0;
itemspr[i]=spr_Gwishring;
itemdesc[i]="Next roll is a 6";

i+=1;
itemname[i]="Elevatingboots";
//Take a 6 on any roll- discard after
itemroll[i]=0;
itemeffect[i]=4;
itemrenowncost[i]=2;
itemhp[i]=0;
itemspr[i]=spr_elevatingboots;
itemdesc[i]="+1 to movement";
/*
var i = 6;
itemname[i]=0;
itemroll[i]=0;
itemeffect[i]=0;
itemrenowncost[i]=0;
itemhp[i]=0;

