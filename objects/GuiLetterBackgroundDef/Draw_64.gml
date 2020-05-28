if (parent != -1 && !parent.isHidden)
{
	draw_sprite_stretched(GuiLetter_spr, 0, parent.PosX, parent.PosY, width, height);
	
	draw_set_font(UiFont2);
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	
	draw_text_ext_transformed(parent.PosX + 45, parent.PosY + 55,
	parent.messageString, parent.separator, parent.textMessageBorder, 1, 1, 0);
	
	draw_text_ext_transformed(parent.PosX + 120, parent.PosY + 330,
	parent.option0Message, parent.separator, parent.optionTextMessageBorder, 1, 1, 0);	

	draw_text_ext_transformed(parent.PosX + 120, parent.PosY + 418,
	parent.option1Message, parent.separator, parent.optionTextMessageBorder, 1, 1, 0);	
	
	//  to change in event set positions - make texts per checkbox not in bg
	hh = string_height("ABCDEFGHIJKLMNOPQRSTUVWXYZ");
	value = ceil((string_height_ext(parent.option2Message,
	parent.separator, parent.optionTextMessageBorder) + parent.separator) / (parent.separator + hh));
	if (value == 1)
	    draw_text_ext_transformed(parent.PosX + 120, parent.PosY + 506,
		parent.option2Message, parent.separator, parent.optionTextMessageBorder, 1, 1, 0);	
	else if (value == 2)
		draw_text_ext_transformed(parent.PosX + 120, parent.PosY + 493,
		parent.option2Message, parent.separator, parent.optionTextMessageBorder, 1, 1, 0);	
}