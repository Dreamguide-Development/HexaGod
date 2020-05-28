if (parent != -1 && !parent.isHidden && parent.alpha >= 0.05)
{
	width = sprite_get_width(characters[? currentCharacters[0]]);
	height = sprite_get_height(characters[? currentCharacters[0]]);

	draw_set_alpha(parent.alpha);
	draw_sprite_stretched(characters[? currentCharacters[0]], currentCharacters[1], currentCharacters[3], 170, width, height);
}