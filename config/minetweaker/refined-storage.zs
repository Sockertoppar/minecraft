import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IIngredient;
#Name: refined-storage.zs
#Author: Aurora

print("Initializing 'refined-storage.zs'...");

var Processors = [
    <refinedstorage:processor:0>,
    <refinedstorage:processor:1>,
    <refinedstorage:processor:2>,
    <refinedstorage:processor:6>
] as IIngredient[];

for item in Processors {
    recipes.remove(item);
}

recipes.addShapeless(<refinedstorage:processor:6>, [<refinedstorage:cutting_tool>.reuse(), <ore:itemSilicon>]);
recipes.addShapeless(<refinedstorage:processor:1>, [<refinedstorage:cutting_tool>.reuse(), <ore:ingotGold>, <refinedstorage:processor:6>, <minecraft:redstone>]);
recipes.addShapeless(<refinedstorage:processor:0>, [<refinedstorage:cutting_tool>.reuse(), <ore:ingotIron>, <refinedstorage:processor:6>, <minecraft:redstone>]);
recipes.addShapeless(<refinedstorage:processor:2>, [<refinedstorage:cutting_tool>.reuse(), <ore:gemDiamond>, <refinedstorage:processor:6>, <minecraft:redstone>]);
