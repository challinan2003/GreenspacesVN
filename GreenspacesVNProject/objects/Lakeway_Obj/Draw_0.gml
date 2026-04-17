draw_self()

if global.StoryState == "FirstChoiceEastAustin"
{
	shader_set(Grayscale)
	shader_set_uniform_f(shader_get_uniform(Grayscale,"u_grayscaleAmount"), clamp(fadeValue,0,1))
	fadeValue += 0.02
	draw_self()
	shader_reset()
}

if global.StoryState == "SecondChoiceEastAustin"
{
	shader_set(Grayscale)
	draw_self()
	shader_reset()
}

if global.StoryState == "ThirdChoiceEastAustin"
{
	shader_set(Grayscale)
	draw_self()
	shader_reset()
}

if global.StoryState == "FirstChoiceEastAustin-SecondLakeway"
{
	shader_set(Grayscale)
	shader_set_uniform_f(shader_get_uniform(Grayscale,"u_grayscaleAmount"), clamp(fadeValue,1,0))
	fadeValue += 0.02
	draw_self()
	shader_reset()
}