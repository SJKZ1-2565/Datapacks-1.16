# check dropped item
execute as @e[type=item,nbt={Item:{tag:{AdvTable:1b},Count:1b}}] at @s unless entity @a[distance=..4] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ air run function stevekung:advanced_crafting_table/create_adv_crafting

# run recipes function
execute as @e[type=armor_stand,tag=adv_crafting_table] at @s if data block ~ ~ ~ Items[] run function #stevekung:recipes

# fix lighting
execute as @e[type=armor_stand,tag=adv_crafting_table] run data modify entity @s Fire set value 32767

# run loop
schedule function stevekung:advanced_crafting_table/main_schedule 20t