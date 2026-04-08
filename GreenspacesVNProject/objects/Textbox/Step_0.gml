if global.chosenValue = 1
{
	Textbox.sprite_index = FirstTextbox
}

if global.chosenValue = 2
{
	Textbox.sprite_index = SecondTextbox
}

if global.chosenValue = 3
{
	Textbox.sprite_index = ThirdTextbox
}

if BackgroundArtObj.image_alpha < 1
{
	Textbox.image_alpha = 0
}
else
{
	Textbox.image_alpha = 1
}