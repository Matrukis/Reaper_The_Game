// ==== STEP EVENT ====

// Atualiza o alvo
if (follow != noone) {
    xTo = follow.x;
    yTo = follow.y;
}

// Suaviza o movimento da câmera
x += (xTo - x) / 15;
y += (yTo - y) / 15;

// Centraliza a câmera na posição
camera_set_view_pos(view_camera[0], x - (camWidth * 0.5), y - (camHeight * 0.5));
