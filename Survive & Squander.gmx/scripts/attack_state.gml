///attack_state()

frition = .5;

if instance_exists(foe) && foe != -1
{
    direction = point_direction(x, y, foe.x, foe.y);
    var dis = distance_to_point(foe.x, foe.y)
    if dis > atkRange && dis < sightRange
    {
        state = chase_state;
    }
}
