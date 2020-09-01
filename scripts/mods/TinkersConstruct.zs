import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.liquid.ILiquidDefinition;
import mods.jei.JEI.removeAndHide as rh;
import mods.tcomplement.highoven.HighOven;
import mods.tcomplement.highoven.MixRecipeBuilder;

#modloaded tconstruct


# Removing Bronze / Steel dupes
	mods.tconstruct.Melting.removeRecipe(<liquid:bronze>, <ic2:pipe>);
	mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <ic2:pipe:1>);

# Prevent Smart Output from instantly breaking (setting it to same hardness as Smeltery Controllers)
	<mctsmelteryio:machine:1>.hardness = <tconstruct:smeltery_controller>.hardness;

# Cobalt Block Unification
	mods.tconstruct.Casting.removeBasinRecipe(<chisel:blockcobalt>);
	mods.tconstruct.Casting.addBasinRecipe(<tconstruct:metal>, null, <liquid:cobalt>, 1296);

# Increase stack size for ice balls
	<mctsmelteryio:iceball>.maxStackSize = 64;
	
# Item Rack
	rh(<tconstruct:rack>);
	
# Blank Cast Resmelting
	mods.tconstruct.Melting.addRecipe(<liquid:alubrass> * 144, <tconstruct:cast>);

# Firewood
	recipes.remove(<tconstruct:firewood:1>);
	recipes.addShapedMirrored("Firewood", 
	<tconstruct:firewood:1>, 
	[[<tconstruct:firewood>, <bloodmagic:component:1>, <tconstruct:firewood>],
	[<bloodmagic:lava_crystal>, <tconstruct:firewood>, <bloodmagic:lava_crystal>], 
	[<tconstruct:firewood>, <bloodmagic:component:1>, <tconstruct:firewood>]]);

# Reinforcement Modifier
	recipes.remove(<tconstruct:materials:14>);
	recipes.addShapedMirrored("Reinforcement Modifier",
	<tconstruct:materials:14> * 2, 
	[[<ore:blockSheetmetalGold>, <ore:plateDenseObsidian>, <ore:blockSheetmetalGold>],
	[<ore:blockSheetmetalGold>, <ic2:casing:2>, <ore:blockSheetmetalGold>],
	[<ore:blockSheetmetalGold>, <ore:plateDenseObsidian>, <ore:blockSheetmetalGold>]]);

# Faster Alumite Alloying
	mods.tconstruct.Alloy.removeRecipe(<liquid:alumite>);
	mods.tconstruct.Alloy.addRecipe(<liquid:alumite> * 432, [<liquid:aluminum> * 720, <liquid:iron> * 288,  <liquid:obsidian> * 288]);
	mods.tconstruct.Alloy.addRecipe(<liquid:alumite> * 864, [<liquid:aluminum> * 1440, <liquid:iron> * 576,  <liquid:obsidian> * 576]);

# Faster Osmiridium Alloying
	mods.tconstruct.Alloy.removeRecipe(<liquid:osmiridium>);
	mods.tconstruct.Alloy.addRecipe(<liquid:osmiridium> * 144, [<liquid:osmium> * 72, <liquid:iridium> * 72]);

# Faster Bronze Alloying
	mods.tconstruct.Alloy.removeRecipe(<liquid:bronze>);

	mods.tconstruct.Alloy.addRecipe(<liquid:bronze> * 288, [<liquid:tin> * 72, <liquid:copper> * 216]);
	mods.tconstruct.Alloy.addRecipe(<liquid:bronze> * 576, [<liquid:tin> * 144, <liquid:copper> * 432]);

	mods.tconstruct.Alloy.removeRecipe(<liquid:alubrass>);

	mods.tconstruct.Alloy.addRecipe(<liquid:alubrass> * 288, [<liquid:copper> * 72, <liquid:aluminum> * 216]);
	mods.tconstruct.Alloy.addRecipe(<liquid:alubrass> * 576, [<liquid:copper> * 144, <liquid:aluminum> * 432]);

# Tinkers' Complement Melter
	recipes.remove(<tcomplement:melter>);
	recipes.addShaped("TiC Complement", 
	<tcomplement:melter>, 
	[[<ore:blockSeared>, <tconstruct:seared_tank>, <ore:blockSeared>],
	[<ore:blockSeared>, <tconstruct:smeltery_controller>, <ore:blockSeared>], 
	[<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]]);	

# Large Plates in Immersive Engineering Metal Press
	#OutputStack, InputStack, MoldStack, Energy, SizeValue
	mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:large_plate>.withTag({Material: "xu_demonic_metal"}), <extrautils2:simpledecorative:1>, <immersiveengineering:mold>, 16000, 1);
	mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:large_plate>.withTag({Material: "lead"}), <thermalfoundation:storage:3>, <immersiveengineering:mold>, 16000, 1);
	mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:large_plate>.withTag({Material: "iron"}), <minecraft:iron_block>, <immersiveengineering:mold>, 16000, 1);
	mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:large_plate>.withTag({Material: "electrum"}), <thermalfoundation:storage_alloy:1>, <immersiveengineering:mold>, 16000, 1);
	mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:large_plate>.withTag({Material: "flint"}), <excompressum:compressed_block:5>, <immersiveengineering:mold>, 16000, 1);
	
	mods.immersiveengineering.MetalPress.addRecipe(<tconstruct:tool_rod>.withTag({Material: "ardite"}), <tconstruct:ingots:1>, <immersiveengineering:mold:2>, 4000, 1);

# EFLN
	recipes.remove(<tconstruct:throwball:1>);
	recipes.addShapedMirrored("EFLN", 
	<tconstruct:throwball:1> * 3, 
	[[<ore:dustSulfur>, <ore:gunpowder>, <ore:dustSulfur>],
	[<ore:gunpowder>, <excompressum:compressed_block:5>, <ore:gunpowder>], 
	[<ore:dustSulfur>, <ore:gunpowder>, <ore:dustSulfur>]]);

# Removing the ability to smelt dusts into ingots, for Signalum, Lumium, Enderium and Refined Obsidian
	mods.tconstruct.Melting.removeRecipe(<liquid:signalum>, <thermalfoundation:material:101>);
	mods.tconstruct.Melting.removeRecipe(<liquid:lumium>, <thermalfoundation:material:102>);
	mods.tconstruct.Melting.removeRecipe(<liquid:enderium>, <thermalfoundation:material:103>);
	mods.tconstruct.Melting.removeRecipe(<liquid:refinedobsidian>, <mekanism:otherdust:5>);
# Removing the ability to smelt redstone/glowstone to make EnderIO alloys
	for item in <ore:dustRedstone>.items { mods.tconstruct.Melting.removeRecipe(<liquid:redstone>, item); }
	for item in <ore:blockRedstone>.items { mods.tconstruct.Melting.removeRecipe(<liquid:redstone>, item); }
	for item in <ore:dustGlowstone>.items { mods.tconstruct.Melting.removeRecipe(<liquid:glowstone>, item); }
	for item in <ore:blockGlowstone>.items { mods.tconstruct.Melting.removeRecipe(<liquid:glowstone>, item); }

# Removing the ability to melt coal
val coals as IItemStack[] = [

	<bigreactors:ingotgraphite>,
	<bigreactors:dustgraphite>,
	<minecraft:coal>,
	<minecraft:coal_block>,
	<thermalfoundation:material:768>,
	<bigreactors:blockgraphite>,
	<nuclearcraft:ingot_block:8>,
	<nuclearcraft:ingot:8>,
	<nuclearcraft:dust:8>
	
];

for item in coals {
	mods.tconstruct.Melting.removeRecipe(<liquid:coal>, item);
}

# Remove Ender Pearl Melting (to remove the ability to alloy Enderium)
	mods.tconstruct.Melting.removeRecipe(<liquid:ender>);
	
# Gear Cast
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <exnihilocreatio:item_material:7>, <liquid:gold>, 288, true);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <exnihilocreatio:item_material:7>, <liquid:alubrass>, 144, true);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <exnihilocreatio:item_material:7>, <liquid:brass>, 144, true);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:22>, <liquid:gold>, 288, true);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:22>, <liquid:alubrass>, 144, true);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:22>, <liquid:brass>, 144, true);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:gold>, 288, true);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:alubrass>, 144, true);
	mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:brass>, 144, true);

# Add Cyanite melting recipe
	mods.tconstruct.Melting.addRecipe(<liquid:cyanite> * (144*9), <ore:blockCyanite>, 700);
	mods.tconstruct.Melting.addRecipe(<liquid:cyanite> * 144, <ore:ingotCyanite> | <ore:dustCyanite>, 450);

# Add recipes from liquids
	mods.tconstruct.Casting.addBasinRecipe(<bigreactors:blockblutonium>, null, <liquid:plutonium>, 1296);
	mods.tconstruct.Casting.addBasinRecipe(<bigreactors:blockcyanite>, null, <liquid:cyanite>, 1296);
	mods.tconstruct.Casting.addTableRecipe(<bigreactors:ingotcyanite>, <tconstruct:cast_custom>, <liquid:cyanite>, 144, false);


# Slime Boots
	recipes.remove(<tconstruct:slime_boots:*>);
	function remakeSlimeBoots(name as string, item as IItemStack, primary as IIngredient){
		recipes.addShaped("Slime Boots " ~ name, item, [
			[<ore:slimeball>, <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 34 as short}]}), <ore:slimeball>], 
			[primary, <minecraft:leather_boots>.anyDamage(), primary]]);
	}

	remakeSlimeBoots("Green",  <tconstruct:slime_boots>,   <tconstruct:slime_congealed>);
	remakeSlimeBoots("Blue",   <tconstruct:slime_boots:1>, <tconstruct:slime_congealed:1>);
	remakeSlimeBoots("Purple", <tconstruct:slime_boots:2>, <tconstruct:slime_congealed:2>);
	remakeSlimeBoots("Red",    <tconstruct:slime_boots:3>, <tconstruct:slime_congealed:3>);
	remakeSlimeBoots("Orange", <tconstruct:slime_boots:4>, <tconstruct:slime_congealed:4>);

# Slime Slings
	recipes.remove(<tconstruct:slimesling:*>);
	function remakeSlimeSlings(name as string, item as IItemStack, primary as IIngredient){
		recipes.addShaped("Slime Sling " ~ name, item, [
			[<ore:slimeball>, null, <ore:slimeball>], 
			[<ore:slimeball>, <cyclicmagic:slingshot_weapon>.anyDamage(), <ore:slimeball>], 
			[null, primary, null]
		]);
	}

	remakeSlimeSlings("Green",  <tconstruct:slimesling>,   <tconstruct:slime_congealed>);
	remakeSlimeSlings("Blue",   <tconstruct:slimesling:1>, <tconstruct:slime_congealed:1>);
	remakeSlimeSlings("Purple", <tconstruct:slimesling:2>, <tconstruct:slime_congealed:2>);
	remakeSlimeSlings("Red",    <tconstruct:slimesling:3>, <tconstruct:slime_congealed:3>);
	remakeSlimeSlings("Magma",  <tconstruct:slimesling:4>, <tconstruct:slime_congealed:4>);


# Recipes to remove 
rh(<mctsmelteryio:powdered_fuel>);

# Remake upgrades match Tinkers/IO crafts
remakeEx(<mctsmelteryio:upgrade>, [[<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>], [<ore:ingotAluminum> | <ore:ingotLead>, <minecraft:paper>, <ore:ingotAluminum> | <ore:ingotLead>], [<minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>]]);
remakeEx(<mctsmelteryio:upgrade:1>, [[<ore:ingotCopper>, <ore:chest>, <ore:ingotCopper>], [<ore:chest>, <mctsmelteryio:upgrade>, <ore:chest>], [<ore:ingotCopper>, <ore:chest>, <ore:ingotCopper>]]);
remakeEx(<mctsmelteryio:upgrade:2>, [[<ore:ingotAluminum>, <minecraft:iron_ingot>, <ore:ingotAluminum>], [<minecraft:iron_ingot>, <mctsmelteryio:upgrade:1>, <minecraft:iron_ingot>], [<ore:ingotAluminum>, <minecraft:iron_ingot>, <ore:ingotAluminum>]]);
remakeEx(<mctsmelteryio:upgrade:3>, [[<ore:nuggetKnightslime>, <ore:ingotGold>, <ore:nuggetKnightslime>], [<ore:ingotGold>, <mctsmelteryio:upgrade:2>, <ore:ingotGold>], [<ore:nuggetKnightslime>, <ore:ingotGold>, <ore:nuggetKnightslime>]]);
remakeEx(<mctsmelteryio:upgrade:4>, [[<ore:nuggetManyullyn>, gemDiamondRat, <ore:nuggetManyullyn>], [gemDiamondRat, <mctsmelteryio:upgrade:3>, gemDiamondRat], [<ore:nuggetManyullyn>, gemDiamondRat, <ore:nuggetManyullyn>]]);

# Speed upgrade
remakeEx(<mctsmelteryio:upgrade:6>, [
	[<ore:gemEmerald>, <ore:listAllsugar>, <ore:gemEmerald>], 
	[<ic2:upgrade>, <mctsmelteryio:upgrade>, <ic2:upgrade>], 
	[<ore:gemEmerald>, <ore:listAllsugar>, <ore:gemEmerald>]
]);

	
# *======= Fuels =======*

for pos, names in utils.graph([
# ↑ Duration
	"                                                          l           o        p",
	"                                                k                               ",
	"                                     j  m  n                                    ",
	"                                 i                                              ",
	"                   e  f  g   h                                                  ",
	"*      a   c    d                                                               "],
# ┣━━━━━━━━━┷━━━━━━━━━┻━━━━━━━━━┷━━━━━━━━━╋╋━━━━━━━━━┷━━━━━━━━━┻━━━━━━━━━┷━━━━━━━━━┫
# |1000    2750     4500       6250      8000       9750     11500     13250  15000| Temp --->
{
	"*": ["steam"],
	"a": ["ic2pahoehoe_lava"],
	"b": ["biodiesel"],
	"c": ["diesel", "ic2biogas"],
	"d": ["gasoline", "crystaloil"],
	"e": ["boric_acid"],
	"f": ["hydrofluoric_acid"],
	"g": ["sulfuricacid"],
	"h": ["xu_demonic_metal", "rocket_fuel"],
	"i": ["refined_fuel"],
	"j": ["pyrotheum"],
	"m": ["rocketfuel"],
	"k": ["ic2uu_matter"],
	"l": ["neutron"],
	"n": ["empoweredoil"],
	"o": ["plasma"],
	"p": ["infinity_metal"],
}) {
	for name in names {
		var temp = (pos.x * (150 - 10) + 10) as int * 100;
		var time = (pos.y * ( 12 -  4) +  4) as int * 100;
		var liquid = game.getLiquid(name);

		utils.log("Register Smeltery fuel. Temp: "~temp~", Burn time: "~time~", Name: "~name);

		liquid.definition.temperature = temp;
		mods.tconstruct.Fuel.registerFuel(liquid * 50, time);
	}
}


# Remake some metals to able be melted only under amplyfiing tube
mods.mechanics.addTubeRecipe([<thaumcraft:amber_block>] as IItemStack[], <liquid:amber> * 1000);
mods.mechanics.addTubeRecipe([<minecraft:obsidian>] as IItemStack[], <liquid:crystal> * 1000);

# Remove cyclic recipes
mods.cyclicmagic.Melter.removeShapedRecipe("amber", 100);
mods.cyclicmagic.Melter.removeShapedRecipe("amber", 1000);
mods.cyclicmagic.Melter.removeShapedRecipe("crystal", 1000);

# Liquid blue slimy items
scripts.process.squeeze(<tconstruct:slime_dirt:1>,        <liquid:blueslime>*2000, null,  <biomesoplenty:mudball>);
scripts.process.squeeze(<tconstruct:slime_leaves>,        <liquid:blueslime>*500,  null, null);
scripts.process.squeeze(<tconstruct:slime_grass_tall>,    <liquid:blueslime>*200,  null, null);
scripts.process.squeeze(<tconstruct:slime_grass_tall:1>,  <liquid:blueslime>*200,  null, null);
scripts.process.squeeze(<tconstruct:slime_sapling>,       <liquid:blueslime>*1000, null, null);
scripts.process.squeeze(<tconstruct:slime_vine_blue_end>, <liquid:blueslime>*200,  null, null);
scripts.process.squeeze(<tconstruct:slime_vine_blue_mid>, <liquid:blueslime>*200,  null, <tconstruct:slime_vine_blue_end>);
scripts.process.squeeze(<tconstruct:slime_vine_blue>,     <liquid:blueslime>*200,  null, <tconstruct:slime_vine_blue_mid>);

# Liquid purple slimy items
scripts.process.squeeze(<tconstruct:slime_dirt:2>,          <liquid:purpleslime>*2000, null,  <biomesoplenty:mudball>);
scripts.process.squeeze(<tconstruct:slime_leaves:1>,        <liquid:purpleslime>*500,  null,  null);
scripts.process.squeeze(<tconstruct:slime_grass_tall:4>,    <liquid:purpleslime>*200,  null,  null);
scripts.process.squeeze(<tconstruct:slime_grass_tall:5>,    <liquid:purpleslime>*200,  null,  null);
scripts.process.squeeze(<tconstruct:slime_sapling:1>,       <liquid:purpleslime>*1000, null,  null);
scripts.process.squeeze(<tconstruct:slime_vine_purple_end>, <liquid:purpleslime>*200,  null,  null);
scripts.process.squeeze(<tconstruct:slime_vine_purple_mid>, <liquid:purpleslime>*200,  null,  <tconstruct:slime_vine_purple_end>);
scripts.process.squeeze(<tconstruct:slime_vine_purple>,     <liquid:purpleslime>*200,  null,  <tconstruct:slime_vine_purple_mid>);

# Remove cheap steel recipe
HighOven.removeMixRecipe(<liquid:steel>);

# More Scorched bricks recipes
mods.immersiveengineering.ArcFurnace.addRecipe(<tcomplement:materials:1>, <minecraft:brick>, <immersiveengineering:material:7>, 10, 512);

# Clay bucket use for casts
val bkt = <claybucket:claybucket>;
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast_clay>, bkt, <liquid:clay>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, bkt, <liquid:gold>, 288, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, bkt, <liquid:alubrass>, 144, true);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:cast>, bkt, <liquid:brass>, 144, true);

# Cast slimes from liquids (only blood have recipe now)
mods.tconstruct.Casting.addTableRecipe(<tconstruct:edible:2>, null, <liquid:purpleslime>, 250);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:edible:1>, null, <liquid:blueslime>  , 250);

# Slime blocks
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:slime_congealed:2>, null, <liquid:purpleslime>, 1000);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:slime_congealed:1>, null, <liquid:blueslime>  , 1000);

# Mud balls smelted into TCon bricks
furnace.remove(<biomesoplenty:mud_brick>);
furnace.addRecipe(<tconstruct:materials:1>, <biomesoplenty:mudball>);

# Mud bricks from TCon bricks
recipes.remove(<biomesoplenty:mud_brick_block>);
recipes.addShaped(<biomesoplenty:mud_brick_block> * 2, [
	[<tconstruct:materials:1>, <tconstruct:materials:1>, <tconstruct:materials:1>],
	[<tconstruct:materials:1>, null, <tconstruct:materials:1>], 
	[<tconstruct:materials:1>, <tconstruct:materials:1>, <tconstruct:materials:1>]
]);

# Osgloglas recipe after moving to tconevo
mods.tconstruct.Alloy.addRecipe(<liquid:osgloglas> * 144, [<liquid:osmium> * 144, <liquid:refined_obsidian> * 144,  <liquid:refined_glowstone> * 144]);