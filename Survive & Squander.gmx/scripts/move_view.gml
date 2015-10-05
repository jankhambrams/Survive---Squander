///move_view()

//  Get keyboard input
var right, left, up, down;
right = keyboard_check(vk_right) || keyboard_check(ord('E'));
left = keyboard_check(vk_left) || keyboard_check(ord('A'));
up = keyboard_check(vk_up) || keyboard_check(ord(','));
down = keyboard_check(vk_down) || keyboard_check(ord('O'));

//  Move view according to keyboard input
var spd = 4;
if right view_xview[0] += spd;
if left view_xview[0] -= spd;
if up view_yview[0] -= spd;
if down view_yview[0] += spd;
