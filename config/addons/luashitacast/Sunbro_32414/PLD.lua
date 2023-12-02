local profile = {};

local vars = gFunc.LoadFile('common/vars.lua');

local sets = {
    ['tp'] = {
        Ammo = 'Crepuscular Pebble',
        Head = { Name = 'Flam. Zucchetto +2', Augment = '"Triple Atk."+8' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Dagon Breast.', Augment = 'Crit. hit damage +16%' },
        Hands = { Name = 'Hervor Mouffles', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Ring1 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Ring2 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = { Name = 'Hervor Sollerets', Augment = '"Triple Atk."+16' },
    },
    ['shield'] = {
        Main = 'Burtgang',
        Sub = 'Voluspa Shield',
    },
    ['dualwield'] = {
        Main = 'Almace',
		Sub = 'Reikiko',
    },
	['gs'] = {
		Main = 'Caladbolg',
		Sub = 'Uther\'s Grip',
	},
    ['ws'] = {
        Ammo = { Name = 'Crepuscular Pebble', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Flam. Zucchetto +2', Augment = '"Triple Atk."+8' },
        Neck = { Name = 'Fotia Gorget', Augment = '"Triple Atk."+16' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'M. Slime Earring', Augment = { [1] = 'Weapon skill damage +5%', [2] = 'Occ. quickens spellcasting +4%', [3] = 'Sklchn.dmg.+4%', [4] = 'Magic crit. hit rate +8' } },
        Body = { Name = 'Nzingha Cuirass', Augment = '"Triple Atk."+8' },
        Hands = { Name = 'Hervor Mouffles', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Ring1 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Ring2 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +9%', [2] = 'Accuracy+10', [3] = 'Mag. Evasion+1', [4] = 'Attack+10', [5] = 'Evasion+1' } },
        Back = { Name = 'Bleating Mantle', Augment = '"Triple Atk."+12' },
        Waist = { Name = 'Fotia Belt', Augment = 'DMG:+32' },
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = { Name = 'Hervor Sollerets', Augment = '"Triple Atk."+16' },
    },
    ['critws'] = {
        Ammo = { Name = 'Aumoniere +1', Augment = { [1] = '"Dual Wield"+4', [2] = '"Triple Atk."+4', [3] = 'Eva.+10', [4] = 'Mag. Eva.+10', [5] = 'Crit. hit damage +5%' } },
        Head = { Name = 'Flam. Zucchetto +2', Augment = '"Triple Atk."+8' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'M. Slime Earring', Augment = { [1] = 'Weapon skill damage +5%', [2] = 'Occ. quickens spellcasting +4%', [3] = 'Sklchn.dmg.+4%', [4] = 'Magic crit. hit rate +8' } },
        Body = { Name = 'Dagon Breast.', Augment = 'Crit. hit damage +16%' },
        Hands = { Name = 'Flam. Manopolas +2', Augment = 'Crit.hit rate+20' },
        Ring1 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+16' },
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = { Name = 'Hervor Sollerets', Augment = '"Triple Atk."+16' },
    },
	['mab'] = {
        Ammo = { Name = 'Pemphredo Tathlum', Augment = 'Mag. crit. hit dmg. +24%' },
        Head = { Name = 'Volte Cap', Augment = '"Counter"+40' },
        Neck = { Name = 'Nefarious Collar', Augment = 'Magic crit. hit rate +40' },
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
    ['rampart'] = {
        Head = 'Cab. Coronet +2',
    },
    ['shieldbash'] = {
		Sub = 'Aegis',
        Hands = 'Cab. Gauntlets +3',
    },
    ['sentinel'] = {
        Feet = 'Cab. Leggings +3',
    },
    ['cure'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Souv. Schaller +1', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Enh. Mag. eff. dur. +20', [3] = 'Chance of successful block +10', [4] = 'Enmity+15' } },
        Neck = { Name = 'Phalaina Locket', Augment = '"Cure" potency +16%' },
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Beatific Earring',
        Body = { Name = 'Souv. Cuirass +1', Augment = { [1] = 'MND+15', [2] = 'VIT+15', [3] = 'Potency of "Cure" effect received+10%', [4] = 'Enmity+5' } },
        Hands = 'Macabre Gaunt. +1',
        Ring1 = 'Lebeche Ring',
        Ring2 = { Name = 'Stikini Ring +1', Augment = 'Enha.mag. skill +16' },
        Back = { Name = 'Solemnity Cape', Augment = '"Cure" potency +16%' },
        Waist = 'Chuq\'aba Belt',
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = { Name = 'Souveran Schuhs +1', Augment = { [1] = 'Phys. dmg. taken -5%', [2] = 'VIT+20', [3] = 'Accuracy+20', [4] = 'Eva.+20', [5] = 'Attack+20', [6] = 'Mag. Eva.+20' } },
    },
    ['enmity'] = {
        Ammo = { Name = 'Sapience Orb', Augment = 'Blue Magic skill +20' },
        Head = { Name = 'Souv. Schaller +1', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Enh. Mag. eff. dur. +20', [3] = 'Chance of successful block +10', [4] = 'Enmity+15' } },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Body = { Name = 'Souv. Cuirass +1', Augment = { [1] = 'MND+15', [2] = 'VIT+15', [3] = 'Potency of "Cure" effect received+10%', [4] = 'Enmity+5' } },
        Hands = 'Cab. Gauntlets +3',
        Ring1 = 'Petrov Ring',
        Ring2 = { Name = 'Apeile Ring +1', Augment = 'Enmity+40' },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = 'Brontes Cuisses',
        Feet = 'Cab. Leggings +3',
    },
	['nexus'] = {
		Back = 'Nexus Cape',
	},
    ['cast'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Souv. Schaller +1', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Enh. Mag. eff. dur. +20', [3] = 'Chance of successful block +10', [4] = 'Enmity+15' } },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Souv. Cuirass +1', Augment = { [1] = 'MND+15', [2] = 'VIT+15', [3] = 'Potency of "Cure" effect received+10%', [4] = 'Enmity+5' } },
        Hands = { Name = 'Souv. Handsch. +1', Augment = { [1] = 'Enemy crit. hit rate -8', [2] = 'Accuracy+20', [3] = 'HP+100', [4] = 'Attack+20', [5] = 'STR+15' } },
        Ring1 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Souv. Diechlings +1', Augment = { [1] = '"Resist Charm"+10', [2] = 'Phalanx +30', [3] = 'DEF+20', [4] = '"Shield Mastery"+10' } },
        Feet = { Name = 'Souveran Schuhs +1', Augment = { [1] = 'Phys. dmg. taken -5%', [2] = 'VIT+20', [3] = 'Accuracy+20', [4] = 'Mag. Evasion+20', [5] = 'Attack+20', [6] = 'Evasion+20' } },
    },
    ['town'] = {
        Ammo = { Name = 'Crepuscular Pebble', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Souv. Schaller +1', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Enh. Mag. eff. dur. +20', [3] = 'Chance of successful block +10', [4] = 'Enmity+15' } },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Ishvara Earring', Augment = '"Triple Atk."+8' },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Souv. Cuirass +1', Augment = { [1] = 'MND+15', [2] = 'VIT+15', [3] = 'Potency of "Cure" effect received+10%', [4] = 'Enmity+5' } },
        Hands = { Name = 'Souv. Handsch. +1', Augment = { [1] = 'Enemy crit. hit rate -8', [2] = 'Accuracy+20', [3] = 'HP+100', [4] = 'Attack+20', [5] = 'STR+15' } },
        Ring1 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Ring2 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Carmine Cuisses +1', Augment = { [1] = 'Magic Damage+15', [2] = 'Elem. magic skill +20', [3] = '"Mag. Atk. Bns."+18', [4] = 'Mag. Acc.+15' } },
        Feet = { Name = 'Souveran Schuhs +1', Augment = { [1] = 'Phys. dmg. taken -5%', [2] = 'VIT+20', [3] = 'Accuracy+20', [4] = 'Mag. Evasion+20', [5] = 'Attack+20', [6] = 'Evasion+20' } },
    },
    ['heroictp'] = {
        Ammo = 'Crepuscular Pebble',
        Head = { Name = 'Flam. Zucchetto +2', Augment = '"Triple Atk."+8' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Hervor Haubert', Augment = '"Regen"+80' },
        Hands = { Name = 'Hervor Mouffles', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Ring1 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Ring2 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Flamma Dirs +2', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Feet = { Name = 'Flam. Gambieras +2', Augment = 'Crit. hit damage +12%' },
    },
    ['dt'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Souv. Schaller +1', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Enh. Mag. eff. dur. +20', [3] = 'Chance of successful block +10', [4] = 'Enmity+15' } },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Souv. Cuirass +1', Augment = { [1] = 'MND+15', [2] = 'VIT+15', [3] = 'Potency of "Cure" effect received+10%', [4] = 'Enmity+5' } },
        Hands = { Name = 'Souv. Handsch. +1', Augment = { [1] = 'Enemy crit. hit rate -8', [2] = 'Accuracy+20', [3] = 'HP+100', [4] = 'Attack+20', [5] = 'STR+15' } },
        Ring1 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Souv. Diechlings +1', Augment = { [1] = '"Resist Charm"+10', [2] = 'Phalanx +30', [3] = 'DEF+20', [4] = '"Shield Mastery"+10' } },
        Feet = { Name = 'Souveran Schuhs +1', Augment = { [1] = 'Phys. dmg. taken -5%', [2] = 'VIT+20', [3] = 'Accuracy+20', [4] = 'Mag. Evasion+20', [5] = 'Attack+20', [6] = 'Evasion+20' } },
    },
    ['heroicdtengaged'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Souv. Schaller +1', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Enh. Mag. eff. dur. +20', [3] = 'Chance of successful block +10', [4] = 'Enmity+15' } },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Hervor Haubert', Augment = '"Regen"+80' },
        Hands = { Name = 'Volte Bracers', Augment = '"Counter"+40' },
        Ring1 = { Name = 'Warden\'s Ring', Augment = 'Parrying rate+24%' },
        Ring2 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Volte Hose', Augment = 'Parrying rate+24%' },
        Feet = { Name = 'Volte Boots', Augment = 'Parrying rate+24%' },
    },
    ['heroicdt'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Souv. Schaller +1', Augment = { [1] = 'Weapon skill damage +8%', [2] = 'Enh. Mag. eff. dur. +20', [3] = 'Chance of successful block +10', [4] = 'Enmity+15' } },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Souv. Cuirass +1', Augment = { [1] = 'MND+15', [2] = 'VIT+15', [3] = 'Potency of "Cure" effect received+10%', [4] = 'Enmity+5' } },
        Hands = { Name = 'Souv. Handsch. +1', Augment = { [1] = 'Enemy crit. hit rate -8', [2] = 'Accuracy+20', [3] = 'HP+100', [4] = 'Attack+20', [5] = 'STR+15' } },
        Ring1 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Souv. Diechlings +1', Augment = { [1] = '"Resist Charm"+10', [2] = 'Phalanx +30', [3] = 'DEF+20', [4] = '"Shield Mastery"+10' } },
        Feet = { Name = 'Souveran Schuhs +1', Augment = { [1] = 'Phys. dmg. taken -5%', [2] = 'VIT+20', [3] = 'Accuracy+20', [4] = 'Eva.+20', [5] = 'Attack+20', [6] = 'Mag. Eva.+20' } },
    },
};
profile.Sets = sets;

local Settings = {
	Set = 'dt',
	WeaponSet = 'shield',
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	
	(function()
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^l /ac fwd useswordshield');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^k /ac fwd usegs');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind end /ac fwd bash');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F11 /exec init/pld');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F5 /ac fwd tpset tp');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F6 /ac fwd tpset dt');
		
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 11');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
		AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 11');
	end):once(1);
	
end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind ^l');
end

profile.HandleCommand = function(args)
	if (args[1] == 'useswordshield') then
		AshitaCore:GetChatManager():QueueCommand(1, '/tb palette change base');
		AshitaCore:GetChatManager():QueueCommand(1, '/bind del //urielblade');
		AshitaCore:GetChatManager():QueueCommand(1, '/bind !del //gloryslash');
		if string.match(Settings.WeaponSet, 'shield') then
			AshitaCore:GetChatManager():QueueCommand(1, '/bs setn 2 "molting plumage"');
			Settings.WeaponSet = 'dualwield';
		else 
			AshitaCore:GetChatManager():QueueCommand(1, '/bs setn 2 "rail cannon"');
			Settings.WeaponSet = 'shield';
		end
	elseif (args[1] == 'usegs') then
		AshitaCore:GetChatManager():QueueCommand(1, '/tb palette change gs');
		AshitaCore:GetChatManager():QueueCommand(1, '/bs setn 2 "rail cannon"');
		AshitaCore:GetChatManager():QueueCommand(1, '/bind del //shockwave');
		Settings.WeaponSet = 'gs';
	elseif (args[1] == 'tpset') then
		Settings.Set = args[2];
	end
end

profile.HandleDefault = function()
	local player = gData.GetPlayer();
	local env = gData.GetEnvironment();
	
	gFunc.EquipSet(Settings.WeaponSet);
	
	if vars.Cities:contains(env.Area) then
		gFunc.EquipSet(sets.town);
	else 
		if (Settings.Set == 'dt') then 
			if vars.HeroicZones:contains(env.Area) then
				if (player.Status == 'Engaged') then
					gFunc.EquipSet('heroic' .. Settings.Set .. 'engaged');
				else
					gFunc.EquipSet(sets.heroicdt);
				end
			else 
				gFunc.EquipSet(Settings.Set);
			end
		else 
			gFunc.EquipSet(Settings.Set);
		end
		
		if (gData.GetBuffCount('Doom') == 1) then
			gFunc.Equip('Ring2', 'Purity Ring');
		end
	end
	if (player.IsMoving and not (player.Status == 'Engaged')) then 
		gFunc.Equip('Legs', 'Carmine Cuisses +1');
		gFunc.Equip('Ring2', 'Shneddick Ring');
	end
	if (player.HPP < 75) then 
		gFunc.EquipSet(vars.Regen);
	end
end

profile.HandleAbility = function()
	local action = gData.GetAction();
	
	if (action.Name == 'Shield Bash') then
		gFunc.EquipSet('shieldbash');
	elseif (action.Name == 'Sentinel') then
		gFunc.EquipSet('sentinel');
	elseif (action.Name == 'Rampart') then
		gFunc.EquipSet('rampart');
	elseif (action.Name == 'Provoke') then
		gFunc.EquipSet('enmity');
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
	gFunc.Equip('Neck', 'Incanter\'s Torque');
	
	if (action.Skill == 'Healing Magic') then
		if string.match(action.Name, 'Cure ') then 
			gFunc.EquipSet(gFunc.Combine(sets.cast, sets.cure));
		else
			gFunc.EquipSet(sets.cast);
		end
	elseif (action.Skill == 'Blue Magic') then
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
	elseif (action.Skill == 'Divine Magic') then
		if string.match(action.Name, 'Enlight') then
			gFunc.EquipSet(vars.Enspell);
		elseif string.match(action.Name, 'Flash') then
			gFunc.EquipSet(gFunc.Combine(sets.cast, sets.enmity));
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
	local action = gData.GetAction();
	
	if string.match(action.Name, 'Chant du Cygne') then
		gFunc.EquipSet(sets.critws);
	else
		gFunc.EquipSet(sets.ws);
	end
end

return profile;