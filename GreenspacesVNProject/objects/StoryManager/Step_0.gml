if BackgroundArtObj.image_alpha <= 0 and global.chosenValue = 1
{
	fadeInInProgress = true
	global.ImageLoading = true
	BackgroundArtObj.sprite_index = east_austin_house
}

if BackgroundArtObj.image_alpha <= 0 and global.chosenValue = 2
{
	fadeInInProgress = true
	global.ImageLoading = true
	BackgroundArtObj.sprite_index = east_austin_apartment_building
}

if BackgroundArtObj.image_alpha <= 0 and global.chosenValue = 3
{
	fadeInInProgress = true
	global.ImageLoading = true
	BackgroundArtObj.sprite_index = lakeway_street
}

if BackgroundArtObj.image_alpha >= 1
{
	fadeInInProgress = false
	global.ImageLoading = false
}


if fadeInInProgress == true and global.ImageLoading == true and BackgroundArtObj.image_alpha != 1
{
	fadeInImage()
}

function fadeInImage()
{
	BackgroundArtObj.image_alpha += fadeMultiplierConstant
}

