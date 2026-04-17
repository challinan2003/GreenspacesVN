draw_self()

if global.StoryState == "FirstChoiceLakeway"
{
	shader_set(Grayscale)
	shader_set_uniform_f(shader_get_uniform(Grayscale,"u_grayscaleAmount"), clamp(fadeValue,0,1))
	fadeValue += 0.02
	draw_self()
	shader_reset()
}

if global.StoryState == "SecondChoiceLakeway"
{
	shader_set(Grayscale)
	draw_self()
	shader_reset()
}

if global.StoryState == "ThirdChoiceLakeway"
{
	shader_set(Grayscale)
	draw_self()
	shader_reset()
}