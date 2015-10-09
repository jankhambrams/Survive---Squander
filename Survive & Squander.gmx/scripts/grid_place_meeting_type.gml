///scr_grid_place_meeting_type(x, y, type);
//  Checks for a place meeting on a grid contained within objViewController
//  Is able to wrap around the edges of the map
var xx, yy, type;
xx = argument[0];
yy = argument[1];
type = argument[2];

//  Remember starting position
var xp, yp;
xp = x;
yp = y;

//  Update the position for the bbox calculations
x = xx;
y = yy;

//  Get bounding box grid positions
var vc, vcg, vcgw, vcgh, br, bl, bt, bb;
vc = objViewController;
vcg = vc.grid;                      //  View Controller Grid - contains all the terrain type information
vcgw = ds_grid_width(vcg) - 1;      //  Grid Width
vcgh = ds_grid_height(vcg) - 1;     //  Grid Height

br = bbox_right div CELL_WIDTH;     //  Bounding box right
bl = bbox_left div CELL_WIDTH;      //  Bounding box left
bt = bbox_top div CELL_HEIGHT;      //  Bounding box top
bb = bbox_bottom div CELL_HEIGHT;   //  Bounding box bottom

//  If bounding box edges are outside of range, loop them to the other side
    //  Right
if br > vcgw br = 0;
else if br < 0 br = vcgw;
    //  Left
if bl > vcgw bl = 0;
else if bl < 0 bl = vcgw;
    //  Top
if bt > vcgh bt = 0;
else if bt < 0 bt = vcgh;
    //  Bottom
if bb > vcgh bb = 0;
else if bb < 0 bb = vcgh;

//  Check for an x meeting
var x_meeting = (vcg[# br, bt] = type) ||
                (vcg[# bl, bt] = type);
                
//  Check for a y meeting
var y_meeting = (vcg[# br, bb] = type) ||
                (vcg[# bl, bb] = type);
                
//  Move Back
x = xp;
y = yp;
                
//  Return
return x_meeting || y_meeting;
