if (follow != noone) {
    xTo = follow.x;
    yTo = follow.y;
}

// Suaviza o movimento da câmera
x += (xTo - x) / 2;
y += (yTo - y) / 2;


var camX = x - (camWidth * 0.5);
var camY = y - (camHeight * 0.5);

camX = clamp(camX, 0, room_width - camWidth);
camY = clamp(camY, 0, room_height - camHeight);

// Define posição final da câmera
camera_set_view_pos(view_camera[0], camX, camY);
