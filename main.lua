-- Title: TouchAndReact
-- Name: Valeria V
-- Course: ICS2O
-- This program displas a buton that when I click on it turns color and displays text and another object.

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--set the background
local background = display.setDefault("background",245/255, 203/255, 167/255 )

--create blue button, set its possition and make it visible\
local blueButton = display.newimageRect("Images/Fast Button Inactive.png",198,96)
blueButon.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

--create red button