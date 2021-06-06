/// @description Initialise event array
// You can write your code in this editor
draw=false;
outcome=false;
success=true;
width=(display_get_gui_width());
height=(display_get_gui_height());
c1=(width/2)-((width/16)*1);
c2=(height/2)+((height/16)*1);
c3=(width/2)+((width/16)*1);
c4=(height/2)+((height/16)*3);
eventNO=0;
eventName[eventNO]="";
eventroll[eventNO]=0;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=0;
eventeffect[eventNO]=0;


eventNO=0;
eventName[eventNO]="Mrs Pot pie";
eventstateEvent[eventNO]="";
eventstateSuccess[eventNO]="Restore 1 Hp";
eventstatefailure[eventNO]="";
eventroll[eventNO]=0;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=1;
eventfailhp[eventNO]=0;
eventeffect[eventNO]=0;

eventNO=1;
eventName[eventNO]="Raft Across a River";
eventstateEvent[eventNO]="Success rate- Easy";
eventstateSuccess[eventNO]=" ";
eventstatefailure[eventNO]="On Failure- lose 1 hp";
eventroll[eventNO]=3;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=1;
eventeffect[eventNO]=0;

eventNO=2;
eventName[eventNO]="Wandering Monster";
eventstateEvent[eventNO]="Success rate- Medium";
eventstateSuccess[eventNO]="On Success- Gain 1 renown";
eventstatefailure[eventNO]="On Failure- lose 1 hp";
eventroll[eventNO]=4;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=1;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=1;
eventeffect[eventNO]=0;

eventNO=3;
eventName[eventNO]="Woke the Sleeping bear";
eventstateEvent[eventNO]="Success rate- Easy";
eventstateSuccess[eventNO]="";
eventstatefailure[eventNO]="On Failure- lose 1 hp";
eventroll[eventNO]=3;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=1;
eventeffect[eventNO]=0;

eventNO=4;
eventName[eventNO]="Woke the sleeping bears";
eventstateEvent[eventNO]="Success rate- Medium";
eventstateSuccess[eventNO]=" ";
eventstatefailure[eventNO]="On Failure- lose 1 hp";
eventroll[eventNO]=4;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=1;
eventeffect[eventNO]=0;

eventNO=5;
eventName[eventNO]="Bandits!";
eventstateEvent[eventNO]="Success rate- Medium";
eventstateSuccess[eventNO]="On Success- gain an item";
eventstatefailure[eventNO]="On Failure- lose 1 hp";
eventroll[eventNO]=4;
eventgainitem[eventNO]=1;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=1;
eventeffect[eventNO]=0;

eventNO=6;
eventName[eventNO]="Banditos";
eventstateEvent[eventNO]="Success rate- Hard";
eventstateSuccess[eventNO]="On Success- gain an item";
eventstatefailure[eventNO]="On Failure- lose 1 hp";
eventroll[eventNO]=5;
eventgainitem[eventNO]=1;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=1;
eventeffect[eventNO]=0;
eventNO=7;
eventName[eventNO]="The Dread Bunny of the Downs";
eventstateEvent[eventNO]="Success rate- Very Hard";
eventstateSuccess[eventNO]=" ";
eventstatefailure[eventNO]="On Failure- lose 2 hp";
eventroll[eventNO]=6;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=2;
eventeffect[eventNO]=0;

eventNO=8;
eventName[eventNO]="Lost Mrs Pots";
eventstateEvent[eventNO]="SideQuest! Bring Mrs Potts to town!";
eventstateSuccess[eventNO]="On Success- gain a renown";
eventstatefailure[eventNO]="";
//Upon reaching town gain 1 renown
eventroll[eventNO]=0;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=0;
eventeffect[eventNO]=1;

eventNO=9;
eventName[eventNO]="Village Idiot";
eventstateEvent[eventNO]="You fail your next event";
eventstateSuccess[eventNO]=" ";
eventstatefailure[eventNO]=" ";
//Fail your next event
eventroll[eventNO]=0;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=0;
eventeffect[eventNO]=2;
/*
eventNO=0;
eventName[eventNO]="";
eventroll[eventNO]=0;
eventgainitem[eventNO]=0;
eventgainrenown[eventNO]=0;
eventgainhp[eventNO]=0;
eventfailhp[eventNO]=0;
eventeffect[eventNO]=0;

