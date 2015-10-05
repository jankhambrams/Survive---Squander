///scan_for_foe()
//  Checks all instances for their faction
var count = instance_number(objUnitParent);
var distance = 9999;
var closest = -1;

//  Scan all units
for (var i = 0; i < count; i++)
{
    //  Get Unit IDs
    var unit = instance_find(objUnitParent, i);
    
    //  Check each unit for distance and faction to determine which is closest and whether they are an enemy
    if instance_exists(unit)
    {
        var dis = distance_to_point(unit.x, unit.y);
        if dis < distance && unit.faction != faction && unit != self
        {
            distance = dis;
            closest = unit;
        }        
    }
}

return closest;
