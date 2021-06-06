/// @description Insert description here
// You can write your code in this editor

var width=(display_get_gui_width());
var height=(display_get_gui_height());
var p=challenger;

challenger=instance_create_depth(width/2-width/12,height/2,-10,obj_playercopy);
challenger.image_blend=p.image_blend;
challenger.sprite_index=p.sprite_index;
challenger.image_xscale*=(width/480);
challenger.image_yscale*=(height/480);
challenger.challenger=true;
actualchallenger=p;
opponents=0;
opponents[0]=0;
array_copy(opponents, 0, options, 0, array_length_1d(options));
var py=height/2;
for (var i=1;i<array_length_1d(opponents);i++)
{
	
		switch (i)
		{
			case 1:{
					if (array_length_1d(opponents)=2)
					{
						py=height/2;
					}
					if (array_length_1d(opponents)=3)
					{
						py=height/2-height/12;
					}
					if (array_length_1d(opponents)=4)
					{
						py=height/2-height/7;
					}				
			}break;
			case 2:{			
					if (array_length_1d(opponents)=3)
					{
						py=height/2+height/12;
					}
					if (array_length_1d(opponents)=4)
					{
						py=height/2;
					}				
			}break;
			case 3:{				
					py=height/2+height/7;
			}break;
		}
		options[i]=instance_create_depth(width/2+width/12,py,-10,obj_playercopy);
		options[i].image_blend=opponents[i].image_blend;
		options[i].sprite_index=opponents[i].sprite_index;
		options[i].image_xscale*=(width/480);
		options[i].image_yscale*=(height/480);
		options[i].image_xscale*=-1;	
}
switch (array_length_1d(opponents))
{
	case 2:{
		choice=opponents[1];
		choicerep=options[1];
	}break;
	case 3:{
		choice=opponents[1];
		choicerep=options[1];
		challenger.y=height/2-height/16;
		arrow1=instance_create_depth(challenger.x,height/2+height/16,-1,obj_arrow);
		arrow1.image_angle=180;
		arrow1.image_xscale*=(width/480)*0.75;
		arrow1.image_yscale*=(height/480)*0.75;
		arrow1.link=id;
		arrow1.event=1;
	}break;
	case 4:{
		choice=opponents[2];
		choicerep=options[2];
		challenger.y=height/2;
		
		arrow1=instance_create_depth(challenger.x,height/2-height/8,-1,obj_arrow);
		arrow1.image_angle=0;
		arrow1.link=id;
		arrow1.event=1;
		arrow1.image_xscale*=(width/480)*0.75;
		arrow1.image_yscale*=(height/480)*0.75;
		arrow2=instance_create_depth(challenger.x,height/2+height/8,-1,obj_arrow);
		arrow2.image_angle=180;
		arrow2.link=id;
		arrow2.event=1;
		arrow2.image_xscale*=(width/480)*0.75;
		arrow2.image_yscale*=(height/480)*0.75;
	}break;
}
nah=instance_create_depth(width/2-width/8-width/20,height/2,-1,obj_nah);
nah.event=1;
ye=instance_create_depth(width/2+width/8+width/20,height/2,-1,obj_ye);
ye.event=1;
nah.link=id;
ye.link=id;
