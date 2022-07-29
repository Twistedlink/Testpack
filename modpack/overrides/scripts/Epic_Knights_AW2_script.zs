import crafttweaker.item.IItemStack;
import crafttweaker.mods.ILoadedMods;
import mods.vanillaanvilrepair.addRepairEntry;

mods.jei.JEI.removeAndHide(<minecraft:chainmail_helmet>);
mods.jei.JEI.removeAndHide(<minecraft:chainmail_chestplate>);
mods.jei.JEI.removeAndHide(<minecraft:chainmail_leggings>);
mods.jei.JEI.removeAndHide(<minecraft:chainmail_boots>);
mods.jei.JEI.removeAndHide(<minecraft:iron_helmet>);
mods.jei.JEI.removeAndHide(<minecraft:iron_chestplate>);
mods.jei.JEI.removeAndHide(<minecraft:iron_leggings>);
mods.jei.JEI.removeAndHide(<minecraft:iron_boots>);
mods.jei.JEI.removeAndHide(<minecraft:golden_helmet>);
mods.jei.JEI.removeAndHide(<minecraft:golden_chestplate>);
mods.jei.JEI.removeAndHide(<minecraft:golden_leggings>);
mods.jei.JEI.removeAndHide(<minecraft:golden_boots>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_helmet>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_chestplate>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_leggings>);
mods.jei.JEI.removeAndHide(<minecraft:diamond_boots>);

recipes.remove(<magistuarmory:chainmail_helmet>);
recipes.remove(<magistuarmory:chainmail_chestplate>);
recipes.remove(<magistuarmory:chainmail_leggings>);
recipes.remove(<magistuarmory:chainmail_boots>);
recipes.remove(<magistuarmory:brigandine_chestplate>);
recipes.remove(<magistuarmory:cuirassier_boots>);
recipes.remove(<magistuarmory:shishak>);
recipes.remove(<magistuarmory:halfarmor_chestplate>);
recipes.remove(<magistuarmory:xivcenturyknight_leggings>);
recipes.remove(<magistuarmory:xivcenturyknight_boots>);
recipes.remove(<magistuarmory:kettlehat>);
recipes.remove(<magistuarmory:platemail_chestplate>);
recipes.remove(<magistuarmory:platemail_leggings>);
recipes.remove(<magistuarmory:platemail_boots>);
recipes.remove(<magistuarmory:crusader_chestplate>);
recipes.remove(<magistuarmory:crusader_boots>);
recipes.remove(<magistuarmory:crusader_leggings>);
recipes.remove(<magistuarmory:barbute>);
recipes.remove(<magistuarmory:cuirassier_chestplate>);
recipes.remove(<magistuarmory:wingedhussar_chestplate>);
recipes.remove(<magistuarmory:xivcenturyknight_chestplate>);
recipes.remove(<magistuarmory:cuirassier_helmet>);
recipes.remove(<magistuarmory:sallet>);
recipes.remove(<magistuarmory:knight_chestplate>);
recipes.remove(<magistuarmory:knight_leggings>);
recipes.remove(<magistuarmory:knight_boots>);
recipes.remove(<magistuarmory:maximilian_helmet>);
recipes.remove(<magistuarmory:maximilian_chestplate>);
recipes.remove(<magistuarmory:maximilian_leggings>);
recipes.remove(<magistuarmory:maximilian_boots>);
recipes.remove(<magistuarmory:armet>);
recipes.remove(<magistuarmory:gothic_chestplate>);
recipes.remove(<magistuarmory:gothic_boots>);
recipes.remove(<magistuarmory:bascinet>);
recipes.remove(<magistuarmory:greathelm>);
recipes.remove(<magistuarmory:norman_helmet>);
recipes.remove(<magistuarmory:gothic_leggings>);
recipes.remove(<magistuarmory:jousting_chestplate>);
recipes.remove(<magistuarmory:jousting_leggings>);
recipes.remove(<magistuarmory:jousting_boots>);
recipes.remove(<magistuarmory:stechhelm>);

recipes.addShaped(<magistuarmory:ceremonial_boots>, [[null, null, null],[<minecraft:gold_ingot>, <magistuarmory:xivcenturyknight_boots>, <minecraft:gold_ingot>], [null, null, null]]);
recipes.addShaped(<magistuarmory:greathelm>, [[<magistuarmory:steel_plate>, <magistuarmory:steel_plate>, <magistuarmory:steel_plate>],[<minecraft:diamond>, null, <minecraft:diamond>], [null, null, null]]);
recipes.addShaped(<magistuarmory:cuirassier_helmet>, [[null, null, null],[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <magistuarmory:steel_plate>, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:crusader_boots>, [[null, null, null],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [<magistuarmory:steel_plate>, null, <magistuarmory:steel_plate>]]);
recipes.addShaped(<magistuarmory:wingedhussar_chestplate>, [[<magistuarmory:steel_plate>, null, <magistuarmory:steel_plate>],[<minecraft:feather>, <magistuarmory:halfarmor_chestplate>, <minecraft:feather>], [<magistuarmory:steel_plate>, null, <magistuarmory:steel_plate>]]);
recipes.addShaped(<magistuarmory:barbute>, [[null, null, null],[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:gothic_boots>, [[null, null, null],[<minecraft:diamond>, null, <minecraft:diamond>], [<minecraft:diamond>, <minecraft:iron_ingot>, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:bascinet>, [[null, null, null],[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], [<minecraft:diamond>, <minecraft:iron_ingot>, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:armet>, [[null, <minecraft:wool:14>, null],[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], [<minecraft:diamond>, null, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:gothic_chestplate>, [[<minecraft:diamond>, <magistuarmory:steel_plate>, <minecraft:diamond>],[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:cuirassier_chestplate>, [[<minecraft:iron_ingot>, <magistuarmory:steel_plate>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:xivcenturyknight_chestplate>, [[<minecraft:diamond>, null, <minecraft:diamond>],[<magistuarmory:steel_plate>, <magistuarmory:halfarmor_chestplate>, <magistuarmory:steel_plate>], [<magistuarmory:steel_plate>, <magistuarmory:steel_plate>, <magistuarmory:steel_plate>]]);
recipes.addShaped(<magistuarmory:crusader_chestplate>, [[<magistuarmory:steel_plate>, <minecraft:wool:14>, <magistuarmory:steel_plate>],[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:ceremonialarmet>, [[<minecraft:gold_ingot>, <minecraft:wool:14>, <minecraft:gold_ingot>],[<minecraft:gold_ingot>, <magistuarmory:shishak>, <minecraft:gold_ingot>], [null, null, null]]);
recipes.addShaped(<magistuarmory:ceremonial_chestplate>, [[<minecraft:gold_ingot>, null, <minecraft:gold_ingot>],[<minecraft:gold_ingot>, <magistuarmory:halfarmor_chestplate>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
recipes.addShaped(<magistuarmory:knight_boots>, [[null, null, null],[<minecraft:diamond>, null, <minecraft:diamond>], [<minecraft:diamond>, null, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:knight_leggings>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, null, <minecraft:diamond>], [<minecraft:diamond>, null, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:knight_chestplate>, [[<minecraft:diamond>, null, <minecraft:diamond>],[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:sallet>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, null, <minecraft:diamond>], [null, null, null]]);
recipes.addShaped(<magistuarmory:platemail_boots>, [[null, null, null],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [<magistuarmory:steel_plate>, null, <magistuarmory:steel_plate>]]);
recipes.addShaped(<magistuarmory:platemail_leggings>, [[<magistuarmory:steel_plate>, <minecraft:iron_ingot>, <magistuarmory:steel_plate>],[<magistuarmory:steel_plate>, null, <magistuarmory:steel_plate>], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:platemail_chestplate>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<magistuarmory:steel_plate>, <minecraft:iron_ingot>, <magistuarmory:steel_plate>], [<magistuarmory:steel_plate>, <magistuarmory:steel_plate>, <magistuarmory:steel_plate>]]);
recipes.addShaped(<magistuarmory:kettlehat>, [[null, null, null],[<magistuarmory:steel_plate>, <magistuarmory:steel_plate>, <magistuarmory:steel_plate>], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:xivcenturyknight_boots>, [[null, null, null],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:xivcenturyknight_leggings>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:halfarmor_chestplate>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:shishak>, [[null, null, null],[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:cuirassier_boots>, [[null, null, null],[<minecraft:iron_ingot>, null, <magistuarmory:steel_plate>], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:brigandine_chestplate>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <magistuarmory:steel_plate>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.addShaped(<magistuarmory:chainmail_helmet>, [[null, null, null],[<magistuarmory:steel_chainmail>, <magistuarmory:steel_chainmail>, <magistuarmory:steel_chainmail>], [<magistuarmory:steel_chainmail>, null, <magistuarmory:steel_chainmail>]]);
recipes.addShaped(<magistuarmory:chainmail_boots>, [[null, null, null],[<magistuarmory:steel_chainmail>, null, <magistuarmory:steel_chainmail>], [<magistuarmory:steel_chainmail>, null, <magistuarmory:steel_chainmail>]]);
recipes.addShaped(<magistuarmory:chainmail_leggings>, [[<magistuarmory:steel_chainmail>, <magistuarmory:steel_chainmail>, <magistuarmory:steel_chainmail>],[<magistuarmory:steel_chainmail>, null, <magistuarmory:steel_chainmail>], [<magistuarmory:steel_chainmail>, null, <magistuarmory:steel_chainmail>]]);
recipes.addShaped(<magistuarmory:chainmail_chestplate>, [[<magistuarmory:steel_chainmail>, null, <magistuarmory:steel_chainmail>],[<magistuarmory:steel_chainmail>, <magistuarmory:steel_chainmail>, <magistuarmory:steel_chainmail>], [<magistuarmory:steel_chainmail>, <magistuarmory:steel_chainmail>, <magistuarmory:steel_chainmail>]]);
recipes.addShaped(<magistuarmory:gothic_leggings>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, <minecraft:iron_ingot>, <minecraft:diamond>], [<minecraft:diamond>, null, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:jousting_boots>, [[null, null, null],[<minecraft:diamond>, <magistuarmory:steel_plate>, <minecraft:diamond>], [<minecraft:diamond>, <magistuarmory:knight_boots>, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:jousting_leggings>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, <magistuarmory:knight_leggings>, <minecraft:diamond>], [<minecraft:diamond>, null, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:jousting_chestplate>, [[<minecraft:diamond>, <magistuarmory:knight_chestplate>, <minecraft:diamond>],[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:maximilian_boots>, [[null, null, null],[<minecraft:diamond>, null, <minecraft:diamond>], [<minecraft:diamond>, <magistuarmory:knight_boots>, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:maximilian_leggings>, [[<magistuarmory:steel_plate>, <minecraft:diamond>, <magistuarmory:steel_plate>],[<minecraft:diamond>, <magistuarmory:knight_leggings>, <minecraft:diamond>], [<minecraft:diamond>, null, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:maximilian_chestplate>, [[<magistuarmory:steel_plate>, null, <magistuarmory:steel_plate>],[<minecraft:diamond>, <magistuarmory:knight_chestplate>, <minecraft:diamond>], [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:maximilian_helmet>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<magistuarmory:steel_plate>, <magistuarmory:sallet>, <magistuarmory:steel_plate>], [null, null, null]]);
recipes.addShaped(<magistuarmory:stechhelm>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, <magistuarmory:sallet>, <minecraft:diamond>], [null, null, null]]);
recipes.addShaped(<magistuarmory:crusader_leggings>, [[<magistuarmory:steel_plate>, <minecraft:diamond>, <magistuarmory:steel_plate>],[<magistuarmory:steel_plate>, null, <magistuarmory:steel_plate>], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);

recipes.addShaped(<magistuarmory:maximilian_helmet>, [[null, null, null],[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], [<magistuarmory:steel_plate>, <magistuarmory:sallet>, <magistuarmory:steel_plate>]]);
recipes.addShaped(<magistuarmory:stechhelm>, [[null, null, null],[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], [<minecraft:diamond>, <magistuarmory:sallet>, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:chainmail_helmet>, [[<magistuarmory:steel_chainmail>, <magistuarmory:steel_chainmail>, <magistuarmory:steel_chainmail>],[<magistuarmory:steel_chainmail>, null, <magistuarmory:steel_chainmail>], [null, null, null]]);
recipes.addShaped(<magistuarmory:barbute>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>], [null, null, null]]);
recipes.addShaped(<magistuarmory:kettlehat>, [[<magistuarmory:steel_plate>, <magistuarmory:steel_plate>, <magistuarmory:steel_plate>],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [null, null, null]]);
recipes.addShaped(<magistuarmory:cuirassier_helmet>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <magistuarmory:steel_plate>, <minecraft:iron_ingot>], [null, null, null]]);
recipes.addShaped(<magistuarmory:greathelm>, [[null, null, null],[<magistuarmory:steel_plate>, <magistuarmory:steel_plate>, <magistuarmory:steel_plate>], [<minecraft:diamond>, null, <minecraft:diamond>]]);
recipes.addShaped(<magistuarmory:ceremonialarmet>, [[null, null, null],[<minecraft:gold_ingot>, <minecraft:wool:14>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <magistuarmory:shishak>, <minecraft:gold_ingot>]]);
recipes.addShaped(<magistuarmory:norman_helmet>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>], [null, null, null]]);
recipes.addShaped(<magistuarmory:bascinet>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],[<minecraft:diamond>, <minecraft:iron_ingot>, <minecraft:diamond>], [null, null, null]]);
recipes.addShaped(<magistuarmory:sallet>, [[null, null, null],[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>], [<minecraft:diamond>, null, <minecraft:diamond>]]);

//Custom Repairs
val diamondRepair = [
    <magistuarmory:armet>,
    <magistuarmory:knight_chestplate>,
    <magistuarmory:knight_leggings>,
    <magistuarmory:knight_boots>,
    <magistuarmory:stechhelm>,
    <magistuarmory:jousting_chestplate>,
    <magistuarmory:jousting_leggings>,
    <magistuarmory:jousting_boots>,
    <magistuarmory:sallet>,
    <magistuarmory:gothic_chestplate>,
    <magistuarmory:gothic_leggings>,
    <magistuarmory:gothic_boots>,
    <magistuarmory:maximilian_helmet>,
    <magistuarmory:maximilian_chestplate>,
    <magistuarmory:maximilian_leggings>,
    <magistuarmory:maximilian_boots>,
    <magistuarmory:bascinet>

] as IItemStack[]; 

val chainmailRepair = [
    <magistuarmory:chainmail_helmet>,
    <magistuarmory:chainmail_chestplate>,
    <magistuarmory:chainmail_leggings>,
    <magistuarmory:chainmail_boots>

] as IItemStack[];

val steelPlateRepair = [
    <magistuarmory:kettlehat>,
    <magistuarmory:platemail_chestplate>,
    <magistuarmory:platemail_leggings>,
    <magistuarmory:platemail_boots>,
    <magistuarmory:greathelm>,
    <magistuarmory:crusader_chestplate>,
    <magistuarmory:crusader_leggings>,
    <magistuarmory:crusader_boots>,
    <magistuarmory:xivcenturyknight_chestplate>,
    <magistuarmory:wingedhussar_chestplate>

] as IItemStack[]; 

val ironRepair = [
    <magistuarmory:barbute>,
    <magistuarmory:halfarmor_chestplate>,
    <magistuarmory:brigandine_chestplate>,
    <magistuarmory:norman_helmet>,
    <magistuarmory:xivcenturyknight_leggings>,
    <magistuarmory:xivcenturyknight_boots>,
    <magistuarmory:cuirassier_helmet>,
    <magistuarmory:cuirassier_chestplate>,
    <magistuarmory:cuirassier_boots>

] as IItemStack[]; 

val goldRepair = [
    <magistuarmory:ceremonialarmet>,
    <magistuarmory:ceremonial_chestplate>,
    <magistuarmory:ceremonial_boots>

] as IItemStack[];

val woolRepair = [
     <magistuarmory:coif>,
     <magistuarmory:gambeson_chestplate>,
     <magistuarmory:pantyhose>,
     <magistuarmory:gambeson_boots>,
     <magistuarmory:cuirassier_leggings>

] as IItemStack[];

val copperRepair = [
    <magistuarmory:rustedbarbute>,
    <magistuarmory:rustedhalfarmor_chestplate>,
    <magistuarmory:rustedgreathelm>,
    <magistuarmory:rustedcrusader_chestplate>,
    <magistuarmory:rustedcrusader_boots>,
    <magistuarmory:rustedkettlehat>,
    <magistuarmory:rustednorman_helmet>,
    <magistuarmory:rustedchainmail_helmet>,
    <magistuarmory:rustedchainmail_chestplate>,
    <magistuarmory:rustedchainmail_leggings>,
    <magistuarmory:rustedchainmail_boots>

] as IItemStack[];

for armor1 in diamondRepair {
   addRepairEntry(armor1, <ore:gemDiamond>);
}

for armor2 in chainmailRepair {
   addRepairEntry(armor2, <magistuarmory:steel_chainmail>);
}

for armor3 in steelPlateRepair {
   addRepairEntry(armor3, <magistuarmory:steel_plate>);
}

for armor4 in ironRepair {
   addRepairEntry(armor4, <ore:ingotIron>);
}

for armor5 in goldRepair {
   addRepairEntry(armor5, <ore:ingotGold>);
}

for armor6 in woolRepair {
   addRepairEntry(armor6, <ore:blockWool>);
}

//replace <ore:ingotIron> with <ore:ingotCopper> if you are using a pack with this ore (or whichever you prefer)
for armor7 in copperRepair {
   addRepairEntry(armor7, <ore:ingotIron>);
}