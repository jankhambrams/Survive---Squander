///select_toggle(press_x, press_y, release_x, release_y)
//  For Selecting Units

//  Pressed and Released
var px, py, rx, ry
px = argument0;
py = argument1;
rx = argument2;
ry = argument3;

//  Cases
var tlbr, bltr, brtl, trbl;
tlbr = x > px && x < rx && y > py && y < ry;
bltr = x > px && x < rx && y < py && y > ry;
brtl = x < px && x > rx && y < py && y > ry;
trbl = x < px && x > rx && y > py && y < ry;

if (tlbr || bltr || brtl || trbl) selected = true;
else if !keyboard_check(vk_shift) selected = false;
