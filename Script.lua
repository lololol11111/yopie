--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--


entered = false;
hasSpell = false;
castSpellLib = false;

function story(aName)
	if(aName == "start") then
		CLS()
		playMusic("waitingmusic.wav")
		setBackground("112.JPG")
		createTextfield("Hallo, Welkom bij de Miljoenenquiz")
		createButton("exit", "Nee donder op")
		createButton("continue", "Maar natuurlijk")

	end
	if(aName == "continue") then
		if(entered == false) then
			playSound("correct.wav")
			entered = true;
		else
			playSound("wrong.wav")
		end
		CLS();
		setBackground("114.JPG");
		createTextfield("Wat is de hoofstad van Australie?.")
		createButton("A", "Canberra");
		createButton("B", "Sydney")
		createButton("B", "Maaskantje")
	end
	if(aName == "A") then
		playSound("correct.wav")
		CLS();
		setBackground("115.jpg")
		createTextfield("Welke kleur heeft de laatste letter van het logo van Google?")
		createButton("B", "Groen")
		createButton("goedgoed", "Rood")
		createButton("B", "Blauw")
	end
	if(aName == "B") then
		CLS()
		playSound("wrong.wav")
		setBackground("wronganswer.jpg")
		createButton("start", "Probeer het opnieuw")
	end
	if(aName == "goedgoed") then
		CLS()
		playSound("correct.wav")
		playMusic("waitingmusic.wav")
		setBackground("117.jpg")
		createTextfield("Hoeveel karaat is puur goud?")
		createButton("goed", "24 karaat")
		createButton("B", "18 karaat")
		createButton("B", "42 karaat")
	end
	if(aName == "goed") then
		CLS()
		playSound("correct.wav")
		playMusic("waitingmusic.wav")
		setBackground("116.jpg")
		createTextfield("Hoeveel ogen heeft een dobbelsteen?")
		createButton("doeg", "21")
		createButton("B", "20")
		createButton("B", "22")
	end
	if(aName == "doeg") then
		CLS()
		playSound("correct.wav")
		playMusic("waitingmusic.wav")
		setBackground("120.jpg")
		createTextfield("Hoeveel maanden tellen 28 dagen?")
		createButton("B", "4")
		createButton("B", "1")
		createButton("go", "Allemaal")
	end
	if(aName == "go") then
		CLS()
		playSound("correct.wav")
		playMusic("waitingmusic.wav")
		setBackground("121.jpg")
		createTextfield("Waar is iemand met claustrofobie bang voor?")
		createButton("B", "Vrouwen boven de 60")
		createButton("Yalla", "Kleine ruimtes")
		createButton("B", "Marteling")
	end
	if(aName == "Yalla") then
		CLS()
		playSound("correct.wav")
		playMusic("waitingmusic.wav")
		setBackground("122.jpg")
		createTextfield("Wat word er gedoeld met een huis van bewaring?")
		createButton("B", "Een grote geldkluis")
		createButton("B", "Een kinderopvang")
		createButton("volgende", "Een gevangenis")
	end
	if(aName == "volgende") then
		CLS()
		playSound("correct.wav")
		playMusic("waitingmusic.wav")
		setBackground("114.jpg")
		createTextfield("Voor hoeveel procent bestaat een menselijk lichaam uit water?")
		createButton("B", "67%")
		createButton("good", "70%")
		createButton("B", "78%")
	end
	if(aName == "good") then
		CLS()
		playSound("correct.wav")
		playMusic("waitingmusic.wav")
		setBackground("116.jpg")
		createTextfield("Welke kleur heeft zuurtstofarm bloed?")
		createButton("B", "Geel")
		createButton("B", "Rood")
		createButton("juist", "Blauw")
	end
	if(aName == "juist") then
		CLS()
		playSound("correct.wav")
		playSound("winner.wav")
		setBackground("winner1.jpg")
		createTextfield("Gefeliciteerd, je hebt de quiz gehaald!")
		createButton("exitGame", "Verlaat")
	end
	if(aName == "exitGame") then
	exitGame()
	end
end

