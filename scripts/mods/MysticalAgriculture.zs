import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.craft.grid.Grid;

#modloaded mysticalagriculture

# Enderman Chunks -> Ender Pearls
mods.nuclearcraft.pressurizer.addRecipe(<mysticalagriculture:chunk:19> * 2, <minecraft:ender_pearl>);

# Wither Proof Blocks
recipes.addShapedMirrored("Wither Proof Block", 
<mysticalagriculture:witherproof_block> * 16, 
[[<enderio:block_reinforced_obsidian>, <enderio:block_reinforced_obsidian>, <enderio:block_reinforced_obsidian>],
[<enderio:block_reinforced_obsidian>, <ore:dyeBlack>, <enderio:block_reinforced_obsidian>], 
[<enderio:block_reinforced_obsidian>, <enderio:block_reinforced_obsidian>, <enderio:block_reinforced_obsidian>]]);

recipes.addShapedMirrored("Wither Proof Glass", 
<mysticalagriculture:witherproof_glass> * 16, 
[[<enderio:block_reinforced_obsidian>, <extrautils2:decorativeglass:3>, <enderio:block_reinforced_obsidian>],
[<extrautils2:decorativeglass:3>, <ore:dyeBlack>, <extrautils2:decorativeglass:3>], 
[<enderio:block_reinforced_obsidian>, <extrautils2:decorativeglass:3>, <enderio:block_reinforced_obsidian>]]);

# Readding Essence to Ingot recipes because of an unidentified bug - 20-12-2018
	recipes.addShaped("Lead Essence to Ingot", <thermalfoundation:material:131> * 4, [[<mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>],[<mysticalagriculture:lead_essence>, null, <mysticalagriculture:lead_essence>], [<mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>, <mysticalagriculture:lead_essence>]]);
	recipes.addShaped("Silver Essence to Ingot", <thermalfoundation:material:130> * 4, [[<mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>],[<mysticalagriculture:silver_essence>, null, <mysticalagriculture:silver_essence>], [<mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>, <mysticalagriculture:silver_essence>]]);
	recipes.addShaped("Tin Essence to Ingot", <thermalfoundation:material:129> * 8, [[<mysticalagriculture:tin_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:tin_essence>],[<mysticalagriculture:tin_essence>, null, <mysticalagriculture:tin_essence>], [<mysticalagriculture:tin_essence>, <mysticalagriculture:tin_essence>, <mysticalagriculture:tin_essence>]]);
	recipes.addShaped("Copper Essence to Ingot", <thermalfoundation:material:128> * 8, [[<mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>],[<mysticalagriculture:copper_essence>, null, <mysticalagriculture:copper_essence>], [<mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>, <mysticalagriculture:copper_essence>]]);

# Disabling Obsidian recipe, readding Essence recipe
	recipes.remove(<minecraft:obsidian>);
	recipes.addShaped("Obsidian From Essence", 
	<minecraft:obsidian> * 8, 
	[[<mysticalagriculture:obsidian_essence>, <mysticalagriculture:obsidian_essence>, <mysticalagriculture:obsidian_essence>],
	[<mysticalagriculture:obsidian_essence>, null, <mysticalagriculture:obsidian_essence>], 
	[<mysticalagriculture:obsidian_essence>, <mysticalagriculture:obsidian_essence>, <mysticalagriculture:obsidian_essence>]]);

# Ultimate Furnace
	recipes.remove(<mysticalagriculture:ultimate_furnace>);
	recipes.addShapedMirrored("Ultimate Furnace", 
	<mysticalagriculture:ultimate_furnace>, 
	[[<ore:blockInsaniumEssence>, <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), <ore:blockInsaniumEssence>],
	[<mysticalagriculture:supremium_furnace>, <extendedcrafting:storage:3>, <mysticalagriculture:supremium_furnace>], 
	[<quark:black_ash>, <mysticalagradditions:stuff:1>, <quark:black_ash>]]);

# Growth Accelerator
	recipes.remove(<mysticalagriculture:growth_accelerator>);
	recipes.addShapedMirrored("Growth Accelerator", 
	<mysticalagriculture:growth_accelerator> * 2, 
	[[<ore:blockInferiumEssence>, <ore:blockPrudentiumEssence>, <ore:blockInferiumEssence>],
	[<ore:manaDiamond>, <appliedenergistics2:quartz_growth_accelerator>, <ore:manaDiamond>], 
	[<ore:blockInferiumEssence>, <ore:blockPrudentiumEssence>, <ore:blockInferiumEssence>]]);

# Master Infusion Crystal
	recipes.remove(<mysticalagriculture:master_infusion_crystal>);
	scripts.wrap.astralsorcery.Altar.addConstellationAltarRecipe("enigmatica2expert:shaped/internal/altar/master_infusion_crystal",
		<mysticalagriculture:master_infusion_crystal>, 3000, 600, 
	[<botania:rune:12>, <botania:storage:3>, <botania:rune:15>,
	<botania:storage:2>, <matc:supremiumcrystal>.anyDamage(), <botania:storage>,
	<botania:rune:11>, <botania:storage:1>, <botania:rune:10>,
	<botania:spark>, <botania:spark>, <botania:spark>, <botania:spark>,
	<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <botania:manaresource:1>, <botania:manaresource:1>,
	<botania:manaresource:1>, <botania:manaresource:1>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>]);

# Tier 6 Crafting Seeds 
	recipes.remove(<mysticalagradditions:insanium:1>);
	scripts.wrap.forestry.Carpenter.addRecipe(<mysticalagradditions:insanium:1>, 
	[[<ore:listAllseed>,<mysticalagradditions:insanium>,<ore:listAllseed>],
	[<mysticalagradditions:insanium>,<mysticalagriculture:crafting:21>,<mysticalagradditions:insanium>],
	[<ore:listAllseed>,<mysticalagradditions:insanium>,<ore:listAllseed>]], 40, <liquid:sewage> * 1000);
	
# *======= Universal Recipe =======*

/*
	Astral Sorcery altair pattern:

	9   13  21  14  10

	15  0   1   2   16

	22  3   4   5   23

	17  6   7   8   18

	11  19  24  20  12
*/

static L as IIngredient[string] = {
  "¹": <mysticalagriculture:crafting:17>,
  "²": <mysticalagriculture:crafting:18>,
  "³": <mysticalagriculture:crafting:19>,
  "⁴": <mysticalagriculture:crafting:20>,
  "⁵": <mysticalagriculture:crafting:21>,
  "⁶": <mysticalagradditions:insanium:1>,
  
  "₁": <ore:essenceTier1>,
  "₂": <ore:essenceTier2>,
  "₃": <ore:essenceTier3>,
  "₄": <ore:essenceTier4>,
  "₅": <ore:essenceTier5>,
  
  "1": <ore:blockInferiumEssence>,
  "2": <ore:blockPrudentiumEssence>,
  "3": <ore:blockIntermediumEssence>,
  "4": <ore:blockSuperiumEssence>,
  "5": <ore:blockSupremiumEssence>,
  "6": <ore:blockInsaniumEssence>,
  
  "▪": <ore:ingotSuperium>,
  "▬": <ore:ingotSupremium>,
  "‗": <ore:ingotInsanium>,
  "┉": <ore:ingotCrystaltine>,
} as IIngredient[string];

static curr_tier as int = 1 as int;

function addTieredRecipe(
	output as IItemStack, 
	ingrs as IIngredient[], 
	constelation as string
) as void {
	if(isNull(output)) return;
	val tier = curr_tier;

	recipes.remove(output);

	L['○'] = ingrs[0];
	L['□'] = ingrs[ingrs.length==1?0:1];
	L['╳'] = ingrs.length==3 ? ingrs[2] : L['○₁₂₃₄₅'[tier - 1]];

	if(tier == 1) {
		recipes.addShapedMirrored(output, Grid([
			"╳1╳",
			"□¹□",
			"╳1╳"], L).shaped());
	} else
	
	if(tier == 2) {
		var grid = Grid([
			"╳2╳"+
			"2²2"+
			"╳2╳"+
			"○○□□"], L);
		scripts.wrap.astralsorcery.Altar.addAttunementAltarRecipe(
			craft.uniqueRecipeName(output, grid),	output, 500, 200, grid.shapeless());
	} else

	if(tier == 3) {
		var grid = Grid([
			"╳3╳"+
			"3³3"+
			"╳3╳"+
			"○○□□"], L);
		scripts.wrap.astralsorcery.Altar.addAttunementAltarRecipe(
			craft.uniqueRecipeName(output, grid),	output, 500, 200, grid.shapeless());
	} else

	if(tier == 4) {
		var grid = Grid([
			"╳4╳"+
			"4⁴4"+
			"╳4╳"+
			"○○□□"+
			"▪▪▪▪▪▪▪▪"], L);
		scripts.wrap.astralsorcery.Altar.addConstellationAltarRecipe(
			craft.uniqueRecipeName(output, grid),	output, 1500, 250, grid.shapeless());
	} else

	if(tier == 5) {
		var grid = Grid([
			"╳5╳"+
			"5⁵5"+
			"╳5╳"+
			"○○□□"+
			"▬▬▬▬▬▬▬▬"+
			"○○□□"+
			"☼"], L);
		scripts.wrap.astralsorcery.Altar.addTraitAltarRecipe(
			craft.uniqueRecipeName(output, grid),	output, 3500, 300,
			grid.shapeless(), "astralsorcery.constellation." ~ constelation
		);
	} else

	if(tier == 6) {
		L['▲'] = ingrs[min(ingrs.length, 2) - 1];
		var grid = Grid([
			"₅6₅"+
			"6⁶6"+
			"₅6₅"+
			"┉┉‗‗"+
			"○○□□▲▲○○"+
			"‗‗‗‗"+
			"☼"], L);
		scripts.wrap.astralsorcery.Altar.addTraitAltarRecipe(
			craft.uniqueRecipeName(output, grid),	output, 5500, 600,
			grid.shapeless(), "astralsorcery.constellation." ~ constelation
		);
	}
}

# *======= Seeds Tier 1 =======*
curr_tier = 1;
addTieredRecipe(<mysticalagriculture:nature_seeds>,         [<mysticalagriculture:crafting:6>, <ore:ingotInferium>], null);


# *======= Seeds Tier 2 =======*
curr_tier = 2;
addTieredRecipe(<mysticalagriculture:tier2_inferium_seeds>, [<ore:blockInferiumEssence>], null);
addTieredRecipe(<mysticalagriculture:aluminum_seeds>,       [<ore:blockAluminum>,<ore:runeWaterB>], null);
addTieredRecipe(<mysticalagriculture:copper_seeds>,         [<ore:blockCopper>,<ore:runeFireB>], null);
addTieredRecipe(<mysticalagriculture:mystical_flower_seeds>,[<ore:manaDiamond>, <ore:manaPearl>, <mysticalagriculture:crafting:10>], null);
addTieredRecipe(<mysticalagriculture:apatite_seeds>,        [<ore:blockApatite>,<ore:runeWaterB>], null);
addTieredRecipe(<mysticalagriculture:coal_seeds>,           [<ore:blockCoal>,<ore:runeEarthB>], null);
addTieredRecipe(itemUtils.getItem("mysticalcreations:creosolite_seeds"), [utils.tryCatch(utils.get("openblocks:tank", 0, 1, {tank: {FluidName: "creosote", Amount: 24000}}), Bucket("creosote")),<ore:runeEarthB>], null);
addTieredRecipe(<mysticalagriculture:tin_seeds> ,           [<ore:blockTin> ,<ore:runeSummerB> ], null);
addTieredRecipe(<mysticalagriculture:sky_stone_seeds> ,     [<appliedenergistics2:material:45>, <ore:runeSpringB>] , null);
addTieredRecipe(<mysticalagriculture:nether_seeds> ,        [<ore:blockNetherWart> ,<ore:runeAutumnB>], null);


# *======= Seeds Tier 3 =======*
curr_tier = 3;
addTieredRecipe(<mysticalagriculture:tier3_inferium_seeds>, [<ore:blockPrudentiumEssence>] , null);
addTieredRecipe(<mysticalagriculture:sulfur_seeds>,         [Bucket("sulfur"),<ore:runeAirB>], null);
addTieredRecipe(<mysticalagriculture:certus_quartz_seeds> , [<ore:blockCertusQuartz> ,<ore:runeSummerB>], null);
addTieredRecipe(<mysticalagriculture:aquamarine_seeds> ,    [<ore:oreAquamarine> , <ore:runeSpringB>], null);
addTieredRecipe(<mysticalagriculture:obsidian_seeds> ,      [<ore:plateDenseObsidian> ,<ore:runeAutumnB>], null);
addTieredRecipe(<mysticalagriculture:redstone_seeds> ,      [<ore:blockRedstone> ,<ore:runeAutumnB>], null);
addTieredRecipe(<mysticalagriculture:glowstone_seeds> ,     [<ore:glowstone> , <ore:runeWinterB>], null);
addTieredRecipe(<mysticalagriculture:nether_quartz_seeds> , [<ore:blockQuartz> ,<ore:runeSummerB>], null);
addTieredRecipe(<mysticalagriculture:iron_seeds> ,          [<ore:blockFakeIron> ,<ore:runeSummerB>], null);
addTieredRecipe(<mysticalagriculture:lead_seeds> ,          [<ore:blockLead> , <ore:runeWinterB>], null);
addTieredRecipe(<mysticalagriculture:silver_seeds> ,        [<ore:blockSilver> ,<ore:runeSpringB>], null);
addTieredRecipe(<mysticalagriculture:knightslime_seeds> ,   [<ore:blockKnightslime> ,<ore:runeWinterB>], null);
addTieredRecipe(<mysticalagriculture:steeleaf_seeds> ,      [<twilightforest:block_storage:2>, <ore:runeSpringB>] , null);
addTieredRecipe(<mysticalagriculture:ironwood_seeds> ,      [<twilightforest:block_storage>, <ore:runeSummerB>] , null);
addTieredRecipe(<mysticalagriculture:black_quartz_seeds> ,  [<ore:blockQuartzBlack> , <ore:runeAutumnB>], null);
addTieredRecipe(itemUtils.getItem("mysticalcreations:cheese_seeds"), [<ore:cheeseWheels> ,<ore:runeSpringB>], null);

# *======= Seeds Tier 4 =======*
curr_tier = 4;
addTieredRecipe(<mysticalagriculture:tier4_inferium_seeds>, [<ore:blockIntermediumEssence>], null);
addTieredRecipe(<mysticalagriculture:thaumium_seeds>,       [<ore:blockThaumium> ,<ore:runeWrathB>], null);
addTieredRecipe(<mysticalagriculture:ruby_seeds>,           [<biomesoplenty:gem_block:1> ,<ore:runeEnvyB>], null);
addTieredRecipe(<mysticalagriculture:fiery_ingot_seeds>,    [<twilightforest:block_storage:1>, <ore:runeManaB>], null);
addTieredRecipe(<mysticalagriculture:knightmetal_seeds>,    [<twilightforest:knightmetal_block>, <ore:runeManaB>], null);
addTieredRecipe(<mysticalagriculture:fluix_seeds>,          [<appliedenergistics2:fluix_block> ,<ore:runeManaB>], null);
addTieredRecipe(<mysticalagriculture:ardite_seeds>,         [<ore:blockArdite> ,<ore:runeWrathB>], null);
addTieredRecipe(<mysticalagriculture:peridot_seeds>,        [<biomesoplenty:gem_block:2> ,<ore:runeGluttonyB>], null);
addTieredRecipe(<mysticalagriculture:cobalt_seeds>,         [<ore:blockCobalt> ,<ore:runeWrathB>], null);
addTieredRecipe(<mysticalagriculture:sapphire_seeds>,       [<biomesoplenty:gem_block:6> ,<ore:runePrideB>], null);
addTieredRecipe(<mysticalagriculture:lapis_lazuli_seeds>,   [<ore:blockLapis> ,<ore:runeSlothB>], null);
addTieredRecipe(<mysticalagriculture:gold_seeds>,           [<ore:blockGold> ,<ore:runeSlothB>], null);
addTieredRecipe(<mysticalagriculture:amber_seeds>,          [<ore:blockAmber> ,<ore:runeGluttonyB>], null);
addTieredRecipe(<mysticalagriculture:topaz_seeds>,          [<biomesoplenty:gem_block:3> ,<ore:runeGluttonyB>], null);
addTieredRecipe(<mysticalagriculture:osmium_seeds>,         [<ore:blockOsmium> ,<ore:runeEnvyB>], null);
addTieredRecipe(<mysticalagriculture:malachite_seeds>,      [<biomesoplenty:gem_block:5> ,<ore:runePrideB>], null);
addTieredRecipe(<mysticalagriculture:tanzanite_seeds>,      [<biomesoplenty:gem_block:4> ,<ore:runeLustB>], null);
addTieredRecipe(<mysticalagriculture:nickel_seeds>,         [<ore:blockNickel> ,<ore:runeGreedB>], null);
addTieredRecipe(<mysticalagriculture:end_seeds>,            [<excompressum:compressed_block:10> ,<ore:runeLustB>], null);
addTieredRecipe(<mysticalagriculture:fluxed_electrum_seeds>,[<ore:blockElectrumFlux> ,<ore:runeGreedB>], null);
addTieredRecipe(<mysticalagriculture:diamond_seeds>,        [<ore:blockDiamond> ,<ore:runePrideB>], null);
addTieredRecipe(<mysticalagriculture:emerald_seeds>,        [<ore:blockEmerald> ,<ore:runeEnvyB>], null);
addTieredRecipe(<mysticalagriculture:ender_amethyst_seeds>, [<ore:blockAmethyst>, <astralsorcery:itemcoloredlens:2>], null);
addTieredRecipe(<mysticalagriculture:void_metal_seeds>,     [<ore:blockVoid>], null);
addTieredRecipe(<mysticalagriculture:rock_crystal_seeds>,   [<astralsorcery:itemcelestialcrystal:*>], "mineralis");
addTieredRecipe(<mysticalagriculture:uranium_seeds>,        [<ore:blockUranium>], "mineralis");


# *======= Seeds Tier 5 =======*
curr_tier = 5;
L['☼'] = <minecraft:nether_star>;
addTieredRecipe(<mysticalagriculture:tier5_inferium_seeds>, [<ore:blockSuperiumEssence>], "aevitas");
addTieredRecipe(<mysticalagriculture:platinum_seeds>,       [<ore:blockPlatinum>], "mineralis");
addTieredRecipe(<mysticalagriculture:draconium_seeds>,      [<ore:blockDraconium>], "mineralis");
addTieredRecipe(<mysticalagradditions:neutronium_seeds>,    [<ore:ingotCosmicNeutronium>], "mineralis");


# *======= Seeds Tier 6 =======*
curr_tier = 6;
addTieredRecipe(<mysticalagradditions:tier6_inferium_seeds>    , [<ore:blockSupremiumEssence>   , <astralsorcery:itemcoloredlens:2>, <botania:prism>],"aevitas");
addTieredRecipe(<mysticalagriculture:iridium_seeds>            , [<ore:blockIridium>            , <astralsorcery:itemcoloredlens:2>],"mineralis");
addTieredRecipe(<mysticalagriculture:enderium_seeds>           , [<ore:blockEnderium>           , <astralsorcery:itemcoloredlens:2>],"mineralis");
addTieredRecipe(<mysticalagriculture:terrasteel_seeds>         , [<botania:storage:1>           , <botania:laputashard>, <botania:prism>],"mineralis");

L['☼'] = <ore:blockNetherStar>;
addTieredRecipe(<mysticalagradditions:awakened_draconium_seeds>, [<ore:blockDraconiumAwakened>  , <astralsorcery:itemcoloredlens:2>, <draconicevolution:wyvern_energy_core>] ,"mineralis");
addTieredRecipe(<mysticalagradditions:nether_star_seeds>       , [<ore:blockNetherStar>         , <astralsorcery:itemcoloredlens:2>], "aevitas");
addTieredRecipe(<mysticalagradditions:dragon_egg_seeds>        , [<mysticalagradditions:stuff:3>], "aevitas");
addTieredRecipe(itemUtils.getItem("mysticalcreations:ultimate_seeds") , [<ore:blockUltimate>           ], "horologium");


# *======= Remove & Hide =======*
	
var itemsToRemoveAndHide as IItemStack[] = [
	<mysticalagriculture:chunk>,
	<mysticalagriculture:chunk:1>,
	<mysticalagriculture:chunk:2>,
	<mysticalagriculture:chunk:3>,
	<mysticalagriculture:chunk:4>,
	<mysticalagradditions:insanium:4>
];

for item in itemsToRemoveAndHide {
	utils.rh(item);
}

# *======= Unification =======*

# Sulfur Essence to Dust
  recipes.removeByRecipeName("mysticalagriculture:dustsulfur");
  recipes.addShapeless("Mystical Agriculture Sulfur", <thermalfoundation:material:771> * 8, [<mysticalagriculture:sulfur_essence>,<mysticalagriculture:sulfur_essence>,<mysticalagriculture:sulfur_essence>]);

# Uranium Essence to Ingot
  recipes.removeByRecipeName("mysticalagriculture:ingoturanium");
  recipes.addShaped("Mystical Agriculture Uranium", <immersiveengineering:metal:5> * 3, [[<mysticalagriculture:uranium_essence>,<mysticalagriculture:uranium_essence>,<mysticalagriculture:uranium_essence>],[<mysticalagriculture:uranium_essence>,null,<mysticalagriculture:uranium_essence>],[<mysticalagriculture:uranium_essence>,<mysticalagriculture:uranium_essence>,<mysticalagriculture:uranium_essence>]]);
	
# Changed Amber Essence to the more sensible amber
  recipes.removeByRecipeName("mysticalagriculture:gemamber");
  recipes.addShaped("Mystical Agriculture Amber", <thaumcraft:amber> * 6, [[<mysticalagriculture:amber_essence>,<mysticalagriculture:amber_essence>,<mysticalagriculture:amber_essence>],[<mysticalagriculture:amber_essence>,null,<mysticalagriculture:amber_essence>],[<mysticalagriculture:amber_essence>,<mysticalagriculture:amber_essence>,<mysticalagriculture:amber_essence>]]);

# Recycling can
scripts.process.recycleMetal(<mysticalagriculture:watering_can:0>, <mysticalagriculture:crafting:33> * 4, null, null);
scripts.process.recycleMetal(<mysticalagriculture:watering_can:1>, <mysticalagriculture:crafting:34> * 4, null, null);
scripts.process.recycleMetal(<mysticalagriculture:watering_can:2>, <mysticalagriculture:crafting:35> * 4, null, null);
scripts.process.recycleMetal(<mysticalagriculture:watering_can:3>, <mysticalagriculture:crafting:36> * 4, null, null);
scripts.process.recycleMetal(<mysticalagriculture:watering_can:4>, <mysticalagriculture:crafting:37> * 4, null, null);

# Hydroponics Inferium grows
val inferCount = {
	<mysticalagriculture:tier1_inferium_seeds>  : 3,
	<mysticalagriculture:tier2_inferium_seeds>  : 6,
	<mysticalagriculture:tier3_inferium_seeds>  : 9,
	<mysticalagriculture:tier4_inferium_seeds>  : 12,
	<mysticalagriculture:tier5_inferium_seeds>  : 15,
	<mysticalagradditions:tier6_inferium_seeds> : 18,
} as int[IItemStack];

for seed, count in inferCount {
	scripts.process.grow(seed, <mysticalagriculture:crafting> * count, "only: Hydroponics", seed, 1.0f);
}

# Remake crystals to consume previous level
var crystals = [
	<mysticalagriculture:infusion_crystal>,
	<matc:inferiumcrystal>,
	<matc:prudentiumcrystal>,
	<matc:intermediumcrystal>,
	<matc:superiumcrystal>,
	<matc:supremiumcrystal>,
] as IItemStack[];

# Infusion crystals
var prospetry = <mysticalagriculture:crafting:5>;
for i in 0 .. 5 {
	craft.remake(crystals[i+1], ["ABA","BCB","ABA"], {
		A: prospetry, 
		B: itemUtils.getItem("mysticalagriculture:crafting", i), 
		C: crystals[i].anyDamage().noReturn().marked("marked")}, 
		function(out, ins, cInfo) {
			if(ins has "marked" && !isNull(ins.marked) && ins.marked.isDamageable && out.isDamageable) {
				return out.withDamage(ins.marked.damage);
			}
			return out;
		});
}

# ######################################################################
#
# Harder Supremium armor 
#
# ######################################################################

var liquidAmount = [4,6,5,4] as int[];
var bases = [
	<contenttweaker:supremium_helmet_base>  ,
	<contenttweaker:supremium_chest_base>   ,
	<contenttweaker:supremium_leggings_base>,
	<contenttweaker:supremium_boots_base>   ,
] as IItemStack[];
var cores = [
	<conarm:helmet_core>  .withTag({Material: "ma.supremium"}),
	<conarm:chest_core>   .withTag({Material: "ma.supremium"}),
	<conarm:leggings_core>.withTag({Material: "ma.supremium"}),
	<conarm:boots_core>   .withTag({Material: "ma.supremium"}),
] as IItemStack[];

var castNames = [
	"conarm:helmet_core",
	"conarm:chest_core",
	"conarm:leggings_core",
	"conarm:boots_core",
] as string[];

for i in 0 .. 4 {
	var l = 144 * liquidAmount[i];

	# Replace casting of cores to Base ones
	mods.tconstruct.Casting.removeTableRecipe(cores[i]);
	scripts.wrap.tconstruct.Casting.addTableRecipe(bases[i], <tconstruct:cast>     .withTag({PartType: castNames[i]}), <liquid:supremium>, l, false);
	scripts.wrap.tconstruct.Casting.addTableRecipe(bases[i], <tconstruct:clay_cast>.withTag({PartType: castNames[i]}), <liquid:supremium>, l, true);

	# Add core base melting
	scripts.wrap.tconstruct.Melting.addRecipe(<liquid:supremium> * l, bases[i]);

	# Add recipe of making core from base
	# mods.rt.RandomThingsTweaker.addAnvilRecipe(IItemStack input1, IItemStack input2, IItemStack result, int levelcost);
	if(!isNull(loadedMods["rockytweaks"])) {
		mods.rockytweaks.Anvil.addRecipe(<mysticalagriculture:master_infusion_crystal>, bases[i], cores[i], 350);
	} else {
		recipes.addShapeless("core from crystal " ~i, cores[i], [<mysticalagriculture:master_infusion_crystal>, bases[i]]);
	}
}

# Missed 4 types of dyes
val dyeEssence = {x: <mysticalagriculture:dye_essence>} as IIngredient[string];
craft.make(<biomesoplenty:green_dye> * 4, ["pretty",
	"x    ",
	"  x  ",
	"x    "], dyeEssence);
craft.make(<biomesoplenty:brown_dye> * 4, ["pretty",
	"  x  ",
	"    x",
	"  x  "], dyeEssence);
craft.make(<biomesoplenty:blue_dye> * 4, ["pretty",
	"    x",
	"  x  ",
	"    x"], dyeEssence);
craft.make(<biomesoplenty:white_dye> * 4, ["pretty",
	"  x  ",
	"x    ",
	"  x  "], dyeEssence);

# Squeeze cow essence
scripts.process.squeeze([<mysticalagriculture:cow_essence>], <liquid:milk> * 250, "no exceptions", null);

# Squeeze water essence
scripts.process.squeeze([<mysticalagriculture:water_essence>], <liquid:water> * 250, "no exceptions", null);

# Saplings from essence
# ----------------------------

static groups as int[][IIngredient][string] = {
	biomesoplenty: {<biomesoplenty:biome_essence>: [0,1,2,3]},
	tconstruct   : {<ore:slimeball>: [0,1,2,3]},
	other        : {<mysticalagriculture:nature_essence>: [0,1,2,3]},
} as int[][IIngredient][string];

for sap in <ore:treeSapling>.items {
	if(sap.damage == 32767)
    for sap0 in sap.definition.subItems {
			handleSapling(sap0);
		}
	else
		handleSapling(sap);
}

static counter as int[] = [0] as int[];

function handleSapling(sap as IItemStack) as void {
	val owner = sap.definition.owner;

	if(owner == "biomesoplenty") {
		if(sap.matches(<biomesoplenty:sapling_1:7>)) return;
		addSaplingsRecipe(sap * 10, groups.biomesoplenty);
	} else

	if (owner == "tconstruct") {
		addSaplingsRecipe(sap * 6, groups.tconstruct);
	} else

	if (!owner.matches("minecraft|harvestcraft|twilightforest|randomthings|forestry|advancedrocketry|integrateddynamics")) {
		addSaplingsRecipe(sap * 6, groups.other);
	}
}

function shiftGroup(a as int[], n as int) as void {
	a[n] = a[n] + 1;
	if(a[n] > 5 + n) {
		if(n == 0) {
			a[0] = 0;
			return;
		}
		shiftGroup(a, n - 1);
		a[n] = a[n - 1] + 1;
	}
}


static defGroup as IIngredient[] = [
	<mysticalagriculture:nature_essence>,
	<mysticalagriculture:nature_essence>,
	<mysticalagriculture:wood_essence>,
	<mysticalagriculture:wood_essence>,
] as IIngredient[];


function getIngredients(group as int[][IIngredient]) as IIngredient[][] {
	val map = [
		[null, null, null],
		[null, null, null],
		[null, null, null]
	] as IIngredient[][];

	for i0, arr in group {
		for i, pos in arr {
			val x as int = pos % 3;
			val y = (pos / 3) as int;
			map[y][x] = i==0 ? i0 : defGroup[i];
		}

		shiftGroup(arr, 3);
	}
	return map;
}

function addSaplingsRecipe(sap as IItemStack, group as int[][IIngredient]) {
	recipes.addShaped(sap.definition.owner~" sapling #"~counter[0], sap, getIngredients(group));
	counter[0] = counter[0] + 1;
}

# ----------------------------

# Remove previous 1 -> 4
recipes.removeByRecipeName("mysticalagriculture:core/compression/inferium_essence_from");
recipes.removeByRecipeName("mysticalagriculture:core/compression/prudentium_essence_from");
recipes.removeByRecipeName("mysticalagriculture:core/compression/intermedium_essence_from");
recipes.removeByRecipeName("mysticalagriculture:core/compression/superium_essence_from");
recipes.removeByRecipeName("mysticalagradditions:insanium_essence_from");

# 1 -> 4 required crystal
val essesnses = [
	<ore:essenceInsanium>.firstItem,
	<ore:essenceSupremium>.firstItem,
	<ore:essenceSuperium>.firstItem,
	<ore:essenceIntermedium>.firstItem,
	<ore:essencePrudentium>.firstItem,
	<ore:essenceInferium>.firstItem,
] as IItemStack[];

# Create ingredient for any crystal
var anyDamageCrystal as IIngredient = <ore:infusionCrystal>.itemArray[0].anyDamage();
for i, it in <ore:infusionCrystal>.itemArray {
	if(i==0) continue;
	anyDamageCrystal = anyDamageCrystal.or(it.anyDamage());
}

for i, ess in essesnses {
	if(i==0) continue;
	craft.shapeless(ess * 4, "AB", {A: anyDamageCrystal, B: essesnses[i - 1]});
}

# New Crystals entry
mods.rats.recipes.addChefRatRecipe(<ore:quartzMana>.firstItem, <mysticalagriculture:infusion_crystal>);

# [Fertilized_Essence*2] from [Inferium_Essence][+1]
craft.shapeless(<mysticalagriculture:fertilized_essence> * 3, "AB", {
  A: <ore:fertilizer>,     # Fertilizer
  B: <ore:essenceInferium> # Inferium Essence
});

# Better enderpearl recipe
recipes.removeByRecipeName("mysticalagriculture:ender_pearl");
craft.shapeless(<minecraft:ender_pearl> * 6, "AAA", {A: <mysticalagriculture:enderman_essence>});

# Base essence harder to use more magic
recipes.removeByRecipeName("mysticalagriculture:crafting_16");
scripts.process.solution(
	[<ore:shardProsperity>, <ore:powderMana>, <ore:dustAstralStarmetal>],
	[<liquid:brass> * 16],
	[<liquid:base_essence> * 16],
	[0.5, 0.05, 0.05, 3300], "only: highoven"
);

# [Base Crafting Seed] Harder to encourage Villager Trades
craft.remake(<mysticalagriculture:crafting:16>, ["pretty",
  "l l l",
  "l s l",
  "l l l"], {
  "l": <ore:shardProsperity>,
  "s": <ore:seed>,
});