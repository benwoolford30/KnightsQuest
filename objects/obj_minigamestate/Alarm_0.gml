/// @description Insert description here
// You can write your code in this editor
switch (minigame)
{
	case 0:{ //banditking
		background=spr_cavebkg;
		var banditking=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_banditking);
		banditking.link=id;
	}break;
	case 1:{ //Dragon
		background=spr_dragonbkg;
		var slaydragon=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()-display_get_gui_height()/6,depth-2,obj_braveknight);
		slaydragon.link=id;
	}break;
	case 2:{ //Princess from tower
		background=spr_princessbkg;
		var shopping=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_bag);
		shopping.link=id;
	}break;
	case 3:{ //Sorcerer
		background=spr_sorcererbkg;
		var Sorcerer=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_sorcerergame);
		Sorcerer.link=id;
	}break;
	case 4:{ //Wolves
		background=spr_fieldbkg;
		var wolves=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_damsel);
		wolves.link=id;
	}break;
	case 5:{ //Bandits
		background=spr_townbkg;
		var goblin=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_towndec);
		goblin.link=id;
		goblin.visible=false;
		with obj_goblinattack
		{
			sprite_index=spr_banditkingfake;
		}
	}break;
	case 6:{ //Shrek
		background=spr_forestogrebkg;
		var forestogre=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_forestogre);
		forestogre.link=id;
	}break;
	case 7:{ //Cave troll
		background=spr_cavebkg;
		var caveogre=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_caveogre);
		caveogre.link=id;
	}break;
	case 8:{ //gobvill
		background=spr_fieldbkg;
		var goblin=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_towndec);
		goblin.link=id;
	}break;
	case 9:{ //Cottage
		background=spr_fieldbkg;
		var cottagefire=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_startcottage);
		cottagefire.link=id;
	}break;
	case 10:{ //Cat in a tree
		background=spr_tree;
		instance_create_depth(display_get_gui_width()/2,display_get_gui_height()-(display_get_gui_height()/4),depth-2,obj_catchhands);
		var sock=instance_create_depth(display_get_gui_width()/2,(display_get_gui_height()/8),depth-2,obj_royalsocks);
		sock.link=id;
		sock.sprite_index=spr_cats;
		sock.image_speed=0;
		var mud=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()-(display_get_gui_height()/8),depth-2,obj_muddy);
		mud.visible=false;
	}break;
	case 11:{ //pot shopping
		background=spr_hallbkg;
		var shopping=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_bag);
		shopping.link=id;
	}break;
	case 12:{ //socks
		background=spr_washingline;
		instance_create_depth(display_get_gui_width()/2,display_get_gui_height()-(display_get_gui_height()/4),depth-2,obj_catchhands);
		var sock=instance_create_depth(display_get_gui_width()/2,(display_get_gui_height()/8),depth-2,obj_royalsocks);
		sock.link=id;
		instance_create_depth(display_get_gui_width()/2,display_get_gui_height()-(display_get_gui_height()/8),depth-2,obj_mud);
	}break;
	case 13:{ //sleeping princess
		background=spr_princessbkg;
		var sleepprincess=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_sleepingprincess);
		sleepprincess.link=id;
	}break;
	case 14:{ //arrogant goblin
		background=spr_fieldbkg;
		var goblin=instance_create_depth(display_get_gui_width()/2,display_get_gui_height()/2,depth-2,obj_goblin);
		goblin.link=id;
	}break;
	
}