#Name: custom-recipes.zs
#Author: Aurora

print("Initializing 'custom-recipes.zs'...");

//Compressed Block Smelting
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 648, <extrautils2:compressedcobblestone>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 5832, <extrautils2:compressedcobblestone:1>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 52488, <extrautils2:compressedcobblestone:2>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 472392, <extrautils2:compressedcobblestone:3>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 4251528, <extrautils2:compressedcobblestone:4>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:stone> * 38263752, <extrautils2:compressedcobblestone:5>, 200);

mods.tconstruct.Melting.addRecipe(<liquid:glass> * 9000, <extrautils2:compressedsand>, 200);

//Add more metals to bucket recipe
recipes.addShaped(<minecraft:bucket> * 1, [[<ore:ingotAluminum>, null, <ore:ingotAluminum>], [null, <ore:ingotAluminum>, null]]);
recipes.addShaped(<minecraft:bucket> * 1, [[<ore:ingotCopper>, null, <ore:ingotCopper>], [null, <ore:ingotCopper>, null]]);
recipes.addShaped(<minecraft:bucket> * 1, [[<ore:ingotLead>, null, <ore:ingotLead>], [null, <ore:ingotLead>, null]]);

//Add shapeless recipe for Tinkers Clear Glass -> Vanilla Glass
recipes.addShapeless(<minecraft:glass> * 2, [<tconstruct:clear_glass>, <tconstruct:clear_glass>]);

//Add recipes for melting extrautils2:compressedsand -> minecraft:glass x9
mods.thermalexpansion.RedstoneFurnace.addRecipe(<minecraft:glass> * 9, <extrautils2:compressedsand>, 2000);

//Adds more ways to automate hammering
//mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
mods.thermalexpansion.Pulverizer.addRecipe(<extrautils2:compressedgravel>, <extrautils2:compressedcobblestone>, 2000);
mods.thermalexpansion.Pulverizer.addRecipe(<extrautils2:compressedsand>, <extrautils2:compressedgravel>, 2000);
mods.thermalexpansion.Pulverizer.addRecipe(<excompressum:compressed_block>, <extrautils2:compressedsand>, 2000);

//Add recipe for Cryo-Stabilized Fluxduct (Empty) that doesnt require previous tiers
recipes.addShaped(<thermaldynamics:duct_0:9> * 1, [[<thermalfoundation:material:161>, <ore:fusedQuartz>, <thermalfoundation:material:161>], [<ore:fusedQuartz>, <minecraft:nether_star>, <ore:fusedQuartz>], [<thermalfoundation:material:161>, <ore:fusedQuartz>, <thermalfoundation:material:161>]]);

//Add recipe for Awakend draconium without using fusion crafting
recipes.addShaped(<draconicevolution:draconic_block> * 4, [[null, <draconicevolution:draconium_block>, null], [<draconicevolution:draconium_block>, <draconicevolution:dragon_heart>, <draconicevolution:draconium_block>], [<draconicevolution:wyvern_core>, <draconicevolution:draconium_block>, <draconicevolution:wyvern_core>]]);

//Add recipe for Wither Skeleton Skull
recipes.addShaped(<minecraft:skull:1>, [[<mysticalagriculture:wither_skeleton_essence>, <mysticalagriculture:wither_skeleton_essence>, <mysticalagriculture:wither_skeleton_essence>], [<mysticalagriculture:wither_skeleton_essence>, null, <mysticalagriculture:wither_skeleton_essence>], [<mysticalagriculture:wither_skeleton_essence>, <mysticalagriculture:wither_skeleton_essence>, <mysticalagriculture:wither_skeleton_essence>]]);

//Add recipe for Vanilla Seeds
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:wheat_seeds> * 18, <minecraft:hay_block>, 2000);