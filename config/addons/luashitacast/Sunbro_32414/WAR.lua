local profile = {};

local vars = gFunc.LoadFile('common/vars.lua');

local sets = {
    ['tp'] = {
        Ammo = 'Crepuscular Pebble',
        Head = { Name = 'Flam. Zucchetto +2', Augment = '"Triple Atk."+8' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Body = { Name = 'Dagon Breast.', Augment = 'Crit. hit damage +16%' },
        Hands = { Name = 'Kobo Kote', Augment = 'Crit. hit damage +16%' },
        Ring1 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Ring2 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+16' },
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Flam. Gambieras +2', Augment = 'Crit. hit damage +12%' },
    },
	['mab'] = {
        Ammo = { Name = 'Pemphredo Tathlum', Augment = 'Mag. crit. hit dmg. +24%' },
        Head = { Name = 'Volte Cap', Augment = '"Counter"+40' },
        Neck = { Name = 'Sanctity Necklace', Augment = 'Magic crit. hit rate +40' },
        Ear1 = { Name = 'Choleric Earring', Augment = { [1] = 'Magic crit. hit rate +10', [2] = 'Mag. crit. hit dmg. +18%' } },
        Ear2 = { Name = 'Friomisi Earring', Augment = {  } },
        Body = { Name = 'Volte Jupon', Augment = 'Crit.hit rate+20' },
        Hands = { Name = 'Volte Bracers', Augment = '"Counter"+40' },
        Ring1 = { Name = 'Shiva Ring +1', Augment = 'Magic crit. hit rate +40' },
        Ring2 = { Name = 'Shiva Ring +1', Augment = 'Mag. crit. hit dmg. +18%' },
        Back = { Name = 'Toro Cape', Augment = 'INT+32' },
        Waist = { Name = 'Eschan Stone', Augment = {  } },
        Legs = { Name = 'Volte Hose', Augment = 'Parrying rate+24%' },
        Feet = { Name = 'Volte Boots', Augment = 'Parrying rate+24%' },
    },
    ['warcry'] = {
        Head = 'Agoge Mask +3',
    },
    ['berserk'] = {
        Body = { Name = 'Pumm. Lorica +3', Augment = '"Triple Atk."+8' },
        Feet = 'Boii Calligae +1',
    },
    ['bloodrage'] = {
        Body = 'Boii Lorica +1',
    },
    ['aggressor'] = {
        Body = 'Agoge Lorica +1',
    },
    ['ws'] = {
        Ammo = { Name = 'Knobkierrie', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Agoge Mask +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Fotia Gorget', Augment = '"Triple Atk."+16' },
        Ear1 = { Name = 'M. Slime Earring', Augment = { [1] = 'Weapon skill damage +5%', [2] = 'Occ. quickens spellcasting +4%', [3] = 'Sklchn.dmg.+4%', [4] = 'Magic crit. hit rate +8' } },
        Ear2 = { Name = 'Ishvara Earring', Augment = '"Triple Atk."+8' },
        Body = { Name = 'Pumm. Lorica +3', Augment = '"Triple Atk."+8' },
        Hands = { Name = 'Hervor Mouffles', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Ring1 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +9%', [2] = 'Accuracy+10', [3] = 'Mag. Evasion+1', [4] = 'Attack+10', [5] = 'Evasion+1' } },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Buquwik Cape', Augment = 'STR+32' },
        Waist = { Name = 'Metalsinger Belt', Augment = 'STR+32' },
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = { Name = 'Hervor Sollerets', Augment = '"Triple Atk."+16' },
    },
    ['critws'] = {
        Ammo = { Name = 'Knobkierrie', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Agoge Mask +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'M. Slime Earring', Augment = { [1] = 'Weapon skill damage +5%', [2] = 'Occ. quickens spellcasting +4%', [3] = 'Sklchn.dmg.+4%', [4] = 'Magic crit. hit rate +8' } },
        Ear2 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Body = { Name = 'Dagon Breast.', Augment = 'Crit. hit damage +16%' },
        Hands = { Name = 'Flam. Manopolas +2', Augment = 'Crit.hit rate+20' },
        Ring1 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+16' },
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = { Name = 'Flam. Gambieras +2', Augment = 'Crit. hit damage +12%' },
    },
    ['dt'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Souv. Schaller +1', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Enh. Mag. eff. dur. +20', [3] = 'Chance of successful block +10', [4] = 'Enmity+15' } },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Body = { Name = 'Souv. Cuirass +1', Augment = { [1] = 'MND+15', [2] = 'VIT+15', [3] = 'Potency of "Cure" effect received+10%', [4] = 'Enmity+5' } },
        Hands = { Name = 'Souv. Handsch. +1', Augment = { [1] = 'Enemy crit. hit rate -8', [2] = 'Accuracy+20', [3] = 'HP+100', [4] = 'Attack+20', [5] = 'STR+15' } },
        Ring1 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Souv. Diechlings +1', Augment = { [1] = '"Resist Charm"+10', [2] = 'Phalanx +30', [3] = 'DEF+20', [4] = '"Shield Mastery"+10' } },
        Feet = { Name = 'Souveran Schuhs +1', Augment = { [1] = 'Phys. dmg. taken -5%', [2] = 'VIT+20', [3] = 'Accuracy+20', [4] = 'Mag. Evasion+20', [5] = 'Attack+20', [6] = 'Evasion+20' } },
    },
    ['restraint'] = {
        Ammo = 'Aqreqaq Bomblet',
        Head = { Name = 'Flam. Zucchetto +2', Augment = '"Triple Atk."+8' },
        Neck = 'Caro Necklace',
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Ear2 = 'Kokou\'s Earring',
        Body = { Name = 'Hervor Haubert', Augment = '"Regen"+80' },
        Hands = 'Boii Mufflers +1',
        Ring1 = { Name = 'Niqmaddu Ring', Augment = 'Crit.hit rate+20' },
        Ring2 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Back = { Name = 'Buquwik Cape', Augment = 'STR+32' },
        Waist = { Name = 'Metalsinger Belt', Augment = 'STR+32' },
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = { Name = 'Hervor Sollerets', Augment = '"Triple Atk."+16' },
    },
    ['wsstp'] = {
        Ammo = { Name = 'Knobkierrie', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Agoge Mask +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Body = { Name = 'Pumm. Lorica +3', Augment = '"Triple Atk."+8' },
        Hands = { Name = 'Hervor Mouffles', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Ring1 = { Name = 'Jwalamukhi Ring', Augment = { [1] = '"Dbl.Atk."+7', [2] = '"Subtle Blow"+7', [3] = 'Crit.hit rate+7', [4] = '"Store TP"+7', [5] = '"Triple Atk."+7' } },
        Ring2 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Back = { Name = 'Bleating Mantle', Augment = '"Triple Atk."+12' },
        Waist = { Name = 'Fotia Belt', Augment = 'DMG:+32' },
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = { Name = 'Hervor Sollerets', Augment = '"Triple Atk."+12' },
    },
	['ukon'] = {
        Main = { Name = 'Ukonvasara', Augment = 'DMG:+64' },
        Sub = 'Utu Grip',
    },
	['dualwield'] = {
        Main = 'Malignance Sword',
		Sub = 'Reikiko',
    },
	['nexus'] = {
		Back = 'Nexus Cape',
	},
    ['cast'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Agoge Mask +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Body = { Name = 'Volte Jupon', Augment = 'Crit.hit rate+20' },
        Hands = { Name = 'Volte Bracers', Augment = '"Counter"+40' },
        Ring1 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = 'Tempus Fugit',
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Volte Boots', Augment = { [1] = '"Store TP"+20', [2] = '"Triple Atk."+4' } },
    },
    ['town'] = {
        Ammo = { Name = 'Crepuscular Pebble', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Souv. Schaller +1', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Enh. Mag. eff. dur. +20', [3] = 'Chance of successful block +10', [4] = 'Enmity+15' } },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Ishvara Earring', Augment = '"Triple Atk."+8' },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Dagon Breast.', Augment = 'Crit. hit damage +16%' },
        Hands = { Name = 'Odyssean Gauntlets', Augment = '"Triple Atk."+8' },
        Ring1 = { Name = 'Niqmaddu Ring', Augment = 'Crit.hit rate+20' },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Hervor Sollerets', Augment = '"Triple Atk."+16' },
    },
    ['cure'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = 'Genmei Kabuto',
        Neck = 'Phalaina Locket',
        Ear1 = 'Beatific Earring',
        Ear2 = 'Mendi. Earring',
        Body = 'Reiki Osode',
        Hands = 'Macabre Gaunt. +1',
        Ring1 = { Name = 'Stikini Ring +1', Augment = 'Enha.mag. skill +16' },
        Ring2 = 'Lebeche Ring',
        Back = 'Solemnity Cape',
        Waist = 'Chuq\'aba Belt',
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = 'Shukuyu Sune-Ate',
    },
    ['mightystrikes'] = {
        Ammo = { Name = 'Yetshila +1', Augment = 'Crit. hit damage +16%' },
        Head = { Name = 'Agoge Mask +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'M. Slime Earring', Augment = { [1] = 'Weapon skill damage +5%', [2] = 'Occ. quickens spellcasting +4%', [3] = 'Sklchn.dmg.+4%', [4] = 'Magic crit. hit rate +8' } },
        Ear2 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Body = { Name = 'Dagon Breast.', Augment = 'Crit. hit damage +16%' },
        Hands = { Name = 'Kobo Kote', Augment = 'Crit. hit damage +16%' },
        Ring1 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Ring2 = { Name = 'Rajas Ring', Augment = 'Crit. hit damage +12%' },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+16' },
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = { Name = 'Hervor Sollerets', Augment = '"Triple Atk."+16' },
    },
    ['heroictp'] = {
        Ammo = 'Crepuscular Pebble',
        Head = { Name = 'Flam. Zucchetto +2', Augment = '"Triple Atk."+8' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Body = { Name = 'Hervor Haubert', Augment = '"Regen"+80' },
        Hands = { Name = 'Flam. Manopolas +2', Augment = 'Crit.hit rate+20' },
        Ring1 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Ring2 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = 'Tempus Fugit',
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Flam. Gambieras +2', Augment = 'Crit. hit damage +12%' },
    },
    ['heroicdt'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Volte Cap', Augment = '"Counter"+40' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Body = { Name = 'Hervor Haubert', Augment = '"Regen"+80' },
        Hands = { Name = 'Volte Bracers', Augment = '"Counter"+40' },
        Ring1 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Volte Hose', Augment = 'Parrying rate+24%' },
        Feet = { Name = 'Volte Boots', Augment = 'Parrying rate+24%' },
    },
    ['heroiccritws'] = {
        Ammo = { Name = 'Yetshila +1', Augment = 'Crit. hit damage +16%' },
        Head = { Name = 'Agoge Mask +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'M. Slime Earring', Augment = { [1] = 'Weapon skill damage +5%', [2] = 'Occ. quickens spellcasting +4%', [3] = 'Sklchn.dmg.+4%', [4] = 'Magic crit. hit rate +8' } },
        Ear2 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Body = { Name = 'Dagon Breast.', Augment = 'Crit. hit damage +16%' },
        Hands = { Name = 'Hervor Mouffles', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Ring1 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+16' },
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Hervor Sollerets', Augment = '"Triple Atk."+16' },
    },
};
profile.Sets = sets;

local Settings = {
	Set = 'tp',
	WeaponSet = 'ukon',
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	
	(function()
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F11 /exec init/war');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^l /ac fwd weapon');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F5 /ac fwd tpset tp');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F6 /ac fwd tpset dt');
		
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 4');
	end):once(1);
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
	if (args[1] == 'weapon') then
		if string.match(Settings.WeaponSet, 'ukon') then
			Settings.WeaponSet = 'dualwield';
			AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
			AshitaCore:GetChatManager():QueueCommand(1, '/tb palette change sword');
			AshitaCore:GetChatManager():QueueCommand(1, '/bs setn 2 "molting plumage"');
			AshitaCore:GetChatManager():QueueCommand(1, '/bind del //gloryslash');
		else 
			Settings.WeaponSet = 'ukon';
			AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
			AshitaCore:GetChatManager():QueueCommand(1, '/tb palette change base');
			AshitaCore:GetChatManager():QueueCommand(1, '/bs setn 2 "diffusion ray"');
			AshitaCore:GetChatManager():QueueCommand(1, '/bind del //fellcleave');
	end
	elseif (args[1] == 'tpset') then
		Settings.Set = args[2];
	end
end

profile.HandleDefault = function()
	gFunc.EquipSet(Settings.WeaponSet);
	local player = gData.GetPlayer();
	local env = gData.GetEnvironment();
	
	if vars.Cities:contains(env.Area) then
		gFunc.EquipSet(sets.town);
	else 
		if vars.HeroicZones:contains(env.Area) then
			gFunc.EquipSet('heroic' .. Settings.Set);
		else 
			gFunc.EquipSet(Settings.Set);
		end
		
		if (gData.GetBuffCount('Doom') == 1) then
			gFunc.Equip('Ring2', 'Purity Ring');
		end
	end
	if (player.IsMoving == true and not (player.Status == 'Engaged')) then
		gFunc.Equip('Ring2', 'Shneddick Ring');
    end
	if (player.HPP < 75) then 
		gFunc.EquipSet(vars.Regen);
	end
end

profile.HandleAbility = function()
	local action = gData.GetAction();
	if (action.Name == 'Berserk') then
		gFunc.EquipSet(sets.berserk);
	elseif (action.Name == 'Aggressor') then
		gFunc.EquipSet(sets.aggressor);
	elseif (action.Name == 'Blood Rage') then
		gFunc.EquipSet(sets.bloodrage);
	elseif (action.Name == 'Warcry') then
		gFunc.EquipSet(sets.warcry);
	elseif (action.Name == 'Restraint') then
		gFunc.EquipSet(sets.restraint );
	end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
	gFunc.EquipSet(gFunc.Combine(sets.tp, vars.FastCast));
	
	local spell = gData.GetAction();
	local fastCastValue = 0.80;
	local minimumBuffer = 0.1;
	local packetDelay = 0.25;
	local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) - minimumBuffer;
	if (castDelay >= packetDelay) then
		gFunc.SetMidDelay(castDelay);
	end
end

profile.HandleMidcast = function()
	gFunc.InterimEquipSet(sets.dt);
	
	local action = gData.GetAction();
	if (action.Skill == 'Blue Magic') then
		gFunc.Equip('Neck', { Name = 'Deceiver\'s Torque', Augment = 'Blue Magic skill +16' });
		if (vars.BluNukes:contains(action.Name)) then
			gFunc.EquipSet(gFunc.Combine(sets.cast, sets.mab));
			if (gData.GetBuffCount('Burst Affinity') == 1) then
				gFunc.Equip('main', { Name = 'Chatoyant Staff', Augment = {  } });
				gFunc.Equip('sub', { Name = 'Elder\'s Grip +1', Augment = {  } });
			end
		elseif (vars.BluCures:contains(action.Name)) then
			gFunc.EquipSet(gFunc.Combine(sets.cast, sets.cure));
		elseif (vars.BluBuffs:contains(action.Name) or vars.BluDebuffs:contains(action.Name)) then
			gFunc.EquipSet(gFunc.Combine(sets.cast, vars.BluSkill));
		else
			gFunc.EquipSet(sets.cast);
		end
	else
		gFunc.EquipSet(sets.cast);
	end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local env = gData.GetEnvironment();
	local action = gData.GetAction();
	
	if (gData.GetBuffCount('Mighty Strikes') == 1) then
		gFunc.EquipSet(sets.mightystrikes);
	else
		if string.match(action.Name, 'Ukko\'s Fury') or string.match(action.Name, 'Raging Rush') then
			if vars.HeroicZones:contains(env.Area) then
				gFunc.EquipSet(sets.heroiccritws);
			else 
				gFunc.EquipSet(sets.critws);
			end
		elseif string.match(action.Name, 'Full Break') or string.match(action.Name, 'Fell Cleave') then
			gFunc.EquipSet(sets.wsstp);
		else
			gFunc.EquipSet(sets.ws);
		end
	end
end

return profile;