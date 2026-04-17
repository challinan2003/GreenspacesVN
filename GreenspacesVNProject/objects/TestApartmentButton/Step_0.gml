if position_meeting(mouse_x,mouse_y, TestApartmentButton) and mouse_check_button(mb_left) and global.StoryState == "start" and !instance_exists(textboxObj)
{
	global.StoryState = "FirstChoiceEastAustin"
	with( instance_create_depth(0,0,-9999,textboxObj))
	{
		scr_text("You choose to check out East Austin with one of your friends. They already live there so they offer to show you around.")
		scr_text("You start to walk around and realize its super hot.")
		scr_text("Both of you start walking towards the nearest park! It might be cooler there.")
		scr_text("You continue to walk and then ask how far the nearest park is to your friend. They tell you 40 minutes.")
		scr_text("Do you continue on the path to the park or drive over to Lakeway?: 1 for Lakeway //  2 for East Austin")
	}
}

if position_meeting(mouse_x,mouse_y, TestApartmentButton) and mouse_check_button(mb_left) and global.StoryState = "FirstChoiceEastAustin" and !instance_exists(textboxObj)
{
	East_wellness_meter.wellness -= 10
	global.StoryState = "SecondChoiceEastAustin"
	with( instance_create_depth(0,0,-9999,textboxObj))
	{
		scr_text("You decide to continue on the walk. Halfway there you and your friend decide to stop by an HEB to get water bottles.")
		scr_text("As you continue to walk, you can finally see the park, but its a bit underwhelming. A few trees, and a playground but thats about it.")
		scr_text("Do you want to stay in the park for awhile or head over to Lakeway?: 1 for Lakeway //  2 for East Austin")
	}
}


if position_meeting(mouse_x,mouse_y, TestApartmentButton) and mouse_check_button(mb_left) and global.StoryState = "SecondChoiceEastAustin" and !instance_exists(textboxObj)
{
	East_wellness_meter.wellness += 5
	global.StoryState = "ThirdChoiceEastAustin"
	with( instance_create_depth(0,0,-9999,textboxObj))
	{
		scr_text("You decide to stay in the park. Its a little cooler but not much.")
		scr_text("Your friend and you feel tired.")
		scr_text("Should you walk back or drive over to Lakeway?: 1 for Lakeway //  2 for East Austin")
	}
}