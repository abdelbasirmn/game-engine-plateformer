// Mouvement de l'attaque
x += 10 * direction;

// Destruction après un certain temps
if (distance_to_point(x, y) > 32) {
    instance_destroy();
}

// Collision avec l'ennemi
if (place_meeting(x, y, obj_enemy)) {
    with (obj_enemy) {
        instance_destroy();
    }
    instance_destroy();
}
