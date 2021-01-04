import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

# Thanks to the FTB Interactions devs for making me aware of this feature <3
var categoriesToHide as string[] = [
	
	"minecraft.fuel",
	"thermaldynamics.covers",
	"mysticalagriculture:reprocessor_jei",
	"jehc.market",
	"thermalexpansion.furnace",
	"thermalexpansion.factorizer_combine",
	"thermalexpansion.factorizer_split",
	"Painter",
	"forestry.bottler",
	"ic2.scrapbox",
	"EIOTank",
	"xu2_machine_extrautils2:furnace",
	"xu2_machine_extrautils2:generator_survival",
	"xu2_machine_extrautils2:generator",
  "mctsmelteryio:casting_machine",
  "mctsmelteryio:fuel_controller",
	"tcomplement:high_oven_melting",
	"mekanism.energizedsmelter",
];

for category in categoriesToHide {
	mods.jei.JEI.hideCategory(category);
}