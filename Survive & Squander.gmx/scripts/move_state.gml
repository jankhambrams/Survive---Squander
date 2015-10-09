///move_state();
//  Movement Behaviour

//  Set friction to zero
friction = 0;

//  Move toward target if it exists
if instance_exists(target)
{   
    //  Move toward target while trying to avoid obstacles
    grid = global.passable;
    path = path_add();
    mp_grid_path(grid, path, x, y, target.x, target.y, true);
    path_start(path, speed, "", true);
       
    //  Delete target when it is reached, return to idle state, and delete path
    if position_meeting(x, y, target)
    {
        with target instance_destroy();
        state = idle_state;
        path_delete(path);
    }
    //  Set Sprite
    sprite_index = moveSprite;
}

//  Cap speed
if speed > spd speed = spd;
//  Add to speed
else if speed < spd speed += acc;
