///unit_init()
//  Initialize Units

//  Common Variables
target = -1;
foe = -1;
selected = false;
faction = -1;
state = idle_state;
canShoot = true;

//  Specific Variables
var count = 0;
maxLife = unitStat[unitIndex,count];
count++;
life = maxLife;
atkDamage = unitStat[unitIndex,count];
count++;
atkRange = unitStat[unitIndex,count];
count++;
atkSpeed = unitStat[unitIndex,count];
count++;
sightRange = unitStat[unitIndex,count];
count++;
moveSpeed = unitStat[unitIndex,count];
count++;
acceleration = unitStat[unitIndex,count];
count++;
unitType = unitStat[unitIndex,count];
count++;
idleSprite = unitStat[unitIndex,count];
count++;
atkSprite = unitStat[unitIndex,count];
count++;
moveSprite = unitStat[unitIndex,count];
count++;
deadSprite = unitStat[unitIndex,count];
count++;
