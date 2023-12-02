local profile = {};

local vars = gFunc.LoadFile('common/vars.lua');

local sets = {
    ['dt'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Genmei Kabuto', Augment = '"Regen"+80' },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Hes. Cyclas +3', Augment = { [1] = '"Refresh"+20', [2] = '"Regen"+60' } },
        Hands = { Name = 'Malignance Gloves', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ring1 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = { Name = 'Moonbow Belt +1', Augment = { [1] = '"Triple Atk."+8', [2] = 'DMG:+32' } },
        Legs = { Name = 'Malignance Tights', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Feet = 'Malignance Boots',
    },
    ['ws'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Knobkierrie', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Hes. Crown +3', Augment = '"Triple Atk."+8' },
        Neck = { Name = 'Fotia Gorget', Augment = '"Triple Atk."+16' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'M. Slime Earring', Augment = { [1] = 'Weapon skill damage +5%', [2] = 'Occ. quickens spellcasting +4%', [3] = 'Sklchn.dmg.+4%', [4] = 'Magic crit. hit rate +8' } },
        Body = { Name = 'Hiza. Haramaki +2', Augment = '"Triple Atk."+8' },
        Hands = { Name = 'Anchor. Gloves +3', Augment = 'Crit.hit rate+20' },
        Ring1 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +9%', [2] = 'Accuracy+10', [3] = 'Mag. Evasion+1', [4] = 'Attack+10', [5] = 'Evasion+1' } },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Bleating Mantle', Augment = '"Triple Atk."+12' },
        Waist = { Name = 'Moonbow Belt +1', Augment = { [1] = '"Triple Atk."+8', [2] = 'DMG:+32' } },
        Legs = { Name = 'Hiza. Hizayoroi +2', Augment = '"Triple Atk."+8' },
        Feet = { Name = 'Heidrek Boots', Augment = '"Triple Atk."+16' },
    },
    ['critws'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Knobkierrie', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Hes. Crown +3', Augment = '"Triple Atk."+8' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'Odr Earring', Augment = 'Crit. hit damage +16%' },
        Body = { Name = 'Enforcer\'s Harness', Augment = 'Crit.hit rate+32' },
        Hands = { Name = 'Ryuo Tekko +1', Augment = { [1] = 'Weapon Skill Acc.+10', [2] = '"Subtle Blow"+10', [3] = '"Triple Atk."+8', [4] = 'Mag. Evasion+20', [5] = '"Store TP"+10', [6] = 'Evasion+20' } },
        Ring1 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = { Name = 'Moonbow Belt +1', Augment = { [1] = '"Triple Atk."+8', [2] = 'DMG:+32' } },
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Heidrek Boots', Augment = '"Triple Atk."+16' },
    },
    ['kickws'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Knobkierrie', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Hes. Crown +3', Augment = '"Triple Atk."+8' },
        Neck = { Name = 'Mnk. Nodowa +2', Augment = { [1] = '"Kick Attacks"+25', [2] = '"Subtle Blow"+15', [3] = 'MND+15', [4] = 'DEX+15' } },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'M. Slime Earring', Augment = { [1] = 'Weapon skill damage +5%', [2] = 'Occ. quickens spellcasting +4%', [3] = 'Sklchn.dmg.+4%', [4] = 'Magic crit. hit rate +8' } },
        Body = { Name = 'Anch. Cyclas +3', Augment = 'Crit.hit rate+20' },
        Hands = { Name = 'Anchor. Gloves +3', Augment = 'Crit.hit rate+20' },
        Ring1 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +9%', [2] = 'Accuracy+10', [3] = 'Mag. Evasion+1', [4] = 'Attack+10', [5] = 'Evasion+1' } },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = 'Segomo\'s Mantle',
        Waist = 'Moonbow Belt +1',
        Legs = { Name = 'Hes. Hose +3', Augment = 'Crit.hit rate+20' },
        Feet = { Name = 'Anch. Gaiters +3', Augment = '"Triple Atk."+8' },
    },
    ['mab'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Pemphredo Tathlum', Augment = 'Mag. crit. hit dmg. +24%' },
        Head = { Name = 'Volte Cap', Augment = '"Counter"+40' },
        Neck = { Name = 'Nefarious Collar', Augment = 'Magic crit. hit rate +40' },
        Ear1 = { Name = 'Choleric Earring', Augment = { [1] = 'Magic crit. hit rate +10', [2] = 'Mag. crit. hit dmg. +18%' } },
        Ear2 = { Name = 'Friomisi Earring', Augment = {  } },
        Body = 'Rawhide Vest',
        Hands = { Name = 'Volte Bracers', Augment = '"Counter"+40' },
        Ring1 = { Name = 'Shiva Ring +1', Augment = 'Magic crit. hit rate +40' },
        Ring2 = { Name = 'Shiva Ring +1', Augment = {  } },
        Back = { Name = 'Toro Cape', Augment = 'INT+32' },
        Waist = { Name = 'Eschan Stone', Augment = {  } },
        Legs = { Name = 'Volte Hose', Augment = 'Parrying rate+24%' },
        Feet = 'Malignance Boots',
    },
    ['footwork'] = {
        Feet = 'Shukuyu Sune-ate',
    },
    ['perfectcounter'] = {
        Head = 'Tantra Crown +2',
    },
    ['counterstance'] = {
        Feet = 'Hes. Gaiters +1',
    },
    ['boost'] = {
        Hands = { Name = 'Anchor. Gloves +3', Augment = 'Crit.hit rate+20' },
    },
    ['chakra'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = 'Crepuscular Pebble',
        Head = 'Genmei Kabuto',
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = '"Store TP"+5', [2] = '"Refresh"+10', [3] = '"Fast Cast"+5', [4] = '"Regen"+10' } },
        Ear2 = 'Kemas Earring',
        Body = { Name = 'Anch. Cyclas +3', Augment = 'Crit.hit rate+20' },
        Hands = { Name = 'Hes. Gloves +3', Augment = '"Triple Atk."+8' },
        Ring1 = { Name = 'Niqmaddu Ring', Augment = 'Crit.hit rate+20' },
        Ring2 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = 'Caudata Belt',
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Heidrek Boots', Augment = '"Triple Atk."+16' },
    },
    ['tp50'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Staunch Tathlum', Augment = 'DMG:+32' },
        Head = { Name = 'Shn. Hachigane +1', Augment = { [1] = 'STR+3', [2] = 'DMG:+3', [3] = 'Attack+10', [4] = 'DEX+4' } },
        Neck = { Name = 'Peacock Charm', Augment = '"Triple Atk."+8' },
        Ear1 = { Name = 'Insomnia Earring', Augment = { [1] = '"Counter"+5', [2] = 'Mag. Evasion+10', [3] = '"Mag.Def.Bns."+10', [4] = '"Subtle Blow"+5' } },
        Ear2 = { Name = 'Valor Earring', Augment = { [1] = '"Mag.Def.Bns."+1', [2] = 'Accuracy+6', [3] = '"Counter"+4', [4] = 'Attack+6', [5] = 'DEF+3' } },
        Body = { Name = 'Shinobi Gi +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'STR+3', [3] = 'Attack+10', [4] = 'DEX+4' } },
        Hands = { Name = 'Elvaan Gloves', Augment = '"Triple Atk."+8' },
        Ring1 = 'Ulthalam\'s Ring',
        Ring2 = { Name = 'Rajas Ring', Augment = 'Crit. hit damage +12%' },
        Back = { Name = 'Moonbeam Cape', Augment = { [1] = '"Refresh"+20', [2] = '"Regen"+60' } },
        Waist = 'Tilt Belt',
        Legs = { Name = 'Elv. M Chausses', Augment = 'Crit.hit rate+20' },
        Feet = { Name = 'Shn. Kyahan +1', Augment = { [1] = 'STR+3', [2] = '"Dbl.Atk."+3', [3] = 'Attack+10', [4] = 'DEX+4' } },
    },
    ['tp'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Crepuscular Pebble', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Anch. Crown +3', Augment = 'Crit.hit rate+20' },
        Neck = { Name = 'Mnk. Nodowa +2', Augment = { [1] = '"Kick Attacks"+25', [2] = '"Subtle Blow"+15', [3] = 'MND+15', [4] = 'DEX+15' } },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Body = { Name = 'Hes. Cyclas +3', Augment = { [1] = '"Refresh"+20', [2] = '"Regen"+60' } },
        Hands = { Name = 'Kobo Kote', Augment = 'Crit. hit damage +16%' },
        Ring1 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = { Name = 'Moonbow Belt +1', Augment = { [1] = '"Triple Atk."+8', [2] = 'DMG:+32' } },
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = 'Malignance Boots',
    },
	['nexus'] = {
		Back = 'Nexus Cape',
	},
    ['cast'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Anch. Crown +3', Augment = 'Crit.hit rate+20' },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Hes. Cyclas +3', Augment = { [1] = '"Refresh"+20', [2] = '"Regen"+60' } },
        Hands = { Name = 'Hes. Gloves +3', Augment = '"Triple Atk."+8' },
        Ring1 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = 'Black Belt',
        Legs = 'Jokushu Haidate',
        Feet = { Name = 'Anch. Gaiters +3', Augment = '"Triple Atk."+8' },
    },
    ['cure'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = 'Genmei Kabuto',
        Neck = { Name = 'Phalaina Locket', Augment = '"Cure" potency +16%' },
        Ear1 = 'Beatific Earring',
        Ear2 = 'Mendi. Earring',
        Body = 'Reiki Osode',
        Hands = { Name = 'Anchor. Gloves +3', Augment = 'Crit.hit rate+20' },
        Ring1 = { Name = 'Stikini Ring +1', Augment = 'Enha.mag. skill +16' },
        Ring2 = 'Lebeche Ring',
        Back = { Name = 'Solemnity Cape', Augment = '"Cure" potency +16%' },
        Waist = 'Engraved Belt',
        Legs = { Name = 'Hes. Hose +3', Augment = 'Crit.hit rate+20' },
        Feet = 'Shukuyu Sune-Ate',
    },
    ['town'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = 'Crepuscular Pebble',
        Head = 'Genmei Kabuto',
        Neck = { Name = 'Mnk. Nodowa +2', Augment = { [1] = '"Kick Attacks"+25', [2] = '"Subtle Blow"+15', [3] = 'MND+15', [4] = 'DEX+15' } },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = 'Heidrek Harness',
        Hands = 'Heidrek Gloves',
        Ring1 = 'Warden\'s Ring',
        Ring2 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = 'Moonbow Belt +1',
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = 'Malignance Boots',
    },
    ['heroictp'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Crepuscular Pebble', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Anch. Crown +3', Augment = 'Crit.hit rate+20' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Odr Earring', Augment = 'Crit. hit damage +16%' },
        Ear2 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Body = { Name = 'Heidrek Harness', Augment = '"Regen"+80' },
        Hands = { Name = 'Kobo Kote', Augment = 'Crit. hit damage +16%' },
        Ring1 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = { Name = 'Moonbow Belt +1', Augment = { [1] = '"Triple Atk."+8', [2] = 'DMG:+32' } },
        Legs = { Name = 'Heidrek Brais', Augment = '"Triple Atk."+16' },
        Feet = 'Malignance Boots',
    },
    ['heroicdt'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Volte Cap', Augment = '"Counter"+40' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Heidrek Harness', Augment = '"Regen"+80' },
        Hands = { Name = 'Malignance Gloves', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ring1 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = { Name = 'Moonbow Belt +1', Augment = { [1] = '"Triple Atk."+8', [2] = 'DMG:+32' } },
        Legs = { Name = 'Heidrek Brais', Augment = '"Triple Atk."+16' },
        Feet = 'Malignance Boots',
    },
    ['impetus'] = {
        Main = { Name = 'Verethragna', Augment = 'DMG:+64' },
        Ammo = 'Falcon Eye',
        Head = { Name = 'Hes. Crown +3', Augment = '"Triple Atk."+8' },
        Neck = { Name = 'Mnk. Nodowa +2', Augment = { [1] = '"Kick Attacks"+25', [2] = '"Subtle Blow"+15', [3] = 'MND+15', [4] = 'DEX+15' } },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'Odr Earring', Augment = 'Crit. hit damage +16%' },
        Body = 'Bhikku Cyclas +1',
        Hands = { Name = 'Heidrek Gloves', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Ring1 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Ring2 = { Name = 'Niqmaddu Ring', Augment = 'Crit.hit rate+20' },
        Back = 'Kayapa Cape',
        Waist = { Name = 'Moonbow Belt +1', Augment = { [1] = '"Triple Atk."+8', [2] = 'DMG:+32' } },
        Legs = { Name = 'Heidrek Brais', Augment = '"Triple Atk."+16' },
        Feet = { Name = 'Heidrek Boots', Augment = '"Triple Atk."+16' },
    },
};
profile.Sets = sets;

local Settings = {
	Set = 'tp',
	CurrentLevel = 0,
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	
	(function()
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F11 /exec init/mnk');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F5 /ac fwd tpset tp');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F6 /ac fwd tpset dt');
		
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 1');
	end):once(1);
end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind F5');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind F6');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind F7');
end

profile.HandleCommand = function(args)
	if (args[1] == 'tpset') then
		Settings.Set = args[2];
	end
end

profile.HandleDefault = function()
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
	
	if (player.IsMoving and not (player.Status == 'Engaged')) then 
		gFunc.Equip('Feet', 'Herald\'s Gaiters');
		gFunc.Equip('Ring2', 'Shneddick Ring');
	end
	
	if (player.HPP < 75) then 
		gFunc.EquipSet(vars.Regen);
	end
end

profile.HandleAbility = function()
	local action = gData.GetAction();
	if (action.Name == 'Footwork') then
		gFunc.EquipSet(sets.footwork);
	elseif (action.Name == 'Boost') then
		gFunc.EquipSet(sets.boost);
	elseif (action.Name == 'Chakra') then
		gFunc.EquipSet(sets.chakra);
	elseif (action.Name == 'Counterstance') then
		gFunc.EquipSet(sets.counterstance);
	elseif (action.Name == 'Perfect Counter') then
		gFunc.EquipSet(sets.perfectcounter);
	elseif (action.Name == 'Impetus') then
		gFunc.EquipSet(sets.impetus);
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
		gFunc.Equip('Neck', 'Incanter\'s Torque');
	end		
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	local env = gData.GetEnvironment();
	local action = gData.GetAction();
	local level = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
	
	if (level == 99) then
		if string.match(action.Name, 'Victory Smite') then
			gFunc.EquipSet(sets.critws);
		elseif string.match(action.Name, ' Kick') then 
			gFunc.EquipSet(sets.kickws);
		else
			gFunc.EquipSet(sets.ws);
		end
	end
	if vars.HeroicZones:contains(env.Area) then
		gFunc.Equip('Hands', 'Heidrek Gloves');
	end
end

return profile;