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


void () NormalGrenadeTouch;
void () NormalGrenadeExplode;
void () MirvGrenadeTouch;
void () MirvGrenadeExplode;
void (vector org, entity shooter) MirvGrenadeLaunch;
void () TeamFortress_DetpackSet;
void () TeamFortress_DetpackExplode;
void () TeamFortress_DetpackTouch;
void () TeamFortress_DetpackDisarm;
void () TeamFortress_DetpackCountDown;

void () TeamFortress_DetonatePipebombs =
{
 local entity e;

 e = find(world, classname, "pipebomb");
 while (e != world) {
  if (e.owner == self) 
   e.nextthink = time;
  e = find(e, classname, "pipebomb");
 }
};

void () PipebombTouch =
{
 sound(self, 1, "weapons/bounce.wav", 1, 1);
 if (self.velocity == '0 0 0') 
  self.avelocity = '0 0 0';
};

void () MirvGrenadeTouch =
{
 sound(self, 1, "weapons/bounce.wav", 1, 1);
 if (self.velocity == '0 0 0') 
  self.avelocity = '0 0 0';
};

void () MirvGrenadeExplode =
{
 local float i;

 deathmsg = 10;
 T_RadiusDamage(self, self.owner, 100, world);
 WriteByte(4, 23);
 WriteByte(4, 3);
 WriteCoord(4, self.origin_x);
 WriteCoord(4, self.origin_y);
 WriteCoord(4, self.origin_z);
 multicast(self.origin, 1);
 self.solid = 0;
 i = 0;
 while (i < #GR_TYPE_MIRV_NO) {
//  MirvGrenadeLaunch(self.origin + '0 0 -1', self.owner);
  MirvGrenadeLaunch(self.origin + '0 0 0', self.owner);
  i = i + 1;
 }
 BecomeExplosion();
};

void (vector org, entity shooter) MirvGrenadeLaunch =
{
 local float xdir;
 local float ydir;
 local float zdir;

 xdir = 150 * random() - 75;
 ydir = 150 * random() - 75;
 zdir = 40 * random();
 newmis = spawn();
 newmis.owner = shooter;
 newmis.movetype = 10;
 newmis.solid = 2;
 newmis.classname = "grenade";
 newmis.weapon = 10;
#ifndef LAN_SERVER
 newmis.touch = NormalGrenadeTouch;
 newmis.think = NormalGrenadeExplode;
#else
 newmis.touch = GrenadeTouch;
 newmis.think = GrenadeExplode;
#endif
 newmis.nextthink = time + 2 + random();
 newmis.velocity_x = xdir * 2;
 newmis.velocity_y = ydir * 2;
 newmis.velocity_z = zdir * 15+1;
 newmis.avelocity = '250 300 400';
 if (birthday == 1 && random() < 0.3) 
  setmodel(newmis, "progs/grenade3.mdl");
 else 
  setmodel(newmis, "progs/grenade2.mdl");
 
 setsize(newmis, '0 0 0', '0 0 0');
 setorigin(newmis, org);
};
#ifdef TG
void () Detpack_SetClip =
{
 local entity te;
 local entity pl;

 te = find(world, classname, "detpack");
 while (te) {
  if (detpack_clip == 2) {
   te.solid = 2;
   te.owner = world;
  }
  else {
   if (detpack_clip == 0) 
    te.solid = 0;
   else {
    te.solid = 2;
    te.owner = te.real_owner;
   }
  }
  te = find(te, classname, "detpack");
 }
};
#endif
void (float timer) TeamFortress_SetDetpack =
{
 local string stimer;
 local entity te;
 local entity at_spot;

 self.impulse = 0;
 self.last_impulse = 0;
#ifndef TG
 if (!(self.weapons_carried & #WEAP_DETPACK)) 
  return;
 if(disable_grens & #DG_TYPE_DETPACK)
      return;
 if (self.ammo_detpack <= 0) 
  return;
#endif
 at_spot = findradius(self.origin, 65);
 while (at_spot != world) {
  if (at_spot.classname == "player" && self != at_spot) {
   sprint(self, 2, "You can't set a detpack on someone!\n");
   return;
  }
  else {
   if (at_spot.mdl == "progs/turrbase.mdl" || at_spot.mdl == "progs/turrgun.mdl") {
    sprint(self, 2, "You can't set a detpack on a sentry gun!\n");
    return;
   }
   else {
    if (at_spot.mdl == "progs/disp.mdl") {
     sprint(self, 2, "You can't set a detpack on a dispenser!\n");
     return;
    }
    else {
     if (birthday == 1 && at_spot.mdl == "progs/detpack2.mdl") {
      sprint(self, 2, "Detpacks can't be stacked!\n");
      return;
     }
     else {
      if (at_spot.classname == "detpack") {
       sprint(self, 2, "Detpacks can't be stacked!\n");
       return;
      }
     }
    }
   }
  }
  at_spot = at_spot.chain;
 }
 if(detpack_block)
 {
  at_spot = findradius(self.origin, 100);
  while (at_spot != world)
  {
    if (birthday == 1 && at_spot.mdl == "progs/detpack2.mdl") {
    sprint(self, 2, "Detpacks can't be stacked!\n");
   return;
   }
   else {
    if (at_spot.classname == "detpack") {
    sprint(self, 2, "Detpacks can't be stacked!\n");
    return;
   }
   }
   at_spot = at_spot.chain;
  }
 }
 if (!(self.flags & #FL_ONGROUND)) {
  sprint(self, 2, "You can't set detpacks in the air!\n");
  return;
 }
#ifndef TG
 te = find(world, classname, "detpack");
 while (te) {
  if (te.owner == self) {
   sprint(self, 2, "You can only have 1 detpack active at a time.\n");
   return;
  }
  te = find(te, classname, "detpack");
 }
#endif	
 if (timer < 5) {
  sprint(self, 2, "You can't set detpacks for less that 5 seconds.\n");
  return;
 }
 self.is_detpacking = 1;
 self.ammo_detpack = self.ammo_detpack - 1;
// self.immune_to_check = time + 10;
 self.tfstate = self.tfstate | #TFSTATE_CANT_MOVE;
 self.weapon = self.current_weapon;
 self.current_weapon = 0;
 self.weaponmodel = "";
 self.weaponframe = 0;
 TeamFortress_SetSpeed(self);
 self.pausetime = time + #WEAP_DETPACK_SETTIME;
 stimer = ftos(timer);
 sprint(self, 2, "Setting detpack for ");
 sprint(self, 2, stimer);
 sprint(self, 2, " seconds...\n");
 newmis = spawn();
#ifndef TG
 newmis.owner = self;
#else
 newmis.owner = self;
 newmis.real_owner = self;
 newmis.origin=self.origin;
#endif
 newmis.classname = "timer";
 newmis.netname = "detpack_timer";
 newmis.nextthink = time + #WEAP_DETPACK_SETTIME;
 newmis.think = TeamFortress_DetpackSet;
 newmis.health = timer;
};

void () TeamFortress_DetpackStop =
{
 local entity detpack_timer;

 detpack_timer = find(world, netname, "detpack_timer");
 while (detpack_timer.owner != self && detpack_timer != world) 
  detpack_timer = find(detpack_timer, netname, "detpack_timer");
 if (detpack_timer == world) 
  return;
 sprint(self, 2, "Detpack retrieved.\n");
 self.ammo_detpack = self.ammo_detpack + 1;
 dremove(detpack_timer);
 self.tfstate = self.tfstate - (self.tfstate & #TFSTATE_CANT_MOVE);
 self.is_detpacking = 0;
 self.current_weapon = self.weapon;
 W_SetCurrentAmmo();
 TeamFortress_SetSpeed(self);
 self.pausetime = time;
};

void () TeamFortress_DetpackSet =
{
 local entity countd;
 local entity oldself;
 local float skinno;

 self.is_detpacking = 0;
 self.owner.tfstate = self.owner.tfstate - (self.owner.tfstate & #TFSTATE_CANT_MOVE);
 TeamFortress_SetSpeed(self.owner);
 sound(self.owner, 2, "doors/medtry.wav", 1, 1);
 oldself = self;
 self = self.owner;
 self.is_detpacking = 0;
 self.current_weapon = self.weapon;
 W_SetCurrentAmmo();
 self = oldself;
 newmis = spawn();
 newmis.owner = self.owner;
 newmis.origin = self.owner.origin - '0 0 23';
#ifdef TG
 newmis.real_owner = self.real_owner;
#endif
 newmis.movetype = #MOVETYPE_BOUNCE;
 newmis.solid = #SOLID_BBOX;
 newmis.classname = "detpack";
 newmis.flags = 256;
 newmis.angles = '90 0 0';
 newmis.angles_y = self.owner.angles_y;
 newmis.velocity = '0 0 0';
 newmis.avelocity = '0 0 0';
 newmis.weaponmode = 0;
 newmis.touch = TeamFortress_DetpackTouch;
 if (birthday == 1) 
  setmodel(newmis, "progs/detpack2.mdl");
 else 
  setmodel(newmis, "progs/detpack.mdl");
 setsize(newmis, '-16 -16 0', '16 16 8');
 setorigin(newmis, self.owner.origin);
 countd = spawn();
 newmis.linked_list = countd;
 countd.think = TeamFortress_DetpackCountDown;
 countd.health = self.health - 1;
 countd.owner = self.owner;
 countd.classname = "countdown_timer";
 countd.enemy = newmis;
 newmis.oldenemy = countd;
 if (self.health <= 255) 
  countd.nextthink = time + 1;
 else {
  countd.nextthink = time + self.health - 10;
  countd.health = 9;
 }
 newmis.nextthink = time + self.health;
 newmis.think = TeamFortress_DetpackExplode;
 sprint(self.owner, 2, "Detpack set!\n");
 dremove(self);
};

void () TeamFortress_DetpackExplode =
{
 local float pos;
 local float points;
 local entity head;
 local entity te;
 local vector org;

// bprint(1, self.owner.netname," FIRE IN THE HOLE!\n");
 bprint(1, "FIRE IN THE HOLE!\n");
#ifndef TG
// sprint(self.owner,2,"Your detpack exploded\n");
#else
// sprint(self.real_owner,2,"Your detpack exploded\n");
#endif
 sound(self, 1, "weapons/detpack.wav", 1, 0);
 if (birthday == 1) 
#ifndef TG
  bprint2(1, self.owner.netname, " spreads good cheer!\n");
#else
  bprint2(1, self.real_owner.netname, " spreads good cheer!\n");
#endif
 pos = pointcontents(self.origin);
#ifndef TG
 if (pos != -2 && pos != -6 && self.owner.has_disconnected != 1) {
#else
 if (pos != -2 && pos != -6 && self.real_owner.has_disconnected != 1) {
#endif
  deathmsg = 12;
  head = findradius(self.origin, #WEAP_DETPACK_SIZE);
  while (head) {
   if (head.classname == "info_tfgoal") {
    if ((head.goal_activation & 2) && !head.search_time) {
     traceline(self.origin, head.origin, 1, self);
     if (trace_fraction == 1) {
#ifndef TG
      if (Activated(head, self.owner)) 
       DoResults(head, self.owner, 1);
#else
      if (Activated(head, self.real_owner)) 
       DoResults(head, self.real_owner, 1);
#endif
      else {
       if (head.else_goal) {
        te = Findgoal(head.else_goal);
        if (te) 
#ifndef TG
         AttemptToActivate(te, self.owner, head);
#else
         AttemptToActivate(te, self.real_owner, head);
#endif
       }
      }
     }
    }
   }
   else {
    if (head.takedamage && vlen(head.origin - self.origin) <= 700) {
     org = head.origin + (head.mins + head.maxs) * 0.5;
     points = 0.5 * vlen(self.origin - org);
     if (points < 0) 
      points = 0;
     points = 700 - points;
     if (points) {
      if (CanDamage(head, self)) 
#ifndef TG
       TF_T_Damage(head, self, self.owner, points * 2, 2, 4);
#else
       TF_T_Damage(head, self, self.real_owner, points * 2, 2, 4);
#endif
     }
    }
   }
   head = head.chain;
  }
  WriteByte(4, 23);
  WriteByte(4, 3);
  WriteCoord(4, self.origin_x);
  WriteCoord(4, self.origin_y);
  WriteCoord(4, self.origin_z);
  multicast(self.origin, 1);
 }
 else 
#ifndef TG
  sprint(self.owner, 2, "Your detpack fizzled out.\n");
#else
  sprint(self.real_owner, 2, "Your detpack fizzled out.\n");
#endif
 if (self.weaponmode == 1) {
  TeamFortress_SetSpeed(self.enemy);
  dremove(self.oldenemy);
  dremove(self.observer_list);
 }
 BecomeExplosion();
};

void () TeamFortress_DetpackTouch =
{
 local entity disarm;
 local vector source;
 local vector org;
 local vector def;
#ifndef TG
#ifndef FIXDETPACKDROP
 CheckBelowBuilding(self);
#endif
#else
 if(detpack_drop)
 CheckBelowBuilding(self);
#endif
#ifdef TG
 if (!detpack_disarm) 
  return;
#endif
 if (other.classname != "player") 
  return;
 if (other.playerclass != #PC_SCOUT) 
  return;
 if (other.deadflag) 
  return;
 if (self.weaponmode == 1) 
  return;
#ifndef TG
 if (other.team_no == self.owner.team_no && self.owner.team_no) 
  return;
#endif
 makevectors(other.v_angle);
 source = other.origin + '0 0 16';
 traceline(source, source + v_forward * 64, 0, other);
 if (trace_fraction == 1 || trace_ent != self) 
  return;
// other.immune_to_check = time + 5;
 other.tfstate = other.tfstate | #TFSTATE_CANT_MOVE;
 sprint(other, 2, "Disarming detpack...\n");
 TeamFortress_SetSpeed(other);
 disarm = spawn();
 disarm.owner = other;
 disarm.enemy = self;
 disarm.classname = "timer";
 disarm.nextthink = time + #WEAP_DETPACK_DISARMTIME;
 disarm.think = TeamFortress_DetpackDisarm;
 self.weaponmode = 1;
 self.enemy = other;
 self.observer_list = disarm;
};

void () TeamFortress_DetpackDisarm =
{
 if (self.owner.deadflag) {
  dremove(self);
  return;
 }
 if (birthday == 1) {
  bprint(1, self.owner.netname);
  bprint(1, " stole ");
#ifndef TG
  bprint(1, self.enemy.owner.netname);
#else
  bprint(1, self.enemy.real_owner.netname);
#endif
  bprint(1, "'s birthday present!\n");
 }
 else {
#ifndef TG
  bprint(1, self.enemy.owner.netname);
#else
  bprint(1, self.enemy.real_owner.netname);
#endif
  bprint(1, "'s detpack was defused by ");
  bprint(1, self.owner.netname);
  bprint(1, "\n");
 }
 self.owner.tfstate = self.owner.tfstate - (self.owner.tfstate & #TFSTATE_CANT_MOVE);
 TF_AddFrags(self.owner, 1);
 TeamFortress_SetSpeed(self.owner);
 dremove(self.enemy.oldenemy);
 dremove(self.enemy);
 dremove(self);
};

void () TeamFortress_DetpackCountDown =
{
 local string cd;

 cd = ftos(self.health);
#ifndef TG
#ifndef FIXDETPACKDROP
 CheckBelowBuilding(self);
#endif
#else
 if(detpack_drop)
 CheckBelowBuilding(self);
#endif

 self.nextthink = time + 1;
 self.health = self.health - 1;
 if (self.health < 10) {
  sprint(self.owner, 2, cd);
  sprint(self.owner, 2, "...\n");
  if (self.health < 5 && !self.has_disconnected) {
   sound(self.enemy, 2, "doors/baseuse.wav", 1, 1);
   self.has_disconnected = 1;
  }
  if (self.health < 5 && !self.enemy.skin) 
   self.enemy.skin = 1;
  else 
   self.enemy.skin = 0;
  if (!self.health) 
   dremove(self);
 }
};

