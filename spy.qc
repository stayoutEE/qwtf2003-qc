/*
 *  QW-TF2003-qc
 *  Copyright (C) 2003-2004  [sd] angel
 *
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */


void (entity Item, entity AP, float method) tfgoalitem_RemoveFromPlayer;
void (entity spy) TeamFortress_SpyCalcName;
void () TeamFortress_SpyUndercoverThink;
void () GasGrenadeMakeGas;
void () T_TranqDartTouch;
#ifdef NEWSPY
void (entity pl) SetGasSkin ;
#endif
void () spy_diea1 = [50, spy_diea2]
{
};

void () spy_diea2 = [51, spy_diea3]
{
};

void () spy_diea3 = [52, spy_diea4]
{
};

void () spy_diea4 = [53, spy_diea5]
{
};

void () spy_diea5 = [54, spy_diea6]
{
};

void () spy_diea6 = [55, spy_diea7]
{
};

void () spy_diea7 = [56, spy_diea8]
{
};

void () spy_diea8 = [57, spy_diea9]
{
};

void () spy_diea9 = [58, spy_diea10]
{
};

void () spy_diea10 = [59, spy_diea11]
{
};

void () spy_diea11 = [60, spy_diea11]
{
};

void () spy_dieb1 = [61, spy_dieb2]
{
};

void () spy_dieb2 = [62, spy_dieb3]
{
};

void () spy_dieb3 = [63, spy_dieb4]
{
};

void () spy_dieb4 = [64, spy_dieb5]
{
};

void () spy_dieb5 = [65, spy_dieb6]
{
};

void () spy_dieb6 = [66, spy_dieb7]
{
};

void () spy_dieb7 = [67, spy_dieb8]
{
};

void () spy_dieb8 = [68, spy_dieb9]
{
};

void () spy_dieb9 = [69, spy_dieb9]
{
};

void () spy_diec1 = [70, spy_diec2]
{
};

void () spy_diec2 = [71, spy_diec3]
{
};

void () spy_diec3 = [72, spy_diec4]
{
};

void () spy_diec4 = [73, spy_diec5]
{
};

void () spy_diec5 = [74, spy_diec6]
{
};

void () spy_diec6 = [75, spy_diec7]
{
};

void () spy_diec7 = [76, spy_diec8]
{
};

void () spy_diec8 = [77, spy_diec9]
{
};

void () spy_diec9 = [78, spy_diec10]
{
};

void () spy_diec10 = [79, spy_diec11]
{
};

void () spy_diec11 = [80, spy_diec12]
{
};

void () spy_diec12 = [81, spy_diec13]
{
};

void () spy_diec13 = [82, spy_diec14]
{
};

void () spy_diec14 = [83, spy_diec15]
{
};

void () spy_diec15 = [84, spy_diec15]
{
};

void () spy_died1 = [85, spy_died2]
{
};

void () spy_died2 = [86, spy_died3]
{
};

void () spy_died3 = [87, spy_died4]
{
};

void () spy_died4 = [88, spy_died5]
{
};

void () spy_died5 = [89, spy_died6]
{
};

void () spy_died6 = [90, spy_died7]
{
};

void () spy_died7 = [91, spy_died8]
{
};

void () spy_died8 = [92, spy_died9]
{
};

void () spy_died9 = [93, spy_died9]
{
};

void () spy_diee1 = [94, spy_diee2]
{
};

void () spy_diee2 = [95, spy_diee3]
{
};

void () spy_diee3 = [96, spy_diee4]
{
};

void () spy_diee4 = [97, spy_diee5]
{
};

void () spy_diee5 = [98, spy_diee6]
{
};

void () spy_diee6 = [99, spy_diee7]
{
};

void () spy_diee7 = [100, spy_diee8]
{
};

void () spy_diee8 = [101, spy_diee9]
{
};

void () spy_diee9 = [102, spy_diee9]
{
};

void () spy_die_ax1 = [41, spy_die_ax2]
{
};

void () spy_die_ax2 = [42, spy_die_ax3]
{
};

void () spy_die_ax3 = [43, spy_die_ax4]
{
};

void () spy_die_ax4 = [44, spy_die_ax5]
{
};

void () spy_die_ax5 = [45, spy_die_ax6]
{
};

void () spy_die_ax6 = [46, spy_die_ax7]
{
};

void () spy_die_ax7 = [47, spy_die_ax8]
{
};

void () spy_die_ax8 = [48, spy_die_ax9]
{
};

void () spy_die_ax9 = [49, spy_die_ax9]
{
};

void () spy_upb1 = [69, spy_upb2]
{
};

void () spy_upb2 = [68, spy_upb3]
{
};

void () spy_upb3 = [67, spy_upb4]
{
};

void () spy_upb4 = [66, spy_upb5]
{
};

void () spy_upb5 = [65, spy_upb6]
{
};

void () spy_upb6 = [64, spy_upb7]
{
};

void () spy_upb7 = [63, spy_upb8]
{
};

void () spy_upb8 = [62, spy_upb9]
{
};

void () spy_upb9 = [61, spy_upb9]
{
 player_stand1();
};

void () spy_upc1 = [84, spy_upc2]
{
};

void () spy_upc2 = [83, spy_upc3]
{
};

void () spy_upc3 = [82, spy_upc4]
{
};

void () spy_upc4 = [81, spy_upc5]
{
};

void () spy_upc5 = [80, spy_upc6]
{
};

void () spy_upc6 = [79, spy_upc7]
{
};

void () spy_upc7 = [78, spy_upc8]
{
};

void () spy_upc8 = [77, spy_upc9]
{
};

void () spy_upc9 = [76, spy_upc10]
{
};

void () spy_upc10 = [75, spy_upc11]
{
};

void () spy_upc11 = [74, spy_upc12]
{
};

void () spy_upc12 = [73, spy_upc13]
{
};

void () spy_upc13 = [72, spy_upc14]
{
};

void () spy_upc14 = [71, spy_upc15]
{
};

void () spy_upc15 = [70, spy_upc15]
{
 player_stand1();
};

void () spy_upd1 = [93, spy_upd2]
{
};

void () spy_upd2 = [92, spy_upd3]
{
};

void () spy_upd3 = [91, spy_upd4]
{
};

void () spy_upd4 = [90, spy_upd5]
{
};

void () spy_upd5 = [89, spy_upd6]
{
};

void () spy_upd6 = [88, spy_upd7]
{
};

void () spy_upd7 = [87, spy_upd8]
{
};

void () spy_upd8 = [86, spy_upd9]
{
};

void () spy_upd9 = [85, spy_upd9]
{
 player_stand1();
};

void () spy_upe1 = [94, spy_upe9]
{
};


void () spy_upe9;

void () spy_upe2 = [95, spy_upe8]
{
};


void () spy_upe8;

void () spy_upe3 = [96, spy_upe7]
{
};


void () spy_upe7;

void () spy_upe4 = [97, spy_upe6]
{
};


void () spy_upe6;

void () spy_upe5 = [98, spy_upe5]
{
};

void () spy_upe6 = [99, spy_upe4]
{
};

void () spy_upe7 = [100, spy_upe3]
{
};

void () spy_upe8 = [101, spy_upe2]
{
};

void () spy_upe9 = [102, spy_upe1]
{
 player_stand1();
};

void () spy_upaxe1 = [49, spy_upaxe2]
{
};

void () spy_upaxe2 = [48, spy_upaxe3]
{
};

void () spy_upaxe3 = [47, spy_upaxe4]
{
};

void () spy_upaxe4 = [46, spy_upaxe5]
{
};

void () spy_upaxe5 = [45, spy_upaxe6]
{
};

void () spy_upaxe6 = [44, spy_upaxe7]
{
};

void () spy_upaxe7 = [43, spy_upaxe8]
{
};

void () spy_upaxe8 = [42, spy_upaxe9]
{
};

void () spy_upaxe9 = [41, spy_upaxe9]
{
 player_stand1();
};

void (float issilent) TeamFortress_SpyFeignDeath =
{
 local float i;
 local float j;
 local entity at_spot;
 local entity te;

 self.StatusRefreshTime = time + 0.1;
 if (self.is_feigning) {
  at_spot = findradius(self.origin, 64);
  i = 1;
  j = 0;
  while (at_spot != world) {
   if (at_spot.mdl == "progs/detpack.mdl") 
    j = 1;
   else {
    if (birthday == 1 && at_spot.mdl == "progs/detpack2.mdl") 
     j = 1;
    else {
     if (at_spot.mdl == "progs/turrbase.mdl") 
      j = 1;
     else {
      if (at_spot.mdl == "progs/turrgun.mdl") 
       j = 1;
      else {
       if (at_spot.mdl == "progs/disp.mdl") 
        j = 1;
       else {
        if (at_spot.classname == "player" && !at_spot.deadflag && self != at_spot) 
         j = 2;
       }
      }
     }
    }
   }
   if (j > 0) 
    i = 0;
   at_spot = at_spot.chain;
  }
  if (i == 1) {
   i = 1 + floor(random() * 5);
   self.velocity = '0 0 0';
   setsize(self, '-16 -16 -24', '16 16 32');
   self.view_ofs = '0 0 22';
   self.movetype = 3;
   self.is_feigning = 0;
   self.current_weapon = self.weapon;
   W_SetCurrentAmmo();
   self.tfstate = self.tfstate - (self.tfstate & #TFSTATE_CANT_MOVE);
   TeamFortress_SetSpeed(self);
   if (self.weapon <= 16) {
    spy_upaxe1();
    return;
   }
   if (i == 1) 
    spy_upb1();
   else {
    if (i == 2) 
     spy_upc1();
    else {
     if (i == 3) 
      spy_upd1();
     else 
      spy_upe1();
    }
   }
  }
  else {
   if (j == 1) 
    sprint(self, 2, "You can't get up with something\non top of you.\n");
   else 
    sprint(self, 2, "You can't get up while someone\nis standing on you.\n");
  }
 }
 else {
  if (self.hook_out) {
   sprint(self, 2, "You can't feign with the hook out.\n");
   return;
  }
/*          if (self.is_unabletospy == 1) {
           sprint(self, 2, "You can't go undercover right now.\n");
           return;
          }*/

//  if (!(self.flags & 512) && !self.waterlevel) {
//   sprint(self, 2, "You can't feign in the air.\n");
//   return;
//  }
  at_spot = findradius(self.origin, 64);
  while (at_spot != world) {
   if (at_spot.classname == "player" && self != at_spot && at_spot.is_feigning == 1) {
    sprint(self, 2, "You can't feign on top of another spy!\n");
    return;
   }
   at_spot = at_spot.chain;
  }
//  self.immune_to_check = time + 5;
  self.tfstate = self.tfstate | #TFSTATE_CANT_MOVE;
  TeamFortress_SetSpeed(self);
  self.is_feigning = 1;
  Attack_Finished(0.8);
  self.invisible_finished = 0;
  self.modelindex = modelindex_player;
  self.weapon = self.current_weapon;
  self.current_weapon = 0;
  self.weaponmodel = "";
  self.weaponframe = 0;
  setsize(self, '-16 -16 -24', '16 16 -16');
  self.view_ofs = '0 0 4';
  self.movetype = 6;
  if (!issilent) 
       DeathSound();
  self.angles_x = 0;
  self.angles_z = 0;
  if (self.weapon <= 16) {
   spy_die_ax1();
   return;
  }
  te = find(world, classname, "item_tfgoal");
  while (te) {
   if (te.owner == self) {
    if (!(te.goal_activation & #TFGI_KEEP) || self.has_disconnected == 1) 
     tfgoalitem_RemoveFromPlayer(te, self, 0);
    if (CTF_Map == 1 && te.goal_no == 1) {
     bprint(2, self.netname);
     bprint(2, " ���� the ���� flag!\n");
    }
    else {
     if (CTF_Map == 1 && te.goal_no == 2) {
      bprint(2, self.netname);
      bprint(2, " ���� the ��� flag!\n");
     }
    }
   }
   te = find(te, classname, "item_tfgoal");
  }
  i = 1 + floor(random() * 6);
  if (i == 1) 
   spy_diea1();
  else {
   if (i == 2) 
    spy_dieb1();
   else {
    if (i == 3) 
     spy_diec1();
    else {
     if (i == 4) 
      spy_died1();
     else 
      spy_diee1();
    }
   }
  }
 }
};

void () TeamFortress_SpyGoUndercover =
{
 local entity te;

 
 if (invis_only == 1) {

  if (self.effects & (8 | 4)) {
  sprint(self, 1, "You cannot disguise while glowing.\n");
  return;
         }
  if (self.is_unabletospy == 1) {
  sprint(self, 2, "You can't go undercover right now.\n");
  return;
  }
  if (self.is_undercover == 1) {
   self.is_undercover = 0;
   self.modelindex = modelindex_player;
   self.items = self.items - (self.items & #IT_INVISIBILITY);
  }
  else {
   if (self.is_undercover == 2) {
    sprint(self, 2, "You stop going undercover.\n");
    self.is_undercover = 0;
   }
   else {
    if (self.ammo_cells > 1) {
     sprint(self, 2, "Going undercover...\n");
     self.is_undercover = 2;
     te = spawn();
     te.classname = "timer";
     te.owner = self;
     te.think = TeamFortress_SpyUndercoverThink;
     te.nextthink = time + 4;
    }
   }
  }
  self.StatusRefreshTime = time + 0.1;
 }
 else {
  if (self.is_undercover != 2) {
   self.current_menu = 12;
   self.menu_count = 25;
  }
  else {
   sprint(self, 2, "You stop going undercover.\n");
   self.is_undercover = 0;
  }
 }
};

void (entity spy) TeamFortress_SpyCalcName =
{
 local entity te;

 spy.undercover_name = string_null;
 if (spy.undercover_team) {
  te = find(world, classname, "player");
  while (te) {
   if (te.team_no == spy.undercover_team && te.skin == spy.undercover_skin) {
    spy.undercover_name = te.netname;
    te = world;
   }
   else 
    te = find(te, classname, "player");
  }
  if (spy.undercover_name == string_null) {
   te = find(world, classname, "player");
   while (te) {
    if (te.team_no == spy.undercover_team) {
     spy.undercover_name = te.netname;
     te = world;
    }
    else 
     te = find(te, classname, "player");
   }
  }
 }
};

void () TeamFortress_SpyUndercoverThink =
{
 local float tc;
 local string st;

 if (self.owner.playerclass != 8) 
  return;
 if (self.owner.is_undercover == 2) {
  if (invis_only == 1) {
   self.owner.items = self.owner.items | #IT_INVISIBILITY;
   self.owner.frame = 0;
   self.owner.modelindex = modelindex_eyes;
   self.owner.is_undercover = 1;
  }
  else {
   self.owner.immune_to_check = time + cheat_pause;//10;
   if (self.skin) {
    sprint(self.owner, 2, "Skin set to ");
    TeamFortress_PrintClassName(self.owner, self.skin, 0);
    self.owner.undercover_skin = self.skin;
    TeamFortress_SetSkin(self.owner);
   }
   if (self.team) {
    sprint(self.owner, 2, "Colors set to Team ");
    st = ftos(self.team);
    sprint(self.owner, 2, st);
    sprint(self.owner, 2, "\n");
    self.owner.undercover_team = self.team;
    stuffcmd(self.owner, "color ");

    tc = TeamFortress_TeamGetTopColor(self.team);
    st = ftos(tc);
    stuffcmd(self.owner, st);
    stuffcmd(self.owner, " ");

    tc = TeamFortress_TeamGetColor(self.team) - 1;
    st = ftos(tc);
    stuffcmd(self.owner, st);

                  

    stuffcmd(self.owner, "\n");
    TeamFortress_SetSkin(self.owner);
   }
   TeamFortress_SpyCalcName(self.owner);
   if (!self.owner.StatusBarSize) 
    CenterPrint(self.owner, "You are now disguised.\n");
   self.owner.is_undercover = 1;
  }
 }
 self.owner.StatusRefreshTime = time + 0.1;
 dremove(self);
};

void (float class) TeamFortress_SpyChangeSkin =
{
 local entity te;

 if (class == 8 ) {

  if(self.undercover_skin == 0)
  {
   sprint(self, 2, "Skin reset.\n");
   return;
         }
  sprint(self, 2, "Skin reset.");
  self.undercover_skin = 0;
  TeamFortress_SetSkin(self);
  if (!self.undercover_team) 
   self.is_undercover = 0;
  return;
 }
 sprint(self, 2, "Going undercover...\n");
 self.is_undercover = 2;
 te = spawn();
 te.classname = "timer";
 te.owner = self;
 te.think = TeamFortress_SpyUndercoverThink;
 te.nextthink = time + 4;
 te.skin = class;
 TeamFortress_SetSkin(self);
};

void (float teamno) TeamFortress_SpyChangeColor =
{
 local entity te;
 local string st;
 local float tc;

 if (teamno == self.team_no ) {
  
  if(self.undercover_team == 0)
  {
   sprint(self, 2, "Colors reset.\n");
   return;
  }
  sprint(self, 2, "Colors reset.\n");
  self.immune_to_check = time + cheat_pause;//10;
  self.undercover_team = 0;
  stuffcmd(self, "color ");

  tc = TeamFortress_TeamGetTopColor(self.team_no);
  st = ftos(tc);
  stuffcmd(self, st);
  stuffcmd(self, " ");

  tc = TeamFortress_TeamGetColor(self.team_no) - 1;
  st = ftos(tc);
  stuffcmd(self, st);

  stuffcmd(self, "\n");
  if (!self.undercover_skin) 
   self.is_undercover = 0;
  TeamFortress_SetSkin(self);
  return;
 }
 sprint(self, 2, "Going undercover...\n");
 self.is_undercover = 2;
 te = spawn();
 te.classname = "timer";
 te.owner = self;
 te.think = TeamFortress_SpyUndercoverThink;
 te.nextthink = time + 4;
 te.team = teamno;
};

void () GasGrenadeTouch =
{
 sound(self, 1, "weapons/bounce.wav", 1, 1);
 if (self.velocity == '0 0 0') 
  self.avelocity = '0 0 0';
};

void () GasGrenadeExplode =
{
 local vector tmpv;
 local entity te;
 local float pos;

 pos = pointcontents(self.origin);
 if (pos == -1) {
  te = spawn();
  te.think = GasGrenadeMakeGas;
  te.nextthink = time + 0.1;
  te.heat = 0;
  te.origin = self.origin;
  te.owner = self.owner;
  te.team_no = self.owner.team_no;
  te.weapon = 0;
 }
 else {
  pos = 0;
  while (pos < 10) {
   newmis = spawn();
   setmodel(newmis, "progs/s_bubble.spr");
   setorigin(newmis, self.origin);
   newmis.movetype = 8;
   newmis.solid = 0;
   newmis.velocity = '0 0 15';
   newmis.velocity_z = 10 + random() * 20;
   newmis.nextthink = time + 0.5;
   newmis.think = bubble_bob;
   newmis.classname = "bubble";
   newmis.frame = 0;
   newmis.cnt = 0;
   setsize(newmis, '-8 -8 -8', '8 8 8');
   pos = pos + 1;
  }
 }
 dremove(self);
};

void () GasGrenadeMakeGas =
{
 local entity te;
 local entity timer;

 self.nextthink = time + 0.75;
 te = findradius(self.origin, 200);
 while (te != world) {
  if (te.classname == "player" && !te.deadflag && te.has_disconnected != 1) {
   deathmsg = 24;
   TF_T_Damage(te, world, self.owner, 10, 1 | 2, 0);
   if (te.tfstate & 16384) {
    timer = find(world, classname, "timer");
    while ((timer.owner != te || timer.think != HallucinationTimer) && timer != world) 
     timer = find(timer, classname, "timer");
    if (timer != world) {
     timer.health = timer.health + 25;
//     if (old_grens == 1) {
      if(!(new_gas & #GAS_MASK_NEWGREN_TIMES)){
      if (timer.health < 100) 
       timer.health = 100;
      timer.nextthink = time + 0.5;
     }
     else {
      if (timer.health < 150) 
       timer.health = 150;
      timer.nextthink = time + 0.3;
     }
#ifdef NEWSPY
    if(!(new_gas & #GAS_MASK_ALLSPYS ) && (random() < #SETGAS_IN_GAS_TIME))
     SetGasSkin(te);
#endif
    }
   }
   else {
    if (new_gas & #GAS_MASK_PALETTE) {
     stuffcmd(te, "v_cshift 50 25 50 -50\n");
     sprint(te, 2, "Far out man!\n");
    }
    else 
     sprint(te, 2, "Run for cover! They're everywhere!\n");
    te.tfstate = te.tfstate | 16384;
    timer = spawn();
    if(new_gas & #GAS_MASK_NEWGREN_TIMES)
     timer.nextthink = time + 0.3;
    else 
     timer.nextthink = time + 0.5;

    timer.think = HallucinationTimer;
#ifdef NEWSPY
     SetGasSkin(te);
#endif
    timer.classname = "timer";
    timer.owner = te;

    if(new_gas & #GAS_MASK_NEWGREN_TIMES)
    {
      timer.health = 150;
    }else
    {
      timer.health = 100;
    }
    timer.team_no = self.team_no;
   }
  }
  te = te.chain;
 }
 self.heat = self.heat + 1;
 if (self.heat == 1) {
  WriteByte(4, 23);
  WriteByte(4, 4);
  WriteCoord(4, self.origin_x);
  WriteCoord(4, self.origin_y);
  WriteCoord(4, self.origin_z);
  multicast(self.origin, 2);
  return;
 }
 if (self.heat <= 20) {
  self.weapon = self.weapon + 1;
  if (self.weapon == 1) {
   WriteByte(4, 23);
   WriteByte(4, 10);
   WriteCoord(4, self.origin_x);
   WriteCoord(4, self.origin_y);
   WriteCoord(4, self.origin_z - 24);
   multicast(self.origin, 2);
  }
  else {
   if (self.weapon == 2) 
    self.weapon = 0;
  }
  return;
 }
 dremove(self);
};

#ifdef NEWSPY
void (entity pl) ResetSkins =
{
  local entity te;
  local float t;
  local string st;

  if(pl.has_disconnected)return;

  if(!(new_gas & (#GAS_MASK_COLOR | #GAS_MASK_SKIN | #GAS_MASK_ALLSPYS)))
   return;

  te=find(world,classname,"player");
  while(te != world){
   if(!te.has_disconnected /*te!=pl*/){
    t=  &te / %1;
    t = (t - firstplayer ) /  firstplayer ;

     msg_entity = pl;
     if(new_gas & (#GAS_MASK_COLOR|#GAS_MASK_ALLSPYS))
     {
      st=infokey(te,"topcolor");

      WriteByte(#MSG_ONE,#SVC_SETINFO );
      WriteByte(#MSG_ONE,t );
      WriteString(#MSG_ONE,"topcolor" );
      WriteString(#MSG_ONE, st);

      st=infokey(te,"bottomcolor");
      WriteByte(#MSG_ONE,#SVC_SETINFO );
      WriteByte(#MSG_ONE,t );
      WriteString(#MSG_ONE,"bottomcolor" );
      WriteString(#MSG_ONE, st);
     }

     if(new_gas & (#GAS_MASK_SKIN|#GAS_MASK_ALLSPYS))
     {
       st=infokey(te,"skin");
       WriteByte(#MSG_ONE,#SVC_SETINFO );
       WriteByte(#MSG_ONE,t );
       WriteString(#MSG_ONE,"skin" );
       WriteString(#MSG_ONE,st );
     }
   }
   te=find(te,classname,"player");
  }
}

string (float tn,float pc) TF_GetSkin =
{
 local string st;

 if (tn == 4) {
  if (pc == 1) {
   st = infokey(world, "sk_t4_scout");
   if (st != string_null) 
    return st;
   return "tf_scout";
  }
  else {
   if (pc == 2) {
    st = infokey(world, "sk_t4_sniper");
    if (st != string_null) 
     return st;
    return "tf_snipe";
   }
   else {
    if (pc == 3) {
     st = infokey(world, "sk_t4_soldier");
     if (st != string_null) 
      return st;
     return "tf_sold";
    }
    else {
     if (pc == 4) {
      st = infokey(world, "sk_t4_demoman");
      if (st != string_null) 
       return st;
      return "tf_demo";
     }
     else {
      if (pc == 5) {
       st = infokey(world, "sk_t4_medic");
       if (st != string_null) 
        return st;
       return "tf_medic";
      }
      else {
       if (pc == 6) {
        st = infokey(world, "sk_t4_hwguy");
        if (st != string_null) 
         return st;
        return "tf_hwguy";
       }
       else {
        if (pc == 7) {
         st = infokey(world, "sk_t4_pyro");
         if (st != string_null) 
          return st;
         return "tf_pyro";
        }
        else {
         if (pc == 8) {
          st = infokey(world, "sk_t4_spy");
          if (st != string_null) 
           return st;
          return "tf_spy";
         }
         else {
          if (pc == 9) {
           st = infokey(world, "sk_t4_engineer");
           if (st != string_null) 
            return st;
           return "tf_eng";
          }
         }
        }
       }
      }
     }
    }
   }
  }
 }
 else {
  if (tn == 3) {
   if (pc == 1) {
    st = infokey(world, "sk_t3_scout");
    if (st != string_null) 
     return st;
    return "tf_scout";
   }
   else {
    if (pc == 2) {
     st = infokey(world, "sk_t3_sniper");
     if (st != string_null) 
      return st;
     return "tf_snipe";
    }
    else {
     if (pc == 3) {
      st = infokey(world, "sk_t3_soldier");
      if (st != string_null) 
       return st;
      return "tf_sold";
     }
     else {
      if (pc == 4) {
       st = infokey(world, "sk_t3_demoman");
       if (st != string_null) 
        return st;
       return "tf_demo";
      }
      else {
       if (pc == 5) {
        st = infokey(world, "sk_t3_medic");
        if (st != string_null) 
         return st;
        return "tf_medic";
       }
       else {
        if (pc == 6) {
         st = infokey(world, "sk_t3_hwguy");
         if (st != string_null) 
          return st;
         return "tf_hwguy";
        }
        else {
         if (pc == 7) {
          st = infokey(world, "sk_t3_pyro");
          if (st != string_null) 
           return st;
          return "tf_pyro";
         }
         else {
          if (pc == 8) {
           st = infokey(world, "sk_t3_spy");
           if (st != string_null) 
            return st;
           return "tf_spy";
          }
          else {
           if (pc == 9) {
            st = infokey(world, "sk_t3_engineer");
            if (st != string_null) 
             return st;
            return "tf_eng";
           }
          }
         }
        }
       }
      }
     }
    }
   }
  }
  else {
   if (tn == 2) {
    if (pc == 1) {
     st = infokey(world, "sk_t2_scout");
     if (st != string_null) 
      return st;
     return "tf_scout";
    }
    else {
     if (pc == 2) {
      st = infokey(world, "sk_t2_sniper");
      if (st != string_null) 
       return st;
      return "tf_snipe";
     }
     else {
      if (pc == 3) {
       st = infokey(world, "sk_t2_soldier");
       if (st != string_null) 
        return st;
       return "tf_sold";
      }
      else {
       if (pc == 4) {
        st = infokey(world, "sk_t2_demoman");
        if (st != string_null) 
         return st;
        return "tf_demo";
       }
       else {
        if (pc == 5) {
         st = infokey(world, "sk_t2_medic");
         if (st != string_null) 
          return st;
         return "tf_medic";
        }
        else {
         if (pc == 6) {
          st = infokey(world, "sk_t2_hwguy");
          if (st != string_null) 
           return st;
          return "tf_hwguy";
         }
         else {
          if (pc == 7) {
           st = infokey(world, "sk_t2_pyro");
           if (st != string_null) 
            return st;
           return "tf_pyro";
          }
          else {
           if (pc == 8) {
            st = infokey(world, "sk_t2_spy");
            if (st != string_null) 
             return st;
            return "tf_spy";
           }
           else {
            if (pc == 9) {
             st = infokey(world, "sk_t2_engineer");
             if (st != string_null) 
              return st;
             return "tf_eng";
            }
           }
          }
         }
        }
       }
      }
     }
    }
   }
   else {
    if (pc == 1) {
     st = infokey(world, "sk_t1_scout");
     if (st != string_null) 
      return st;
     return "tf_scout";
    }
    else {
     if (pc == 2) {
      st = infokey(world, "sk_t1_sniper");
      if (st != string_null) 
       return st;
      return "tf_snipe";
     }
     else {
      if (pc == 3) {
       st = infokey(world, "sk_t1_soldier");
       if (st != string_null) 
        return st;
       return "tf_sold";
      }
      else {
       if (pc == 4) {
        st = infokey(world, "sk_t1_demoman");
        if (st != string_null) 
         return st;
        return "tf_demo";
       }
       else {
        if (pc == 5) {
         st = infokey(world, "sk_t1_medic");
         if (st != string_null) 
          return st;
         return "tf_medic";
        }
        else {
         if (pc == 6) {
          st = infokey(world, "sk_t1_hwguy");
          if (st != string_null) 
           return st;
          return "tf_hwguy";
         }
         else {
          if (pc == 7) {
           st = infokey(world, "sk_t1_pyro");
           if (st != string_null) 
            return st;
           return "tf_pyro";
          }
          else {
           if (pc == 8) {
            st = infokey(world, "sk_t1_spy");
            if (st != string_null) 
             return st;
            return "tf_spy";
           }
           else {
            if (pc == 9) {
             st = infokey(world, "sk_t1_engineer");
             if (st != string_null) 
              return st;
             return "tf_eng";
            }
           }
          }
         }
        }
       }
      }
     }
    }
   }
  }
 }
};

void (entity pl) SetGasSkin =
{
  local entity te;
  local float t,rskin,rteam,rcol;
  local string st;
  
  if(pl.has_disconnected)return;
  if(!(new_gas & (#GAS_MASK_COLOR | #GAS_MASK_SKIN | #GAS_MASK_ALLSPYS)))
   return;
  te=find(world,classname,"player");
  while(te != world){
   if( te != pl && !te.has_disconnected)
   {
     t=  &te / %1;
     st=ftos(t);
     t = (t - firstplayer ) /  firstplayer ;
     msg_entity = pl;

     if(new_gas & #GAS_MASK_ALLSPYS)
     {
      if( pl.team_no  == 1)
       rteam = 2;
      if( pl.team_no  == 2)
       rteam = 1;

      if( pl.team_no  == 3)
       rteam = 1;

      if( pl.team_no  == 4)
       rteam = 2;

      rcol = TeamFortress_TeamGetTopColor(rteam);
      st=ftos(rcol);
      WriteByte(#MSG_ONE,#SVC_SETINFO );
      WriteByte(#MSG_ONE,t );
      WriteString(#MSG_ONE,"topcolor" );
      WriteString(#MSG_ONE, st);

      rcol = TeamFortress_TeamGetColor(pl.team_no) - 1;
      st=ftos(rcol);

      WriteByte(#MSG_ONE,#SVC_SETINFO );
      WriteByte(#MSG_ONE,t );
      WriteString(#MSG_ONE,"bottomcolor" );
      WriteString(#MSG_ONE, st);

      st=TF_GetSkin(pl.team_no,8);
      WriteByte(#MSG_ONE,#SVC_SETINFO );
      WriteByte(#MSG_ONE,t );
      WriteString(#MSG_ONE,"skin" );
      WriteString(#MSG_ONE,st );
     }else
     {
      if( (new_gas & #GAS_MASK_COLOR ) && random()<#SETGAS_SETCOLOR)
      {

        if(new_gas & #GAS_MASK_ALLCOLORS)
        {
         rcol = random() * 16;
         rteam=floor(rteam);
        }else
        {
         if(new_gas & #GAS_MASK_4COLORS)
          	rteam=random() * 4;
          else
         	rteam=random() * number_of_teams;
         rteam=floor(rteam) + 1 ;
         rcol = TeamFortress_TeamGetTopColor(rteam) ;
        }
        st=ftos(rcol);

     
        WriteByte(#MSG_ONE,#SVC_SETINFO );
        WriteByte(#MSG_ONE,t );
        WriteString(#MSG_ONE,"topcolor" );
        WriteString(#MSG_ONE, st);

        if(new_gas & #GAS_MASK_ALLCOLORS)
        {
         rcol = random() * 16;
         rteam=floor(rteam);
        }else
        {
         rcol = TeamFortress_TeamGetColor(rteam) - 1;
        }
        st=ftos(rcol);

        WriteByte(#MSG_ONE,#SVC_SETINFO );
        WriteByte(#MSG_ONE,t );
        WriteString(#MSG_ONE,"bottomcolor" );
        WriteString(#MSG_ONE, st);
      }
      if( (new_gas & #GAS_MASK_SKIN ) && random()<#SETGAS_SETSKIN)
      {
       rskin=random() * 9;
       rskin=floor(rskin)+1;

       st=TF_GetSkin(rteam,rskin);

       WriteByte(#MSG_ONE,#SVC_SETINFO );
       WriteByte(#MSG_ONE,t );
       WriteString(#MSG_ONE,"skin" );
       WriteString(#MSG_ONE,st );
      }
    }
   }
   te=find(te,classname,"player");
  }
}

#endif
void () HallucinationTimer =
{
 local entity te;
 local float tmpx;
 local float tmpy;
 local float halltype;
 local float halltype2;
 local string st;


 self.health = self.health - 2.5;
 if (self.owner.playerclass == 5) 
  self.health = self.health - 2.5;
 if (self.health <= 0 || self.owner.deadflag || self.owner.has_disconnected == 1) 
  self.owner.tfstate = self.owner.tfstate - (self.owner.tfstate & 16384);
 
 if (self.owner.deadflag || self.owner.has_disconnected == 1) {
#ifdef NEWSPY
  ResetSkins(self.owner);
#endif
  dremove(self);
  return;
 }
 if (!(self.owner.tfstate & 16384)) {
#ifdef NEWSPY
  ResetSkins(self.owner);
#endif
  if (new_gas & #GAS_MASK_PALETTE) 
   stuffcmd(self.owner, "v_cshift; wait; bf\n");
  sprint(self.owner, 2, "You feel a little better now.\n");
  dremove(self);
  return;
 }


// if (old_grens == 1) 
 if(!(new_gas & #GAS_MASK_NEWGREN_TIMES))
  self.nextthink = time + 0.5;
 else 
  self.nextthink = time + 0.3;

#ifdef NEWSPY
   if(!(new_gas & #GAS_MASK_ALLSPYS ) && random()< #SETGAS_TIMER_THINK)
     SetGasSkin(self.owner);
    self.nextthink = time + 0.5;
#endif

 if (random() < 0.5) 
  KickPlayer(-10, self.owner);
 if (new_gas & #GAS_MASK_PALETTE) {
  stuffcmd(self.owner, "v_cshift ");
  halltype = random() * 100;
  st = ftos(halltype);
  stuffcmd(self.owner, st);
  stuffcmd(self.owner, " ");
  halltype = random() * 100;
  st = ftos(halltype);
  stuffcmd(self.owner, st);
  stuffcmd(self.owner, " ");
  halltype = random() * 100;
  st = ftos(halltype);
  stuffcmd(self.owner, st);
  stuffcmd(self.owner, " -75\n");
 }
 tmpx = random() * 800 - 400;
 tmpy = random() * 800 - 400;
 halltype = random();
 halltype2 = random();
 msg_entity = self.owner;
 if (halltype < 0.4) {
  WriteByte(1, 23);
  if (halltype < 0.25) 
   WriteByte(1, 3);
  else {
   if (halltype < 0.35) 
    WriteByte(1, 4);
   else 
    WriteByte(1, 10);
  }
  WriteCoord(1, msg_entity.origin_x + tmpx);
  WriteCoord(1, msg_entity.origin_y + tmpy);
  WriteCoord(1, msg_entity.origin_z);
// if (old_grens != 1) 
  if(new_gas & #GAS_MASK_NEWGREN_DMG)
   T_Damage(self.owner, self.owner, self.owner, 0);
 }
 else {
  if (halltype < 0.7) {
   WriteByte(1, 23);
   WriteByte(1, 11);
   WriteCoord(1, msg_entity.origin_x + tmpx);
   WriteCoord(1, msg_entity.origin_y + tmpy);
   WriteCoord(1, msg_entity.origin_z);
   if (new_gas & #GAS_MASK_NEWGREN_EFFECTS) {
    if (halltype2 < 0.1) 
     stuffcmd(self.owner, "play weapons/r_exp3.wav\n");
    else {
     if (halltype2 < 0.15) 
      stuffcmd(self.owner, "play weapons/rocket1i.wav\n");
     else {
      if (halltype2 < 0.2) 
       stuffcmd(self.owner, "play weapons/sgun1.wav\n");
      else {
       if (halltype2 < 0.25) 
        stuffcmd(self.owner, "play weapons/guncock.wav\n");
       else {
        if (halltype2 < 0.3) 
         stuffcmd(self.owner, "play weapons/ric1.wav\n");
        else {
         if (halltype2 < 0.35) 
          stuffcmd(self.owner, "play weapons/ric2.wav\n");
         else {
          if (halltype2 < 0.4) 
           stuffcmd(self.owner, "play weapons/ric3.wav\n");
          else {
           if (halltype2 < 0.45) 
            stuffcmd(self.owner, "play weapons/spike2.wav\n");
           else {
            if (halltype2 < 0.5) 
             stuffcmd(self.owner, "play weapons/tink1.wav\n");
            else {
             if (halltype2 < 0.55) 
              stuffcmd(self.owner, "play weapons/grenade.wav\n");
             else {
              if (halltype2 < 0.6) 
               stuffcmd(self.owner, "play weapons/bounce.wav\n");
              else {
               if (halltype2 < 0.65) 
                stuffcmd(self.owner, "play weapons/shotgn2.wav\n");
               else {
                if (halltype2 < 0.7) 
                 stuffcmd(self.owner, "play wizard/wattack.wav\n");
                else {
                 if (halltype2 < 0.75) 
                  stuffcmd(self.owner, "play items/r_item1.wav\n");
                 else {
                  if (halltype2 < 0.8) 
                   stuffcmd(self.owner, "play items/r_item2.wav\n");
                  else {
                   if (halltype2 < 0.85) {
                    CenterPrint2(self.owner, "\n\n\n", "Your team �������� the flag!!");
                    stuffcmd(self.owner, "play weapons/lhit.wav\n");
                   }
                   else {
                    if (halltype2 < 0.9) 
                     stuffcmd(self.owner, "play misc/r_tele1.wav\n");
                    else {
                     stuffcmd(self.owner, "play weapons/railgun.wav\n");
                    }
                   }
                  }
                 }
                }
               }
              }
             }
            }
           }
          }
         }
        }
       }
      }
     }
    }
   }
  }
  else {
   te = spawn();
   te.origin_x = msg_entity.origin_x + tmpx;
   te.origin_y = msg_entity.origin_y + tmpy;
   te.origin_z = msg_entity.origin_z;
   WriteByte(1, 23);
   WriteByte(1, 6);
   WriteEntity(1, te);
   WriteCoord(1, te.origin_x);
   WriteCoord(1, te.origin_y);
   WriteCoord(1, te.origin_z);
   tmpx = random() * 800 - 400;
   tmpy = random() * 800 - 400;
   WriteCoord(1, msg_entity.origin_x + tmpx);
   WriteCoord(1, msg_entity.origin_y + tmpy);
   WriteCoord(1, msg_entity.origin_z);
   if (new_gas & #GAS_MASK_NEWGREN_EFFECTS) {
    if (halltype2 < 0.1) 
     stuffcmd(self.owner, "play weapons/detpack.wav\n");
    else {
     if (halltype2 < 0.2) 
      stuffcmd(self.owner, "play weapons/turrset.wav\n");
     else {
      if (halltype2 < 0.3) 
       stuffcmd(self.owner, "play weapons/turrspot.wav\n");
      else {
       if (halltype2 < 0.4) 
        stuffcmd(self.owner, "play weapons/turridle.wav\n");
       else {
        if (halltype2 < 0.5) 
         stuffcmd(self.owner, "play weapons/sniper.wav\n");
        else {
         if (halltype2 < 0.6) {
          CenterPrint2(self.owner, "\n\n\n", "Your flag has been �����!!");
          stuffcmd(self.owner, "play weapons/flmfire2.wav\n");
         }
         else {
          if (halltype2 < 0.7) 
           stuffcmd(self.owner, "play weapons/flmgrexp.wav\n");
          else {
           if (halltype2 < 0.8) 
            stuffcmd(self.owner, "play misc/vapeur2.wav\n");
           else {
            if (halltype2 < 0.9) 
             stuffcmd(self.owner, "play weapons/asscan1.wav\n");
            else 
             stuffcmd(self.owner, "play weapons/asscan2.wav\n");
           }
          }
         }
        }
       }
      }
     }
    }
   }
   dremove(te);
  }
 }
};

void () W_FireTranq =
{
 self.ammo_shells = self.ammo_shells - 1;
 self.currentammo = self.ammo_shells ;
 KickPlayer(-2, self);
 newmis = spawn();
 newmis.owner = self;
 newmis.movetype = 9;
 newmis.solid = 2;
 makevectors(self.v_angle);
 newmis.velocity = v_forward;
 newmis.velocity = newmis.velocity * 1500;
 newmis.angles = vectoangles(newmis.velocity);
 newmis.touch = T_TranqDartTouch;
 newmis.think = SUB_Remove;
 newmis.nextthink = time + 6;
 setmodel(newmis, "progs/spike.mdl");
 setsize(newmis, '0 0 0', '0 0 0');
 setorigin(newmis, self.origin + v_forward * 8 + '0 0 16');
};

void () T_TranqDartTouch =
{
 local entity timer;

 if (other.solid == 1) 
  return;
 if (pointcontents(self.origin) == -6) {
  dremove(self);
  return;
 }
 if (other.takedamage) {
  spawn_touchblood(9);
  deathmsg = 25;
  TF_T_Damage(other, self, self.owner, 20, 2, 2);
  if (other.classname == "player" && !(other.team_no == self.owner.team_no && (teamplay & (2 | 4)))) {
   if (other.tfstate & 32768) {
    timer = find(world, classname, "timer");
    while ((timer.owner != other || timer.think != TranquiliserTimer) && timer != world) 
     timer = find(timer, classname, "timer");
    if (timer != world) 
     timer.nextthink = time + 15;
   }
   else {
    sprint(other, 2, "You feel tired...\n");
    other.tfstate = other.tfstate | 32768;
    timer = spawn();
    timer.nextthink = time + #TRANQ_TIME;
    timer.think = TranquiliserTimer;
    timer.classname = "timer";
    timer.owner = other;
    timer.team_no = self.owner.team_no;
    TeamFortress_SetSpeed(other);
   }
  }
 }
 else {
  WriteByte(4, 23);
  if (self.classname == "wizspike") 
   WriteByte(4, 7);
  else {
   if (self.classname == "knightspike") 
    WriteByte(4, 8);
   else 
    WriteByte(4, 0);
  }
  WriteCoord(4, self.origin_x);
  WriteCoord(4, self.origin_y);
  WriteCoord(4, self.origin_z);
  multicast(self.origin, 2);
 }
 dremove(self);
};

void () TranquiliserTimer =
{
 self.owner.tfstate = self.owner.tfstate - (self.owner.tfstate & 32768);
 TeamFortress_SetSpeed(self.owner);
 sprint(self.owner, 2, "You feel more alert now\n");
 dremove(self);
};

void (entity spy) Spy_RemoveDisguise =
{
 local string st;
 local float tc;
 local float reset;

 if (invis_only != 1) {
  if (spy.playerclass == 8) {
   if (spy.undercover_team) {
    spy.immune_to_check = time + cheat_pause;//10;
    spy.undercover_team = 0;
    stuffcmd(spy, "color ");

    tc = TeamFortress_TeamGetTopColor(spy.team_no) ;
    st = ftos(tc);
    stuffcmd(spy, st);
    stuffcmd(spy, " ");

    tc = TeamFortress_TeamGetColor(spy.team_no) - 1;
    st = ftos(tc);
    stuffcmd(spy, st);

    stuffcmd(spy, "\n");
   }
   if (spy.undercover_skin) {
    spy.immune_to_check = time + cheat_pause;//10;
    spy.undercover_skin = 0;
    spy.skin = 0;
   }
   spy.is_undercover = 0;
   self.StatusRefreshTime = time + 0.1;
   TeamFortress_SetSkin(spy);
   TeamFortress_SpyCalcName(spy);
  }
 }
 else {
  if (spy.is_undercover) {
   spy.is_undercover = 0;
   spy.modelindex = modelindex_player;
   if (spy.items & 524288) 
       {
           spy.invisible_finished = 0;
           spy.invisible_time = 0;
    spy.items = spy.items - 524288;
       } 
   self.StatusRefreshTime = time + 0.1;
  }
 }
};

