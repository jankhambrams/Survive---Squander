///chase_state()
//  Chase down enemy

//  Set friction to zero
friction = 0;

//  Move toward foe if it exists
if instance_exists(foe)
{
    //  Attack foe when close enough
    if distance_to_point(foe.x, foe.y) < atkRange state = attack_state;
    else motion_add(point_direction(x, y, foe.x, foe.y), acc);
}
else 
{
    state = idle_state;
    foe = -1;
}

//  Limit Speed
if speed > spd speed = spd;
