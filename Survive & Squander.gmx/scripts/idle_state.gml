///idle_state()
//  Idle State

//  Set Friction
friction = .5;

//  If a foe comes close enough, go into chase state
if foe != -1 && instance_exists(foe)
{
    if distance_to_point(foe.x, foe.y) < sightRange state = chase_state;
}
