if SERVER then

	print("[DN PropHunt Taunts] Loaded version 0.2.0")

	local function removeTaunt(targetTauntPath)
		for index, taunt in pairs(table.Copy(GAMEMODE.Hunter_Taunts)) do
			if taunt[2] == targetTauntPath then
			print("[DN PropHunt Taunts] Replaced hunter taunt " .. targetTauntPath)
				table.remove(GAMEMODE.Hunter_Taunts, index)
				break
			end
		end
		for index, taunt in pairs(table.Copy(GAMEMODE.Prop_Taunts)) do
			if taunt[2] == targetTauntPath then
				print("[DN PropHunt Taunts] Replaced prop taunt " .. targetTauntPath)
				table.remove(GAMEMODE.Prop_Taunts, index)
				break
			end
		end
	end

	hook.Add("ph_AddTaunts", "dreamnetwork_taunts", function()

		-- Delete taunts that will be replaced by ours (quality replacement)
		removeTaunt("taunts/doh.wav") -- Simpsons D'oh
		removeTaunt("taunts/hunters/illfindyou.mp3") -- I will find you and I will kill you
		removeTaunt("taunts/boom_headshot.wav") -- Boom, Headshot!
		removeTaunt("taunts/props/1.wav") -- Boom, Headshot!
		removeTaunt("taunts/props/2.wav") -- Simpsons D'oh
		removeTaunt("taunts/props/13.mp3") -- I need chippie for my bongo hole
		removeTaunt("taunts/props/15.wav") -- Snooping as usual, I see
		removeTaunt("taunts/props/33.mp3") -- Music - Call on me
		removeTaunt("taunts/fixed/bees_fix.wav") -- Not the bees!
		removeTaunt("taunts/fixed/13_fix.wav") -- I need chippie for my bongo hole

		-- Hunter taunts
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/dn0001.ogg", "ASDFMovie - Look at my new camera" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih0001.mp3", "Blue's Clues - We are gonna play Blue's Clues" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/dn0002.ogg", "Call of Duty - Sniper" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih0003b.mp3", "Music - What is love" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih0002.mp3", "Music - Woo Hoo!" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih000C.mp3", "Scary Movie - Run, bitch, RUN!" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih0008a.mp3", "Some Guy Yells At Cats - GET THE FUCK OUTSIDE!" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih0006a.mp3", "Some Guy Yells At Cats - I'LL END YOU!" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih000Aa.mp3", "Some Guy Yells At Cats - I'M GOING TO RAPE YOU!" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih0009a.mp3", "Some Guy Yells At Cats - RUN!" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih000Ba.mp3", "Some Guy Yells At Cats - RUN, FUCKIN RUN!" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih0007a.mp3", "Some Guy Yells At Cats - WHERE'D YOU FUCKIN GO!?" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih000D.mp3", "Taken - I will find you, and I will kill you" })
		table.insert(GAMEMODE.Hunter_Taunts, { "taunts/dreamnetwork/hunters/ih0004.mp3", "Thriller laugh" })

		-- Prop taunts
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0038.ogg", "Airhorn" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0032.ogg", "ASDFMovie - Do you like my new shoes?" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0005.ogg", "ASDFMovie - Everybody do the flop" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn000D.ogg", "ASDFMovie - I have no idea how to breathe" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn002B.ogg", "ASDFMovie - I like trains" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0028.ogg", "ASDFMovie - I'm a very tall midget" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn001E.ogg", "ASDFMovie - I'm going to punch your face" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0012.ogg", "ASDFMovie - Knock knock" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn000B.ogg", "ASDFMovie - Mineturtle - Hello" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0015.ogg", "ASDFMovie - Mineturtle - Hello... oh." })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0027.ogg", "ASDFMovie - Muffin - Somebody kill me!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn002D.ogg", "ASDFMovie - Muffin - Why won't you let me die!?" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn001A.ogg", "ASDFMovie - Oh, okay" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0019.ogg", "ASDFMovie - Oh." })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0020.ogg", "ASDFMovie - Quick, shoot me in the face!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn001B.ogg", "ASDFMovie - There's something on your face" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0033.ogg", "ASDFMovie - Wanna play catch the knife?" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn002F.ogg", "ASDFMovie - You two should kiss" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn002A.ogg", "ASDFMovie - You'll never take me alive!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0036.ogg", "Baby sounds" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0035.ogg", "Boom headshot!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0030.mp3", "Bow chicka wow wow" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0030.ogg", "CSI - YEAAAAAAAAAH" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0006.ogg", "Do you suck dicks?" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0032.mp3", "Drumroll" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih004A.mp3", "Dumb And Dumber - The most annoying sound in the world" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0033.mp3", "Ehuhuhuuu" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih004D.mp3", "Farts" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih003B.mp3", "Geh wo du wohnst, du Scheisse!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0009.ogg", "GTA5 - Death sound" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn000A.ogg", "Community - Hah, gay!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0031.mp3", "Hide yo kids, hide yo wife" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0013.ogg", "HIMYM - It's gonna be legendary!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0048.mp3", "I like turtles" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih000D.mp3", "I need chippie for my bonga hole" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih002D.mp3", "Imma firin mah lazor!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0024.mp3", "It owns!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0010.ogg", "Jesus, man!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0014.ogg", "Macklemore - Gay" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0031.ogg", "Madagascar - Circus Afro" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0034a.ogg", "Me gusta" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih002E.mp3", "Monkeys" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0037.mp3", "Music - Ayylmao.mp3" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0034.ogg", "Music - Busta Tank" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0021.mp3", "Music - Call on me" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0044.mp3", "Music - Can't touch this" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih001E.mp3", "Music - Chacarron Macarron" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih004B.ogg", "Music - Everybody dance now!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0005.mp3", "Music - Friday" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0041.mp3", "Music - Funny" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0007.ogg", "Music - Gangnam style" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn000C.ogg", "Music - HEYYEEYYEYEY!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0022.mp3", "Music - I am the one and only!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn000E.ogg", "Music - I like to move it" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0052.mp3", "Music - I'm horneh" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0049.mp3", "Music - I'm so fresh you can suck my nuts" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih004E.mp3", "Music - Interior crocodile aligator" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0043.ogg", "Music - Mana mana" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0016.ogg", "Music - Mom's spaghetti" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn001C.ogg", "Music - Pizzabellstep" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn001D.ogg", "Music - Pryda snare" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0021.mp3", "Music - Rock me Mom's spaghetti" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih001D.mp3", "Music - Running in the 90s" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0022.ogg", "Music - Sandstorm" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0045.ogg", "Music - Scat man 1" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0046.ogg", "Music - Scat man 2" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih002C.mp3", "Music - Schnappi Schnappi Schnapp" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0047.mp3", "Music - Stop, hammer time!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih004C.mp3", "Music - That's the way I like it" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn000F.ogg", "Music - The hobbits to Isengard" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0029.ogg", "Music - Tired" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0025.mp3", "Music - Trolololol" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih003D.mp3", "Music - What does the fox say? - Ding ding" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih003F.mp3", "Music - What does the fox say? - Hatee ho" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih003E.mp3", "Music - What does the fox say? - Wa pow" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0040.mp3", "Music - What does the fox say? - Yutuw tuw" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0026.mp3", "Music - What what what" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0051.mp3", "Music - You touched my tralala" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0039.mp3", "Nicht an meine Wand sprühen!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0018.ogg", "No, this is Patrick!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0029.mp3", "Not the bees!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih000C.mp3", "Nyo nyo nyo" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0053.mp3", "Oh c'mon" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0006.mp3", "Over 9000" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih003A.mp3", "Raus hier, sofort!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0054.mp3", "Say whaaaaaaaa" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0002.ogg", "Simpsons - D'oh! - 1" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0003.ogg", "Simpsons - D'oh! - 2" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0004.ogg", "Simpsons - D'oh! - 3" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0035a.mp3", "Some Guy Yells At Cats - DO IT, YOU FUCKING PUSSY!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0037a.mp3", "Some Guy Yells At Cats - DON'T FUCKING STARE AT ME!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0036a.mp3", "Some Guy Yells At Cats - WHAT THE FUCK ARE YOU LOOKING AT!?" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0027.mp3", "Something serious is coming up" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0008.ogg", "Sonic - Gotta go fast" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0023.ogg", "Sonic - Sanic theme" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0026.ogg", "Sonic - Snooping as usual" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0009.mp3", "Sparta" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih002F.mp3", "Squirrel" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih002B.mp3", "STARTE DAS SPIEL DU HURENSOHN" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih002A.mp3", "The Office - NO GOD! PLEASE NO!!! NOOOOOOOOOO" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0001.mp3", "TF2 - Entire team is babies" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0002.mp3", "TF2 - Nomnom" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0017.mp3", "TF2 - Nope" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn001F.mp3", "TF2 - Pyro laugh" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih0028.mp3", "Throwing up" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/ih003C.mp3", "Verschwinde oder meine Frau ruft Polizei!" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn0011.ogg", "Vinesauce - Who's been drawing dicks!?" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn002C.ogg", "White noise" })
		table.insert(GAMEMODE.Prop_Taunts, { "taunts/dreamnetwork/props/dn002E.ogg", "You are an idiot" })

	end )
end