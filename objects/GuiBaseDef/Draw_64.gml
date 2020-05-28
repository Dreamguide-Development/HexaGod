/* UI */
draw_sprite(GuiBase_spr,0,0,0);
/* Text */
draw_set_font(UiFont2);
draw_set_alpha(1);
draw_set_colour(c_white);

draw_set_halign(fa_left);
draw_text_transformed(15, 45, "PoP: " + UiBelieversCount, 1, 1, 0);
draw_text_transformed(15, 12, "Player: " + UiActivePlayer, 1, 1, 0);
draw_set_halign(fa_right);
draw_text_transformed(845, 12, "Turn: " + UiTurnNo, 1, 1, 0);

