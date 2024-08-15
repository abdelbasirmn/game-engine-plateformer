if (keyboard_check_pressed(vk_space)) {
    var attack = instance_create_layer(x + image_xscale * 16, y, "Instances", obj_attack);
    attack.direction = image_xscale;
}
