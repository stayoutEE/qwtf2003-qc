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

void () CamLock =
{
 local entity te;

 if (self.enemy == world) {
  te = find(world, netname, self.netname);
  while (te) {
   if (te != self) {
    sprint3(self, 2, "Locked onto ", te.netname, "\n");
    self.enemy = te;
    self.heat = vlen(self.enemy.origin - self.origin);
   }
   te = find(te, netname, self.netname);
  }
  if (self.enemy == world) 
   sprint2(self, 2, te.netname, " not found.\n");
 }
 else {
  sprint(self, 2, "Removed Lock\n");
  self.enemy = world;
 }
};

void () CamDistLock =
{
 if (self.tfstate & 4096) {
  sprint(self, 2, "Distance Lock OFF.\n");
  self.tfstate = self.tfstate - (self.tfstate & 4096);
 }
 else {
  sprint(self, 2, "Distance Lock ON.\n");
  self.tfstate = self.tfstate | 4096;
  if (self.enemy) 
   self.camdist = vlen(self.enemy.origin - self.origin);
 }
};

void () CamVecLock =
{
 if (self.tfstate & 2048) {
  sprint(self, 2, "Vector Lock OFF.\n");
  self.tfstate = self.tfstate - (self.tfstate & 2048);
 }
 else {
  if (self.tfstate & 32768) {
   sprint(self, 2, "Angle Lock OFF.\n");
   self.tfstate = self.tfstate - (self.tfstate & 32768);
  }
  if (!(self.tfstate & 4096)) {
   sprint(self, 2, "Vector And Distance Lock ON.\n");
   self.tfstate = self.tfstate | 4096;
   if (self.enemy) 
    self.camdist = vlen(self.enemy.origin - self.origin);
  }
  else 
   sprint(self, 2, "Vector Lock ON.\n");
  self.tfstate = self.tfstate | 2048;
  if (self.enemy) {
   self.camangle = self.origin - self.enemy.origin;
   self.camangle_z = 0 - self.camangle_z;
   self.camangle = vectoangles(self.camangle);
  }
 }
};

void () CamAngleLock =
{
 local vector enemyang;

 if (self.tfstate & 32768) {
  sprint(self, 2, "Angle Lock OFF.\n");
  self.tfstate = self.tfstate - (self.tfstate & 32768);
 }
 else {
  if (self.tfstate & 2048) {
   sprint(self, 2, "Vector Lock OFF.\n");
   self.tfstate = self.tfstate - (self.tfstate & 2048);
  }
  if (!(self.tfstate & 4096)) {
   sprint(self, 2, "Angle And Distance Lock ON.\n");
   self.tfstate = self.tfstate | 4096;
   if (self.enemy) 
    self.camdist = vlen(self.enemy.origin - self.origin);
  }
  else 
   sprint(self, 2, "Angle Lock ON.\n");
  self.tfstate = self.tfstate | 32768;
  if (self.enemy) {
   enemyang = self.enemy.angles;
   enemyang_z = 0 - enemyang_z;
   self.camangle = self.origin - self.enemy.origin;
   self.camangle_z = 0 - self.camangle_z;
   self.camangle = vectoangles(self.camangle);
   self.camangle = self.camangle - enemyang;
  }
 }
};

void () CamRevAngleLock =
{
 local vector enemyang;

 if (self.tfstate & 32) {
  sprint(self, 2, "Reverse Angle Lock OFF.\n");
  self.tfstate = self.tfstate - (self.tfstate & 32);
 }
 else {
  if (self.tfstate & 2048) {
   sprint(self, 2, "Vector Lock OFF.\n");
   self.tfstate = self.tfstate - (self.tfstate & 2048);
  }
  if (self.tfstate & 32768) {
   sprint(self, 2, "Angle Lock OFF.\n");
   self.tfstate = self.tfstate - (self.tfstate & 32768);
  }
  if (!(self.tfstate & 4096)) {
   sprint(self, 2, "Reverse Angle And Distance Lock ON.\n");
   self.tfstate = self.tfstate | 4096;
   if (self.enemy) 
    self.camdist = vlen(self.enemy.origin - self.origin);
  }
  else 
   sprint(self, 2, "Reverse Angle Lock ON.\n");
  self.tfstate = self.tfstate | 32;
  if (self.enemy) {
   enemyang = self.enemy.angles;
   enemyang_z = 0 - enemyang_z;
   self.camangle = self.origin - self.enemy.origin;
   self.camangle_z = 0 - self.camangle_z;
   self.camangle = vectoangles(self.camangle);
   self.camangle = self.camangle - enemyang;
  }
 }
};

void () CamProjectileLock =
{
 local entity te;

 if (self.tfstate & 512) {
  sprint(self, 2, "Projectile Lock OFF.\n");
  self.tfstate = self.tfstate - (self.tfstate & 512);
  live_camera = 0;
  te = find(world, classname, "player");
  while (te != world && !live_camera) {
   if (!te.playerclass && (te.tfstate & 512)) 
    live_camera = 1;
   te = find(te, classname, "player");
  }
 }
 else {
  sprint(self, 2, "Projectile Lock ON.\n");
  self.tfstate = self.tfstate | 512;
  live_camera = 1;
 }
};

void () CamProjectileZoom =
{
 if (self.tfstate & 256) {
  sprint(self, 2, "Projectile Zoom OFF.\n");
  self.tfstate = self.tfstate - (self.tfstate & 256);
 }
 else {
  sprint(self, 2, "Projectile Zoom ON.\n");
  self.tfstate = self.tfstate | 256;
 }
};

void () CamProjectileLockOn =
{
 local entity te;
 local float lockon;
 local vector enemyang;

 lockon = 0;
 te = find(world, classname, "player");
 while (te) {
  if (!te.playerclass && (te.tfstate & 512)) {
   if (te.enemy != world) {
    if (te.enemy == self) 
     lockon = 1;
   }
   else {
    traceline(te.origin, self.origin, 0, te);
    if (trace_ent == self) 
     lockon = 1;
   }
   if (lockon) {
    te.tfstate = te.tfstate - (te.tfstate & 512);
    sprint(te, 2, "Projectile Locked!\n");
    te.enemy = newmis;
    newmis.enemy = te;
    if (te.tfstate & 256) {
     enemyang = normalize(te.enemy.velocity) * 20;
     enemyang_z = 0 - enemyang_z;
     setorigin(te, te.enemy.origin - enemyang);
     te.tfstate = te.tfstate | 4096;
     te.camdist = 20;
     te.camangle = vectoangles(te.enemy.velocity);
     te.camangle_z = 0 - te.camangle_z;
    }
   }
  }
  te = find(te, classname, "player");
 }
};

void () CamProjectileLockOff =
{
 sprint(self.enemy, 2, "Removed Lock\n");
 self.enemy.enemy = world;
};

void () CamOffset =
{
 if (self.view_ofs == '0 0 22') 
  self.view_ofs = '0 0 18';
 else {
  if (self.view_ofs == '0 0 18') 
   self.view_ofs = '0 0 13';
  else {
   if (self.view_ofs == '0 0 13') 
    self.view_ofs = '0 0 7';
   else {
    if (self.view_ofs == '0 0 7') 
     self.view_ofs = '0 0 1';
    else {
     if (self.view_ofs == '0 0 1') 
      self.view_ofs = '0 0 -10';
     else {
      if (self.view_ofs == '0 0 -10') 
       self.view_ofs = '0 0 -18';
      else 
       self.view_ofs = '0 0 22';
     }
    }
   }
  }
 }
};

void () CamDrop =
{
 local entity te;
 local entity prevte;
 local entity cam;
 local float tf;
 local string st;

 cam = spawn();
 cam.classname = "camera";
 cam.origin = self.origin + self.view_ofs;
 cam.angles = self.angles;
 setmodel(cam, "progs/spike.mdl");
 tf = 1;
 prevte = self;
 te = self.camera_list;
 while (te != world) {
  tf = tf + 1;
  prevte = te;
  te = te.camera_list;
 }
 prevte.camera_list = cam;
 st = ftos(tf);
 sprint3(self, 2, "Camera ", st, " dropped.\n");
};

void () fadetoblack =
{
 local float fade;
 local string x;

 fade = 10;
 while (fade <= 250) {
  x = ftos(fade);
  stuffcmd(self, "v_cshift 0 0 0 ");
  stuffcmd(self, x);
  stuffcmd(self, ";wait\n");
  fade = fade + 10;
 }
 stuffcmd(self, "v_cshift 0 0 0 255\n");
};

void () fadefromblack =
{
 local float fade;
 local string x;

 fade = 250;
 while (fade >= 0) {
  x = ftos(fade);
  stuffcmd(self, "v_cshift 0 0 0 ");
  stuffcmd(self, x);
  stuffcmd(self, ";wait\n");
  fade = fade - 10;
 }
 stuffcmd(self, "v_cshift 0 0 0 0\n");
};

void () fadetowhite =
{
 local float fade;
 local string x;

 fade = 10;
 while (fade <= 250) {
  x = ftos(fade);
  stuffcmd(self, "v_cshift 255 255 255 ");
  stuffcmd(self, x);
  stuffcmd(self, ";wait\n");
  fade = fade + 10;
 }
 stuffcmd(self, "v_cshift 255 255 255 255\n");
};

void () fadefromwhite =
{
 local float fade;
 local string x;

 fade = 250;
 while (fade >= 0) {
  x = ftos(fade);
  stuffcmd(self, "v_cshift 255 255 255 ");
  stuffcmd(self, x);
  stuffcmd(self, ";wait\n");
  fade = fade - 10;
 }
 stuffcmd(self, "v_cshift 0 0 0 0\n");
};

