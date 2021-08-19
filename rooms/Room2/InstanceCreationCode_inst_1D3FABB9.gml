waves = ds_list_create();

//[array index,enemy type,spawnpoint,delay]
ds_list_add(waves,[0,oEnemy,0,0]);
ds_list_add(waves,[0,oEnemy,0,50]);
ds_list_add(waves,[0,oEnemy,0,100]);
ds_list_add(waves,[0,oEnemy,1,0]);
ds_list_add(waves,[0,oEnemy,1,50]);
ds_list_add(waves,[0,oEnemy,1,100]);

ds_list_add(waves,[1,oEnemy,0,10]);
ds_list_add(waves,[1,oEnemy,0,20]);
ds_list_add(waves,[1,oEnemy,0,30]);
ds_list_add(waves,[1,oEnemy,1,40]);
ds_list_add(waves,[1,oEnemy,1,50]);
ds_list_add(waves,[1,oEnemy,1,60]);

spawn[0,0] =3600; //x
spawn[0,1] = 370; //y
spawn[1,0] = 3600; //x
spawn[1,1] = 600; //y