//fade out trigger
if position_meeting(mouse_x,mouse_y, TestHouseButton) and mouse_check_button(mb_left) and fadeOutInProcess == false
{
	fadeOutInProcess = true
	global.chosenValue = 1
}

if fadeOutInProcess == true and BackgroundArtObj.image_alpha > 0 and global.ImageLoading == false
{
	fadeImage()
	global.ImageLoading = false
}

if BackgroundArtObj.image_alpha >= 1
{	
	fadeOutInProcess = false
}


//fade out function
function fadeImage()
{
	BackgroundArtObj.image_alpha -= fadeMultiplierConstant
}