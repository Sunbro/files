local profile = {};

local vars = gFunc.LoadFile('common/vars.lua');

local sets = {
    ['tp'] = {
        Ammo = { Name = 'Crepuscular Pebble', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Hachiya Hatsu. +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Body = { Name = 'Enforcer\'s Harness', Augment = 'Crit.hit rate+32' },
        Hands = { Name = 'Volte Bracers', Augment = '"Counter"+40' },
        Ring1 = { Name = 'Warden\'s Ring', Augment = 'Parrying rate+24%' },
        Ring2 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+16' },
        Legs = { Name = 'Volte Hose', Augment = 'Parrying rate+24%' },
        Feet = { Name = 'Malignance Boots', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
    },
    ['critws'] = {
        Ammo = { Name = 'Yetshila +1', Augment = 'Crit. hit damage +16%' },
        Head = { Name = 'Hachiya Hatsu. +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'Odr Earring', Augment = 'Crit. hit damage +16%' },
        Body = { Name = 'Enforcer\'s Harness', Augment = 'Crit.hit rate+32' },
        Hands = { Name = 'Ryuo Tekko +1', Augment = { [1] = 'Weapon Skill Acc.+10', [2] = '"Subtle Blow"+10', [3] = '"Triple Atk."+8', [4] = 'Mag. Evasion+20', [5] = '"Store TP"+10', [6] = 'Evasion+20' } },
        Ring1 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Bleating Mantle', Augment = '"Triple Atk."+12' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+16' },
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Heidrek Boots', Augment = '"Triple Atk."+16' },
    },
    ['ws'] = {
        Ammo = 'Crepuscular Pebble',
        Head = { Name = 'Hachiya Hatsu. +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Fotia Gorget', Augment = '"Triple Atk."+16' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'M. Slime Earring', Augment = { [1] = 'Weapon skill damage +5%', [2] = 'Occ. quickens spellcasting +4%', [3] = 'Sklchn.dmg.+4%', [4] = 'Magic crit. hit rate +8' } },
        Body = { Name = 'Hiza. Haramaki +2', Augment = '"Triple Atk."+8' },
        Hands = { Name = 'Heidrek Gloves', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Ring1 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +9%', [2] = 'Accuracy+10', [3] = 'Mag. Evasion+1', [4] = 'Attack+10', [5] = 'Evasion+1' } },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Bleating Mantle', Augment = '"Triple Atk."+12' },
        Waist = { Name = 'Fotia Belt', Augment = 'DMG:+32' },
        Legs = { Name = 'Hiza. Hizayoroi +2', Augment = '"Triple Atk."+8' },
        Feet = { Name = 'Heidrek Boots', Augment = '"Triple Atk."+16' },
    },
    ['mab'] = {
        Ammo = { Name = 'Pemphredo Tathlum', Augment = 'Mag. crit. hit dmg. +24%' },
        Head = { Name = 'Mochi. Hatsuburi +3', Augment = {  } },
        Neck = { Name = 'Nefarious Collar', Augment = 'Magic crit. hit rate +40' },
        Ear1 = { Name = 'Friomisi Earring', Augment = {  } },
        Ear2 = { Name = 'Choleric Earring', Augment = { [1] = 'Magic crit. hit rate +10', [2] = 'Mag. crit. hit dmg. +18%' } },
        Body = { Name = 'Gyve Doublet', Augment = {  } },
        Hands = { Name = 'Volte Bracers', Augment = '"Counter"+40' },
        Ring1 = { Name = 'Shiva Ring +1', Augment = 'Magic crit. hit rate +40' },
        Ring2 = { Name = 'Shiva Ring +1', Augment = 'Mag. crit. hit dmg. +18%' },
        Back = { Name = 'Toro Cape', Augment = 'INT+32' },
        Waist = { Name = 'Eschan Stone', Augment = {  } },
        Legs = { Name = 'Gyve Trousers', Augment = 'Mag. crit. hit dmg. +24%' },
        Feet = { Name = 'Hachiya Kyahan +3', Augment = { [1] = 'Magic Damage +96', [2] = 'Mag. Acc+96' } },
    },
    ['utsusemi'] = {
        Neck = { Name = 'Henic Torque', Augment = '"Ninja tool expertise"+8' },
        Hands = { Name = 'Mochizuki Tekko +3', Augment = '"Ninja tool expertise"+8' },
        Back = 'Andartia\'s Mantle',
        Feet = 'Hattori Kyahan +1',
    },
	['nexus'] = {
		Back = 'Nexus Cape',
	},
    ['cast'] = {
        Ammo = { Name = 'Sapience Orb', Augment = 'Blue Magic skill +20' },
        Head = { Name = 'Volte Cap', Augment = 'Parrying rate+24%' },
        Neck = { Name = 'Voltsurge Torque', Augment = '"Fast Cast"+32' },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Body = { Name = 'Heidrek Harness', Augment = '"Regen"+80' },
        Hands = { Name = 'Mochizuki Tekko +3', Augment = '"Ninja tool expertise"+8' },
        Ring1 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Prolix Ring', Augment = '"Fast Cast"+64' },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = 'Tempus Fugit',
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Malignance Boots', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
    },
    ['ninmab'] = {
        Ammo = { Name = 'Pemphredo Tathlum', Augment = 'Mag. crit. hit dmg. +24%' },
        Head = { Name = 'Mochi. Hatsuburi +3', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
        Neck = { Name = 'Nefarious Collar', Augment = 'Magic crit. hit rate +40' },
        Ear1 = { Name = 'Choleric Earring', Augment = { [1] = 'Magic crit. hit rate +10', [2] = 'Mag. crit. hit dmg. +18%' } },
        Ear2 = { Name = 'Crematio Earring', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
        Body = { Name = 'Gyve Doublet', Augment = {  } },
        Hands = { Name = 'Hattori Tekko +1', Augment = 'Magic burst dmg.+40%' },
        Ring1 = { Name = 'Shiva Ring +1', Augment = 'Magic crit. hit rate +40' },
        Ring2 = { Name = 'Shiva Ring +1', Augment = 'Mag. crit. hit dmg. +18%' },
        Back = { Name = 'Aput Mantle +1', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
        Waist = { Name = 'Skrymir Cord', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
        Legs = { Name = 'Gyve Trousers', Augment = 'Mag. crit. hit dmg. +24%' },
        Feet = 'Mochi. Kyahan +3',
    },
    ['town'] = {
        Ammo = { Name = 'Crepuscular Pebble', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Hachiya Hatsu. +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Odr Earring', Augment = 'Crit. hit damage +16%' },
        Ear2 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Body = 'Mes. Haubergeon',
        Hands = { Name = 'Ryuo Tekko +1', Augment = { [1] = 'Weapon Skill Acc.+10', [2] = '"Subtle Blow"+10', [3] = '"Triple Atk."+8', [4] = 'Mag. Evasion+20', [5] = '"Store TP"+10', [6] = 'Evasion+20' } },
        Ring1 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Malignance Boots', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
    },
    ['dt'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Genmei Kabuto', Augment = '"Regen"+80' },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Body = 'Emet Harness',
        Hands = { Name = 'Malignance Gloves', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ring1 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Warden\'s Ring', Augment = 'Parrying rate+24%' },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Malignance Tights', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Feet = { Name = 'Malignance Boots', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
    },
    ['ninjutsu'] = {
        Ammo = 'Yamarang',
        Head = { Name = 'Mochi. Hatsuburi +3', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
        Neck = { Name = 'Henic Torque', Augment = '"Ninja tool expertise"+8' },
        Ear1 = { Name = 'Crematio Earring', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
        Ear2 = { Name = 'Friomisi Earring', Augment = {  } },
        Body = { Name = 'Gyve Doublet', Augment = {  } },
        Hands = { Name = 'Mochizuki Tekko +3', Augment = '"Ninja tool expertise"+8' },
        Ring1 = { Name = 'Stikini Ring +1', Augment = 'Enha.mag. skill +16' },
        Ring2 = { Name = 'Stikini Ring +1', Augment = 'Blue Magic skill +20' },
        Back = { Name = 'Andartia\'s Mantle', Augment = '"Ninja tool expertise"+8' },
        Waist = { Name = 'Eschan Stone', Augment = {  } },
        Legs = { Name = 'Malignance Tights', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Feet = { Name = 'Hachiya Kyahan +3', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
    },
    ['heroictp'] = {
        Ammo = 'Crepuscular Pebble',
        Head = { Name = 'Hachiya Hatsu. +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'Odr Earring', Augment = 'Crit. hit damage +16%' },
        Body = { Name = 'Enforcer\'s Harness', Augment = 'Crit.hit rate+32' },
        Hands = { Name = 'Kobo Kote', Augment = 'Crit. hit damage +16%' },
        Ring1 = { Name = 'Warden\'s Ring', Augment = 'Parrying rate+24%' },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+16' },
        Legs = { Name = 'Heidrek Brais', Augment = '"Triple Atk."+16' },
        Feet = { Name = 'Malignance Boots', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
    },
    ['heroicdt'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Volte Cap', Augment = 'Parrying rate+24%' },
        Neck = { Name = 'Twilight Torque', Augment = '"Regen"+80' },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Body = { Name = 'Heidrek Harness', Augment = '"Regen"+80' },
        Hands = { Name = 'Malignance Gloves', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ring1 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Defending Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Back = { Name = 'Shadow Mantle', Augment = '"Regen"+80' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Malignance Tights', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Feet = { Name = 'Malignance Boots', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
    },
    ['cure'] = {
        Ammo = 'Aqreqaq Bomblet',
        Head = 'Genmei Kabuto',
        Neck = { Name = 'Phalaina Locket', Augment = '"Cure" potency +16%' },
        Ear1 = 'Mendi. Earring',
        Ear2 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Body = { Name = 'Heidrek Harness', Augment = '"Regen"+80' },
        Hands = { Name = 'Kobo Kote', Augment = 'Crit. hit damage +16%' },
        Ring1 = { Name = 'Stikini Ring +1', Augment = 'Enha.mag. skill +16' },
        Ring2 = 'Lebeche Ring',
        Back = { Name = 'Solemnity Cape', Augment = '"Cure" potency +16%' },
        Waist = 'Chuq\'aba Belt',
        Legs = 'Heidrek Brais',
        Feet = { Name = 'Heidrek Boots', Augment = '"Triple Atk."+16' },
    },
    ['heroicws'] = {
        Ammo = { Name = 'Crepuscular Pebble', Augment = '"Triple Atk."+16' },
        Head = { Name = 'Hachiya Hatsu. +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Fotia Gorget', Augment = '"Triple Atk."+16' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = { Name = 'M. Slime Earring', Augment = { [1] = 'Weapon skill damage +5%', [2] = 'Occ. quickens spellcasting +4%', [3] = 'Sklchn.dmg.+4%', [4] = 'Magic crit. hit rate +8' } },
        Body = { Name = 'Hiza. Haramaki +2', Augment = '"Triple Atk."+8' },
        Hands = { Name = 'Heidrek Gloves', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Ring1 = { Name = 'Dark Ring', Augment = { [1] = 'Weapon skill damage +9%', [2] = 'Accuracy+10', [3] = 'Mag. Evasion+1', [4] = 'Attack+10', [5] = 'Evasion+1' } },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Bleating Mantle', Augment = '"Triple Atk."+12' },
        Waist = { Name = 'Metalsinger Belt', Augment = 'STR+32' },
        Legs = { Name = 'Hiza. Hizayoroi +2', Augment = '"Triple Atk."+8' },
        Feet = { Name = 'Heidrek Boots', Augment = '"Triple Atk."+16' },
    },
    ['heroiccritws'] = {
        Ammo = { Name = 'Yetshila +1', Augment = 'Crit. hit damage +16%' },
        Head = { Name = 'Hachiya Hatsu. +3', Augment = '"Triple Atk."+16' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Mache Earring +1', Augment = { [1] = 'Crit. hit damage +8%', [2] = '"Store TP"+30', [3] = '"Subtle Blow"+30' } },
        Ear2 = 'Odr Earring',
        Body = { Name = 'Enforcer\'s Harness', Augment = 'Crit.hit rate+32' },
        Hands = { Name = 'Heidrek Gloves', Augment = { [1] = '"Store TP"+60', [2] = '"Subtle Blow"+60' } },
        Ring1 = { Name = 'Regal Ring', Augment = 'Crit. hit damage +16%' },
        Ring2 = { Name = 'Hetairoi Ring', Augment = '"Triple Atk."+16' },
        Back = { Name = 'Laic Mantle', Augment = 'Crit. hit damage +16%' },
        Waist = { Name = 'Windbuffet Belt +1', Augment = '"Triple Atk."+16' },
        Legs = { Name = 'Jokushu Haidate', Augment = 'Crit.hit rate+32' },
        Feet = { Name = 'Heidrek Boots', Augment = '"Triple Atk."+16' },
    },
    ['macc'] = {
        Ammo = 'Yamarang',
        Head = { Name = 'Mochi. Hatsuburi +3', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
        Neck = { Name = 'Deviant Necklace', Augment = {  } },
        Ear1 = { Name = 'Crematio Earring', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
        Ear2 = { Name = 'Friomisi Earring', Augment = {  } },
        Body = { Name = 'Gyve Doublet', Augment = {  } },
        Hands = { Name = 'Malignance Gloves', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ring1 = { Name = 'Stikini Ring +1', Augment = 'Blue Magic skill +20' },
        Ring2 = { Name = 'Stikini Ring +1', Augment = 'Enha.mag. skill +16' },
        Back = { Name = 'Izdubar Mantle', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
        Waist = { Name = 'Eschan Stone', Augment = {  } },
        Legs = { Name = 'Malignance Tights', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Feet = { Name = 'Hachiya Kyahan +3', Augment = { [1] = 'Magic Damage+96', [2] = 'Mag. Acc.+96' } },
    },
    ['heroicdtengaged'] = {
        Ammo = { Name = 'Staunch Tathlum +1', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Head = { Name = 'Volte Cap', Augment = 'Parrying rate+24%' },
        Neck = { Name = 'Combatant\'s Torque', Augment = 'Crit. hit damage +16%' },
        Ear1 = { Name = 'Hearty Earring', Augment = 'Occ. inc. resist. to stat. ailments +12' },
        Ear2 = { Name = 'Etiolation Earring', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Body = { Name = 'Heidrek Harness', Augment = '"Regen"+80' },
        Hands = { Name = 'Malignance Gloves', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
        Ring1 = { Name = 'Shadow Ring', Augment = { [1] = '"Refresh"+40', [2] = '"Regen"+40' } },
        Ring2 = { Name = 'Warden\'s Ring', Augment = 'Parrying rate+24%' },
        Back = { Name = 'Reiki Cloak', Augment = 'Parrying rate+24%' },
        Waist = { Name = 'Flume Belt +1', Augment = '"Regen"+80' },
        Legs = { Name = 'Heidrek Brais', Augment = '"Triple Atk."+16' },
        Feet = { Name = 'Malignance Boots', Augment = { [1] = 'Mag. Evasion+72', [2] = 'Evasion+72' } },
    },
};
profile.Sets = sets;

local Settings = {
	Set = 'tp',
	Weapons = 'katana',
	Sub = 'katana',
	Heroic = '',
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	
	(function()
        AshitaCore:GetChatManager():QueueCommand(-1, '/bind F11 /exec init/nin');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F5 /ac fwd tpset tp');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind F6 /ac fwd tpset dt');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^l /ac fwd weapon');
		AshitaCore:GetChatManager():QueueCommand(-1, '/bind ^k /ac fwd sub');
		
        AshitaCore:GetChatManager():QueueCommand(-1, '/alias /shihei /exec util/shihei');
        AshitaCore:GetChatManager():QueueCommand(-1, '/alias /bufftools /exec util/bufftools');
        AshitaCore:GetChatManager():QueueCommand(-1, '/alias /debufftools /exec util/debufftools');
        AshitaCore:GetChatManager():QueueCommand(-1, '/alias /mabtools /exec util/mabtools');
		
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 2');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 5');
	end):once(1);
end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/unalias /shihei');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unalias /bufftools');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unalias /debufftools');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unalias /mabtools');
end

local function isDayTime()
  local time = gData.GetEnvironment().Time;
  return time > 6 and time < 18;
end


profile.HandleCommand = function(args)
	if (args[1] == 'tpset') then
		Settings.Set = args[2];
	elseif (args[1] == 'weapon') then
		if string.match(Settings.Weapons, 'katana') then
			Settings.Weapons = 'dagger';
			AshitaCore:GetChatManager():QueueCommand(1, '/tb palette change dagger');
		elseif string.match(Settings.Weapons, 'dagger') then
			Settings.Weapons = 'H2H';
			AshitaCore:GetChatManager():QueueCommand(1, '/tb palette change h2h');
		elseif string.match(Settings.Weapons, 'H2H') then
			Settings.Weapons = 'katana';
			AshitaCore:GetChatManager():QueueCommand(1, '/tb palette change base');
		end
	elseif (args[1] == 'sub') then
		if string.match(Settings.Sub, 'katana') then
			Settings.Sub = 'dagger';
		else 
			Settings.Sub = 'katana';
		end
	end
end

profile.HandleDefault = function()
	local player = gData.GetPlayer();
	local env = gData.GetEnvironment();
	
	if string.match(Settings.Weapons, 'katana') then
		gFunc.Equip('Main', 'Kannagi');
		
		if (Settings.Sub == 'katana') then
			if vars.HeroicZones:contains(env.Area) then
				gFunc.Equip('Sub', 'Voluspa Katana');
			else 
				gFunc.Equip('Sub', 'Kikoku');
			end
		else
			gFunc.Equip('Sub', 'Odium');
		end
	elseif string.match(Settings.Weapons, 'dagger') then
		gFunc.Equip('Main', 'Crepuscular knife');
		gFunc.Equip('Sub', 'Odium');
	else
		gFunc.Equip('Main', 'Calved claws');
	end
	
	if vars.Cities:contains(env.Area) then
		gFunc.EquipSet(sets.town);
	else 
		local hasCopyImages = gData.GetBuffCount('Copy Image (4+)') + 
			gData.GetBuffCount('Copy Image (3)') + 
			gData.GetBuffCount('Copy Image (2)') + 
			gData.GetBuffCount('Copy Image') > 0;
			
		if (not hasCopyImages) then
			if vars.HeroicZones:contains(env.Area) then
				if (player.Status == 'Engaged') then
					gFunc.EquipSet(sets.heroicdtengaged);
				else
					gFunc.EquipSet(sets.heroicdt);
				end
			else 
				gFunc.EquipSet(sets.dt);
			end
		else
			if vars.HeroicZones:contains(env.Area) then
				gFunc.EquipSet('heroic' .. Settings.Set);
			else 
				gFunc.EquipSet(Settings.Set);
			end
		end
		
		if (gData.GetBuffCount('Doom') == 1) then
			gFunc.Equip('Ring2', 'Purity Ring');
		end
	end
	if (player.IsMoving == true and not (player.Status == 'Engaged')) then
		gFunc.Equip('Ring2', 'Shneddick Ring');
		if (not isDayTime()) then
			gFunc.Equip('Feet', 'Hachiya Kyahan +3');
		end
    end
	if (player.HPP < 75) then 
		gFunc.EquipSet(vars.Regen);
	end
end

profile.HandleAbility = function()
	local action = gData.GetAction();
	if (action.Name == 'Futae') then
		gFunc.Equip('Hands', 'Hattori Tekko +1');
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
		elseif (vars.BluBuffs:contains(action.Name)) then
			gFunc.EquipSet(gFunc.Combine(sets.cast, vars.BluSkill));
		elseif (vars.BluDebuffs:contains(action.Name)) then
			gFunc.EquipSet(gFunc.Combine(sets.macc, vars.BluSkill));
		else
			gFunc.EquipSet(sets.cast);
		end
	elseif (action.Skill == 'Ninjutsu') then
		if (vars.NinNukes:contains(action.Name)) then
			gFunc.EquipSet(gFunc.Combine(sets.cast, sets.ninmab));
		elseif (vars.NinDebuffs:contains(action.Name)) then
			gFunc.EquipSet(gFunc.Combine(sets.macc, sets.ninjutsu));
		elseif (vars.NinBuffs:contains(action.Name)) then
			gFunc.EquipSet(gFunc.Combine(sets.cast, sets.ninjutsu));
		elseif string.match(action.Name, 'Utsusemi') then
			gFunc.EquipSet(gFunc.Combine(sets.cast, sets.utsusemi));
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
	if string.match(action.Name, 'Blade: Hi') or string.match(action.Name, 'Blade: Jin') or string.match(action.Name, 'Evisceration')then
		if vars.HeroicZones:contains(env.Area) then
			gFunc.EquipSet(sets.heroiccritws);
		else
			gFunc.EquipSet(sets.critws);
		end
	else
		if vars.HeroicZones:contains(env.Area) then
			gFunc.EquipSet(sets.heroicws);
		else
			gFunc.EquipSet(sets.ws);
		end
	end
end

return profile;