if (parent != -1 && !parent.isHidden && parent.alpha >= 0.05)
{
	draw_set_alpha(parent.alpha);
	draw_sprite_stretched(DialogBase_spr, 0, 0, 0, width, height);
	
	draw_set_font(UiFont2);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	
	draw_text_ext_transformed(35, 557,
	parent.dialogName, parent.separator, parent.nameBorder, 1, 1, 0);
	
	draw_text_ext_transformed(30, 610,
	parent.displayedDialogMessage, parent.separator, parent.textBorder, 1, 1, 0);
	draw_set_alpha(1);
}