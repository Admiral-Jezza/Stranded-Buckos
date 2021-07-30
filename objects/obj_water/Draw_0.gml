/// @description Count Debug Display
// You can write your code in this editor

draw_self();

if (landContacts > 0 && debugMode) {
	draw_text(x - tileSize / 4, y - tileSize / 4, landContacts);	
}