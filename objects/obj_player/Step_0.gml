// Mettre à jour l'entrée du joueur
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_space);

// Mouvement horizontal
// hsp = (key_right - key_left) * move_speed;
var move = key_right - key_left;
hsp = move * move_speed;
vsp = vsp + grav;

if(place_meeting(x, y + 1, obj_wall)) && (key_jump)
{
	vsp = -10;
}

// Collision horizontale
    if (place_meeting(x + hsp, y, obj_wall)) {
        while (!place_meeting(x + sign(hsp), y, obj_wall)) {
            x = x + sign(hsp);
        }
        hsp = 0;
    }
    x = x + hsp;

// Collision verticale
    if (place_meeting(x, y + vsp, obj_wall)) {
        while (!place_meeting(x, y + sign(vsp), obj_wall)) {
            y = y + sign(vsp);
        }
        vsp = 0;
    }
	y = y + vsp;
	
// Caméra qui suit le joueur
camera_set_view_pos(view_camera[0], x - display_get_width() / 2, y - display_get_height() / 2);

// Décrémenter le chronomètre
time_left--;

if (time_left <= 0) {
    // Temps écoulé, déclencher la défaite
    show_message("Time's up! Game Over!");
    room_restart(); // Redémarre la salle actuelle
}