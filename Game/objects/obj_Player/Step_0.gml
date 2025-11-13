var move = 0;

if (keyboard_check(vk_left)) {
    move -= 1;
    sprite_index = spr_PlayerWalk;
    image_speed = 0.2;
    image_xscale = -1;
}
if (keyboard_check(vk_right)) {
    move += 1;
    sprite_index = spr_PlayerWalk;
    image_speed = 0.2;
    image_xscale = 1;
}

if (move == 0) {
    sprite_index = spr_Player;
    image_speed = 0;
    image_index = 0;
}

if (move != 0) {
    if (!place_meeting(x + move * spd, y, obj_chao)) {
        x += move * spd;
    } else {
        while (!place_meeting(x + sign(move), y, obj_chao)) {
            x += sign(move);
        }
    }
}

//GRAVIDADE
if (!place_meeting(x, y + 1, obj_chao)) {
    spd_vertical += gravidade;
    chao = false;
} else {
    spd_vertical = 0;
    chao = true;
}

//PULO
if (chao && keyboard_check_pressed(vk_space)) {
    spd_vertical = -pulo;
    chao = false;
}


if (!place_meeting(x, y + spd_vertical, obj_chao)) {
    y += spd_vertical;
} else {
    while (!place_meeting(x, y + sign(spd_vertical), obj_chao)) {
        y += sign(spd_vertical);
    }
    spd_vertical = 0;
}
