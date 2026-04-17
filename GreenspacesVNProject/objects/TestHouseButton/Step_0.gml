if position_meeting(mouse_x,mouse_y, TestHouseButton) and mouse_check_button(mb_left) and global.StoryState == "start" and !instance_exists(textboxObj)
{
	global.StoryState = "FirstChoiceLakeway"
	with( instance_create_depth(0,0,-9999,textboxObj))
	{
		scr_text("You choose to check out Lakeway with a local resident.")
		scr_text("They decide to show you around their neighborhood and you see how much lush greenery surrounds their house. Both of you take a walk together.")
		scr_text("As you take your walk you notice other people around smiling under the trees and chatting as they run in the nearby park.")
		scr_text("Care to check around more or go across the city to east Austin?: 1 for Lakeway //  2 for East Austin")
	}
}

if position_meeting(mouse_x,mouse_y, TestHouseButton) and mouse_check_button(mb_left) and global.StoryState = "FirstChoiceLakeway" and !instance_exists(textboxObj)
{
	Lakeway_wellness_meter.wellness += 10
	global.StoryState = "SecondChoiceLakeway"
	with( instance_create_depth(0,0,-9999,textboxObj))
	{
		scr_text("You continue to walk through the park as you see dogs running across the grass.")
		scr_text("The dog has so much space to run around.")
		scr_text("As it tires itself out, the dogs owner gives it water under a tree")
		scr_text("That makes the person you are walking with smile!")
		scr_text("Do you want to go to East Austin or stay here for a bit?: : 1 for Lakeway //  2 for East Austin")
	}
}


if position_meeting(mouse_x,mouse_y, TestHouseButton) and mouse_check_button(mb_left) and global.StoryState = "SecondChoiceLakeway" and !instance_exists(textboxObj)
{
	Lakeway_wellness_meter.wellness += 1
	global.StoryState = "ThirdChoiceLakeway"
	with( instance_create_depth(0,0,-9999,textboxObj))
	{
		scr_text("As you walk through the park you get tired. You go to sit down with the person guiding you through lakeway and you both decide to sit under a large tree.")
		scr_text("It feels a lot cooler, even though its 90 degrees out.")
		scr_text("Both of you decide to take a nap outside...")
		scr_text("The coolness is helping you fall asleep faster...")
		scr_text("After 40 minutes, both of you wake up!")
		scr_text("Do you still want to stay here? 1 for Lakeway //  2 for East Austin")
	}
}

if position_meeting(mouse_x,mouse_y, TestHouseButton) and mouse_check_button(mb_left) and global.StoryState == "FirstChoiceEastAustin" and !instance_exists(textboxObj)
{
	global.StoryState = "FirstChoiceEastAustin-SecondLakeway"
	with( instance_create_depth(0,0,-9999,textboxObj))
	{
		scr_text("You choose to come towards lakeway and meet someone there that is willing to give a tour.")
		scr_text("There seems to be a lot more greenery as you walk to the park. It feels a lot cooler already suprisingly.")
		scr_text("Care to check around more or go across the city to east Austin?: 1 for Lakeway //  2 for East Austin")
	}
}

if position_meeting(mouse_x,mouse_y, TestHouseButton) and mouse_check_button(mb_left) and global.StoryState = "FirstChoiceEastAustin-SecondLakeway" and !instance_exists(textboxObj)
{
	Lakeway_wellness_meter.wellness += 10
	global.StoryState = "SecondChoiceLakeway"
	with( instance_create_depth(0,0,-9999,textboxObj))
	{
		scr_text("You continue to walk through the park as you see dogs running across the grass.")
		scr_text("The dog has so much space to run around.")
		scr_text("As it tires itself out, the dogs owner gives it water under a tree")
		scr_text("That makes the person you are walking with smile!")
		scr_text("Do you want to go to East Austin again?: : 1 for Lakeway //  2 for East Austin")
	}
}