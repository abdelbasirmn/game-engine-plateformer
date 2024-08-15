/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
// Mouvement
x += move_speed * direction;


// Collision avec les murs
if (place_meeting(x + direction, y, obj_wall)) {
    direction = -direction;
}

// Collision avec le joueur
if (place_meeting(x, y, obj_player)) {
    game_restart(); // Réinitialise le jeu en cas de contact
}

