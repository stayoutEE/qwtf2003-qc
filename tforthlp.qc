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

void () TeamFortress_MOTD =
{
 local string ya;

 if (self.motd == 4) 
  stuffcmd(self, "is_aliased\n");
 if (self.motd <= 20) {
  self.motd = self.motd + 1;
  return;
 }
 if (self.motd == 21) {
  if (!0) 
   self.tfstate = self.tfstate | 4096;
  if (teamplay && !self.team_no) {
   stuffcmd(self, "color ");
   ya = ftos(1 - 1);
   stuffcmd(self, ya);
   stuffcmd(self, "\n");
  }
  if (!self.got_aliases) 
  sprint(self, 2, "\n\n\n");
  sprint(self, 2, "Type help for more info.\n");
#ifdef TG
#ifdef LAN_SERVER
  sprint(self, 2, "���������� ������������ ����(QWLAN TF) Training Ground\n");
#else
  sprint(self, 2, "���������� ������������ ���� Training Ground\n");
#endif
#else
#ifdef LAN_SERVER
  sprint(self, 2, "���������� ������������ ����(QWLAN TF)\n");
#else
  sprint(self, 2, "���������� ������������ ����\n");
//  sprint(self, 2, "Official ���� version\n");
#endif
#endif
  sprint(self, 2, "by �sd� angel for ����\n");
  sprint(self, 2, "http://��������\n");

  self.menu_displaytime = 0;
  self.current_menu = 5;
  self.menu_count = 25;
  self.motd = 22;
  if (self.got_aliases == 1) 
   return;
  sprint(self, 2, "binding aliases...\n");
  TeamFortress_Alias("inv", 135, 0);
  TeamFortress_Alias("showtf", 136, 0);
  TeamFortress_Alias("autozoom", 174, 0);
  TeamFortress_Alias("changeclass", 99, 0);
  TeamFortress_Alias("scout",    #TF_CHANGEPC + #PC_SCOUT , 0);
  TeamFortress_Alias("sniper",   #TF_CHANGEPC + #PC_SNIPER , 0);
  TeamFortress_Alias("soldier",  #TF_CHANGEPC + #PC_SOLDIER , 0);
  TeamFortress_Alias("demoman",  #TF_CHANGEPC + #PC_DEMOMAN , 0);
  TeamFortress_Alias("medic",    #TF_CHANGEPC + #PC_MEDIC , 0);
  TeamFortress_Alias("hwguy",    #TF_CHANGEPC + #PC_HVYWEAP , 0);
  TeamFortress_Alias("pyro",     #TF_CHANGEPC + #PC_PYRO  , 0);
  TeamFortress_Alias("spy",      #TF_CHANGEPC + #PC_SPY  , 0);
  TeamFortress_Alias("engineer", #TF_CHANGEPC + #PC_ENGINEER , 0);
  TeamFortress_Alias("randompc", #TF_CHANGEPC + #PC_RANDOM, 0);
  TeamFortress_Alias("is_aliased", 13, 0);
  return;
 }
 if (self.motd <= 95) 
  self.motd = self.motd + 1;
 if (self.motd == 25) {
  TeamFortress_Alias("detpipe", 170, 0);
  TeamFortress_Alias("reload", 173, 0);
  TeamFortress_Alias("scan10", 162, 0);
  TeamFortress_Alias("scan30", 163, 0);
  TeamFortress_Alias("scan50", 164, 0);
  TeamFortress_Alias("scan100", 164, 0);
  TeamFortress_Alias("scanf", 161, 0);
  TeamFortress_Alias("scane", 160, 0);
  TeamFortress_Alias("autoscan", #AUTOSCAN_IMPULSE, 0);
  TeamFortress_Alias("scanf_off", #TF_SCAN, #TF_POST_SCANF_OFF);
  TeamFortress_Alias("scanf_on" , #TF_SCAN, #TF_POST_SCANF_ON );
  TeamFortress_Alias("scane_off", #TF_SCAN, #TF_POST_SCANE_OFF);
  TeamFortress_Alias("scane_on" , #TF_SCAN, #TF_POST_SCANE_ON );
  TeamFortress_Alias("autoscan_on" ,  #TF_SCAN, #TF_POST_AUTOSCAN_ON  );
  TeamFortress_Alias("autoscan_off" , #TF_SCAN, #TF_POST_AUTOSCAN_OFF );
  return;
 }
 if (self.motd == 35) {
  TeamFortress_Alias("primeone", 150, 0);
  TeamFortress_Alias("primetwo", 151, 0);
  TeamFortress_Alias("throwgren", 152, 0);
  TeamFortress_Alias("+gren1", 150, 0);
  TeamFortress_Alias("+gren2", 151, 0);
  TeamFortress_Alias("-gren1", 152, 0);
  TeamFortress_Alias("-gren2", 152, 0);
  TeamFortress_Alias("showscores", 145, 0);
  TeamFortress_Alias("showclasses", 144, 0);
  TeamFortress_Alias("query", 119, 0);
  return;
 }
 if (self.motd == 45) {
  TeamFortress_Alias("dropkey", 175, 0);
  TeamFortress_Alias("dropammo", 172, 0);
  TeamFortress_Alias("dropitems", 194, 0);
  TeamFortress_Alias("showloc", 118, 0);
  TeamFortress_Alias("special", 171, 0);
  TeamFortress_Alias("saveme", 181, 0);
  TeamFortress_Alias("discard", 184, 0);
  TeamFortress_Alias("id", 185, 0);
  return;
 }
 if (self.motd == 55) {
  TeamFortress_Alias("flaginfo", 23, 0);
  TeamFortress_Alias("maphelp", 131, 0);
  TeamFortress_Alias("showids", 186, 0);
  stuffcmd(self, "bind 9 \"impulse 9\"\n");
  stuffcmd(self, "bind 0 \"impulse 10\"\n");
  return;
 }
 if (self.motd == 65) {
  TeamFortress_Alias("sbar_on", 182, 0);
  TeamFortress_Alias("sbar_off", 183, 0);
  TeamFortress_Alias("sbar_200", 71, 0);
  TeamFortress_Alias("sbar_240", 71 + 1, 0);
  TeamFortress_Alias("sbar_300", 71 + 2, 0);
  TeamFortress_Alias("sbar_350", 71 + 3, 0);
  TeamFortress_Alias("sbar_384", 71 + 4, 0);
  TeamFortress_Alias("sbar_400", 71 + 5, 0);
  TeamFortress_Alias("sbar_480", 71 + 6, 0);
  TeamFortress_Alias("sbar_600", 71 + 7, 0);
  TeamFortress_Alias("sbar_768", 71 + 8, 0);
  return;
 }
 if (self.motd == 75) {
  TeamFortress_Alias("+det5", 165, 0);
  TeamFortress_Alias("-det5", 169, 0);
  TeamFortress_Alias("+det20", 166, 0);
  TeamFortress_Alias("-det20", 169, 0);
  TeamFortress_Alias("+det50", 167, 0);
  TeamFortress_Alias("-det50", 169, 0);
  return;
 }
 if (self.motd == 85) {
#ifdef TG
  TeamFortress_Alias("mod_menu", #TG_MAINMENU_IMPULSE, 0);
  TeamFortress_Alias("sg_rebuild", #TG_SG_REBUILD_IMPULSE, 0);
  TeamFortress_Alias("sg_reload", #TG_SG_RELOAD_IMPULSE, 0);
  TeamFortress_Alias("sg_upgrade", #TG_SG_UPGRADE_IMPULSE, 0);
  TeamFortress_Alias("disp_load", #TG_DISP_LOAD_IMPULSE , 0);
  TeamFortress_Alias("disp_unload", #TG_DISP_UNLOAD_IMPULSE, 0);
  TeamFortress_Alias("eff_conc", #TG_CONC_IMPULSE, 0);
  TeamFortress_Alias("eff_flash", #TG_FLASH_IMPULSE, 0);
  TeamFortress_Alias("eff_remove", #TG_EFF_REMOVE_IMPULSE, 0);
#endif
  return;
 }
 if (self.motd == 95) {
  TeamFortress_Alias("disguise", 177, 0);
  TeamFortress_Alias("feign", 178, 0);
  TeamFortress_Alias("sfeign", #TF_SPY_SFEIGN_IMPULSE , 0);
  TeamFortress_Alias("build", 179, 0);
  TeamFortress_Alias("detsentry", 188, 0);
  TeamFortress_Alias("detdispenser", 187, 0);
 }
};

void () TeamFortress_HelpMap =
{
 local entity te;

 te = find(world, classname, "info_tfdetect");
 if (te) {
  if (te.non_team_broadcast != string_null) {
   sprint(self, 2, te.non_team_broadcast);
   return;
  }
 }
 sprint(self, 2, "There is no help for this map.\n");
};

