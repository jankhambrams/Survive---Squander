///move_state();
//  Movement Behaviour

//  Set friction to zero
friction = 0;

//  Move toward target if it exists
if instance_exists(target)
{
    motion_add(point_direction(x, y, target.x, target.y), acc);
    
    //  Delete target when it is reached and return to idle state
    if position_meeting(x, y, target)
    {
        with target instance_destroy();
        state = idle_state;
    }
}

//  Cap speed
if speed > spd speed = spd;
