-- Title: TouchAndReact
-- Name: Valeria V
-- Course: ICS2O
-- This program displas a buton that when I click on it turns color and displays text and another object.

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--set the background
local background = display.setDefault("background", 209/255, 242/255, 235/255)
--create blue button, set its possition and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive.png",198,96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

--create red button,set its possition and make sure it's invisible
local redButton = display.newImageRect("Images/Fast Button Active.png",198,96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

--create text object, set its position and make it visible
local inactiveText = display.newText("!Click this button!", 0,0,nil,50)
inactiveText.x = display.contentWidth/2
inactiveText.y = display.contentHeight/3
inactiveText:setFillColor(154/255, 125/255, 10/255)
inactiveText.isVisible = true

--create text object, set its possition and make it inivisible
local activeText = display.newText("You clicked me",0,0,nil,50)
activeText.x = display.contentWidth/2
activeText.y = display.contentHeight/3
activeText:setTextColor( 186/255, 74/255, 0/255 )
activeText.isVisible = false

--create the image,set its possition and make sure that it's invisible
local checkmark = display.newImageRect("Images/checkmark.png",150,150)
checkmark.x = display.contentWidth/2
checkmark.y = display.contentHeight/1.4
checkmark.isVisible = false

--create the image, set its possition and make it visible
local cross = display.newImageRect("Images/cross.png",150,150)
cross.x = display.contentWidth/2
cross.y = display.contentHeight/1.4
cross.isVisible = true

--create the sound
local inactiveSound = audio.loadStream("Sounds/Wrong Buzzer Sound Effect.mp3")
--create the sound
local activeSound = audio.loadStream("Sounds/Correct Answer Sound Effect.mp3")

--Function:BlueButtonListener
--Input: touch listener
--Output: none
--Description: when blue button is clicked, it will make the text appear with the red button,
--and make the blue button dissapear
local function BlueButtonListener( touch )
	if (touch.phase=="began")then
		blueButton.isVisible = false
		inactiveText.isVisible = false
		cross.isVisible = false
		redButton.isVisible = true
		activeText.isVisible = true
		checkmark.isVisible = true
		audio.play(inactiveSound)
	end

	if (touch.phase=="ended")then
		blueButton.isVisible = true
		inactiveText.isVisible = true
		cross.isVisible = true
		redButton.isVisible = false
		activeText.isVisible = false
		checkmark.isVisible = false
	end
end

--add the listener to the object
blueButton:addEventListener("touch",BlueButtonListener)


--Function:RedButtonListener
--Input:touch the red button
--Output:none
--Description:when the red button is pressed, it and the its text dissapear, and the blue button appears
local function RedButtonListener( touch )
	if(touch.phase == "began")then
		blueButton.isVisible = true
		inactiveText.isVisible = true
		cross.isVisible = true
		redButton.isVisible = false
		activeText.isVisible = false
		checkmark.isVisible = false
		audio.play(activeSound)
	end

	if(touch.phase =="ended")then
	    blueButton.isVisible = false
		inactiveText.isVisible = false
		cross.isVisible = false
		redButton.isVisible = true
		activeText.isVisible = true
		checkmark.isVisible = true
	end	
end
--add the listener to the object
 redButton:addEventListener("touch",RedButtonListener)