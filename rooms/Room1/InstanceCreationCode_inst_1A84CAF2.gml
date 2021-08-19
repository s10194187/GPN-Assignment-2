waves = ds_list_create();
ds_list_add(waves,[0,oEnemy,0,0]);
ds_list_add(waves,[0,oEnemy,0,50]);
ds_list_add(waves,[0,oEnemy,0,100]);
ds_list_add(waves,[0,oEnemy,1,0]);
ds_list_add(waves,[0,oEnemy,1,50]);
ds_list_add(waves,[0,oEnemy,1,100]);

ds_list_add(waves,[1,oEnemy,0,10]);
ds_list_add(waves,[1,oEnemy,0,20]);
ds_list_add(waves,[1,oEnemy,0,30]);
ds_list_add(waves,[1,oEnemy,0,40]);
ds_list_add(waves,[1,oEnemy,0,50]);
ds_list_add(waves,[1,oEnemy,0,60]);

ds_list_add(waves,[2,oEnemy,1,30]);
ds_list_add(waves,[2,oEnemy,1,40]);
ds_list_add(waves,[2,oEnemy,1,50]);
ds_list_add(waves,[2,oEnemy,1,60]);

ds_list_add(waves,[3,oEnemyBig,1,0]);

//Define spawn points
spawn[0,0] = 2600; //x
spawn[0,1] = 488; //y
spawn[1,0] = 3400; //x
spawn[1,1] = 488; //y