import mods.requious.Assembly;
import mods.requious.AssemblyRecipe;
import mods.requious.SlotVisual;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

#priority 1000
#modloaded requious

function add(ass as Assembly, chunk as IItemStack[][IIngredient[]]) {
  for inputs, outputs in chunk {
    val assRec = AssemblyRecipe.create(function(container) {
      for i, output in outputs {
        container.addItemOutput("output" ~ i, output);
      }
    });
    for i, input in inputs {
      assRec.requireItem("input"~i, input);
    }
    ass.addJEIRecipe(assRec);
  }
}

function addInsOuts(ass as Assembly, inputs as int[][], outputs as int[][]) {
  for j,way in ['input', 'output'] as string[] {
    for i,pair in (j==0 ? inputs : outputs) {
      ass.setJEIItemSlot(pair[0], pair[1], way ~ i);
    }
  }
}

function getVisGauge(u as int, w as int) as SlotVisual {
  return SlotVisual.create(1,1).addPart("requious:textures/gui/assembly_gauges.png",u,w);
}
function getVisSlots(u as int, w as int) as SlotVisual {
  return SlotVisual.create(1,1).addPart("requious:textures/gui/assembly_slots.png",u,w);
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
var 
x = <assembly:infernal_furnace>;
x.addJEICatalyst(<thaumcraft:infernal_furnace>);
x.setJEIDurationSlot(1,0,"duration", SlotVisual.arrowRight());
x.setJEIDurationSlot(2,0,"duration", getVisGauge(1,13));
addInsOuts(x, [[0,0]], [[3,0]]);

function add_infernal_furnace(input as IIngredient, out as IItemStack) {
  add(<assembly:infernal_furnace>, {[input] as IIngredient[]: [out]});
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:liquid_interaction>;
x.addJEICatalyst(<minecraft:lava_bucket>);
x.setJEIDurationSlot(1,0,"duration", getVisGauge(0,6));
addInsOuts(x, [[0,0],[2,0]], [[1,1]]);

function add_liquid_interaction(input1 as IIngredient, input2 as IIngredient, out as IItemStack) {
  add(<assembly:liquid_interaction>, {[input1, input2] : [out]});
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:everflow_chalice>;
x.addJEICatalyst(<astralsorcery:blockchalice>);
x.setJEIDurationSlot(1,0,"duration", getVisGauge(0,6));
addInsOuts(x, [[0,0],[2,0]], [[1,1], [0,2], [2,2]]);

function add_everflow_chalice(input1 as IIngredient, input2 as IIngredient, out as IItemStack[]) {
  add(<assembly:everflow_chalice>, {[input1, input2] : out});
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:liquid_heat_exchanger>;
x.addJEICatalyst(<ic2:te:31>);
x.setJEIFluidSlot(0, 0, 'liquid_input');
x.setJEIItemSlot(1, 0, 'item_in');
x.setJEIDurationSlot(2,0,"duration", getVisGauge(5,1));
x.setJEIFluidSlot(3, 0, 'liquid_output');

for l_in, l_out in {
  lava: 'ic2pahoehoe_lava',
  ic2hot_coolant: 'ic2coolant',
} as string[string] {
  x.addJEIRecipe(AssemblyRecipe.create(function(container) {
    container.addFluidOutput('liquid_output', game.getLiquid(l_out));
  })
  .requireFluid('liquid_input', game.getLiquid(l_in))
  .requireItem("item_in", <ic2:crafting:7>)
  );
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:neromantic_prime>;
x.addJEICatalyst(<astralsorcery:blockbore>);
x.addJEICatalyst(<astralsorcery:blockborehead>);
x.addJEICatalyst(<astralsorcery:blockchalice>);

static fluidOutputs as ILiquidStack[] = [
/*Inject_js(
config('astralsorcery/fluid_rarities.cfg').data.data
.slice(0, 9*5)
.map(l=>l.split(';'))
.map(l=>[
  parseInt(l[3]),
  `  <fluid:${(l[0]+'>').padEnd(24)} * ${l[3]},`
])
.sort(([a], [b]) => b - a)
.map(([_,l])=>l)
.join('\n')
)*/
  <fluid:mana>                    * 1500,
  <fluid:amber>                   * 800,
  <fluid:xpjuice>                 * 500,
  <fluid:pyrotheum>               * 200,
  <fluid:cryotheum>               * 200,
  <fluid:hydrofluoric_acid>       * 120,
  <fluid:mutagen>                 * 100,
  <fluid:vibrant_alloy>           * 40,
  <fluid:ic2uu_matter>            * 1,
/**/
];

for i, fluid in fluidOutputs {
  x.setJEIFluidSlot(i % 9, (i / 9) as int, 'f'~i);
}
x.addJEIRecipe(AssemblyRecipe.create(function(container) {
  for i, output in fluidOutputs {
    container.addFluidOutput("f"~i, output);
  }
}));

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:scented_hive>;
x.addJEICatalyst(<exnihilocreatio:hive:1>);
x.setJEIDurationSlot(3,0,"duration", getVisSlots(5,1));
addInsOuts(x, [[1,1],[1,0],[2,0],[0,0]], [[4,0]]);

val worldItem as IItemStack[int] = {
  0: <biomesoplenty:earth>.withTag({display:{Name:"§6OVERWORLD"}}),
  1: <biomesoplenty:earth>.withTag({display:{Name:"§6THE END"}}),
};

/*Inject_js(
JSON.parse(loadText('config/exnihilocreatio/ScentedHiveRegistry.json'))
.map(l=>`add(x, {[worldItem[${l.dim}], ${'<exnihilocreatio:hive:1>'}, ${
  Object.keys(l.adjacentBlocks).map(i=>`<${i}>`).join(', ')
}] : [<${l.hive}>]});`)
.join('\n')
)*/
add(x, {[worldItem[0], <exnihilocreatio:hive:1>, <ore:treeLeaves>, <ore:logWood>] : [<forestry:beehives:0>]});
add(x, {[worldItem[0], <exnihilocreatio:hive:1>, <ore:flower>] : [<forestry:beehives:1>]});
add(x, {[worldItem[0], <exnihilocreatio:hive:1>, <ore:sand>] : [<forestry:beehives:2>]});
add(x, {[worldItem[0], <exnihilocreatio:hive:1>, <minecraft:log:3>, <ore:treeLeaves>] : [<forestry:beehives:3>]});
add(x, {[worldItem[1], <exnihilocreatio:hive:1>, <minecraft:end_stone:0>] : [<forestry:beehives:4>]});
add(x, {[worldItem[0], <exnihilocreatio:hive:1>, <minecraft:ice:0>, <minecraft:snow:0>] : [<forestry:beehives:5>]});
add(x, {[worldItem[0], <exnihilocreatio:hive:1>, <ore:dirt>] : [<forestry:beehives:6>]});
/**/

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:oc_printer3d>;
x.addJEICatalyst(<opencomputers:printer>);
x.setJEIDurationSlot(2,0,"duration", getVisGauge(1,8));
addInsOuts(x, [[0,0],[1,0]], [[3,0]]);
add(x, {[<opencomputers:material:28>, <ore:dye>] : [<opencomputers:print>]});

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:cc_printer>;
x.addJEICatalyst(<computercraft:peripheral:3>);
x.setJEIDurationSlot(2,0,"duration", getVisGauge(1,8));
addInsOuts(x, [[0,0],[1,0]], [[3,0]]);
add(x, {[<minecraft:paper>, <ore:dye>] : [<computercraft:printout>]});

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:witch_water>;
x.addJEICatalyst(Bucket('witchwater'));
x.setJEIDurationSlot(1,0,"duration", getVisGauge(1,8));
addInsOuts(x, [[0,0]], [[2,0]]);
add(x, {[Soul('minecraft:skeleton')] : [Soul('minecraft:wither_skeleton')]});
add(x, {[Soul('minecraft:creeper')]  : [Soul('minecraft:creeper')]});
add(x, {[Soul('minecraft:slime')]    : [Soul('minecraft:magma_cube')]});
add(x, {[Soul('minecraft:spider')]   : [Soul('minecraft:cave_spider')]});
add(x, {[Soul('minecraft:squid')]    : [Soul('minecraft:ghast')]});
add(x, {[Soul('minecraft:villager')] : [Soul('minecraft:zombie_villager')]});
add(x, {[Soul('minecraft:pig')]      : [Soul('minecraft:zombie_pigman')]});

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:meteor>;
x.addJEICatalyst(<bloodmagic:ritual_diviner:1>.withTag({current_ritual: "meteor"}));
x.setJEIDurationSlot(1,1,"duration", getVisGauge(1,8));
x.setJEIItemSlot (0, 1, 'f0');
x.setJEIFluidSlot(0, 0, 'f1');

static meteors as string[][] = [
/*Inject_js(
fs.readdirSync('config/bloodmagic/meteors')
.map(filename => JSON.parse(loadText('config/bloodmagic/meteors/' + filename)))
.map(f=>
  [
  `${f.catalystStack.registryName.domain}:${f.catalystStack.registryName.path}`,
  f.catalystStack.meta,
  f.cost,
  ...f.components.map(c=>c.oreName.substring(3))
  ]
 .map(s=>`"${s}"`).join(', ')
).map(s=>`[${s}]`).join(',\n')
)*/
["minecraft:iron_block", "0", "600000", "Iron", "Copper", "Tin", "Silver", "Lead", "Gold", "Lapis", "Redstone", "Aluminum"],
["thermalfoundation:storage", "6", "600000", "Iron", "Copper", "Tin", "Gold", "AstralStarmetal", "Draconium", "Nickel", "Osmium", "Platinum", "Rutile", "Uranium"],
["thermalfoundation:storage", "7", "1000000", "Iron", "Gold", "Lapis", "Emerald", "Redstone", "Diamond", "Iridium", "Mithril"],
["nuclearcraft:ingot_block", "3", "1100000", "Thorium", "Boron", "Lithium", "Magnesium"],
["minecraft:emerald_block", "0", "1400000", "Lapis", "Diamond", "Emerald", "Coal", "Ruby", "Peridot", "Topaz", "Tanzanite", "Malachite", "Sapphire", "Amber", "Apatite", "CertusQuartz", "Cinnabar", "Prosperity", "QuartzBlack"],
["tconstruct:metal", "1", "1700000", "Quartz", "NetherAluminum", "NetherCopper", "NetherLead", "NetherNickel", "NetherRedstone", "NetherLapis", "NetherIron", "NetherGold", "NetherEmerald", "NetherDiamond", "NetherCoal", "NetherPlatinum", "NetherSilver", "NetherTin", "NetherCertusQuartz", "NetherChargedCertusQuartz", "NetherOsmium", "NetherUranium", "Cobalt", "Ardite"]
/**/
];

var k = 0;
var maxRows = 0;
for t in meteors { if(t.length > maxRows) maxRows = t.length; }
for _y in 0 .. ((maxRows - 4) / 7 + 1) as int {
  for _x in 2 .. 9 {
    x.setJEIItemSlot(_x, _y, 'i'~k);
    k += 1;
  }
}

for i, meteor in meteors {
  val meteorAss = AssemblyRecipe.create(function(container) {
    for i, ore in meteor {
      if(i<3) continue;
      container.addItemOutput("i"~(i - 3), oreDict.get('ore' ~ ore).firstItem);
    }
  });
  meteorAss.requireItem('f0', itemUtils.getItem(meteor[0], meteor[1]));
  meteorAss.requireFluid('f1', <fluid:lifeessence> * (meteor[2] as int));
  x.addJEIRecipe(meteorAss);
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
static turbineFuel as int[string][] = [
/*Inject_js(
[...
  loadText('config/AdvGenerators/overrides/turbine.cfg')
  .matchAll(/^\s+turbine-fuel\s*:\s*([^\s]+)\s+([^\s]+)\s+.*$/gm)
].sort((a,b)=>a[2] - b[2])
.map(([_, name, mj_mb])=>`  {${name.padEnd(16)}: ${mj_mb}},`)
.join('\n')
)*/
  {liquidhydrogen  : 4},
  {gasoline        : 5},
  {canolaoil       : 10},
  {refinedcanolaoil: 20},
  {oil             : 25},
  {biomass         : 30},
  {biodiesel       : 40},
  {crystaloil      : 40},
  {ic2biogas       : 50},
  {diesel          : 70},
  {ethene          : 80},
  {biofuel         : 90},
  {refined_oil     : 95},
  {rocket_fuel     : 95},
  {refined_fuel    : 105},
  {rocketfuel      : 110},
  {fire_water      : 120},
  {empoweredoil    : 120},
/**/
];

x = <assembly:turbine>;
x.addJEICatalyst(<advgenerators:turbine_controller>);
x.setJEIDurationSlot(1,0,"duration", getVisGauge(0,5));
x.setJEIFluidSlot(0, 0, 'liquid_input');
x.setJEIEnergySlot(2, 0, 'energy_out', "rf");

for map in turbineFuel {
  for name, mj_mb in map {
    val liq = game.getLiquid(name);
    if(isNull(liq)) {
      logger.logWarning('Liquid ['~name~'] not exist. Remove it from config/AdvGenerators/overrides/turbine.cfg');
      continue;
    }
    x.addJEIRecipe(AssemblyRecipe.create(function(container) {
      container.addEnergyOutput('energy_out', mj_mb, 0);
    }).requireFluid('liquid_input', liq));
  }
}

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
x = <assembly:forestry_farm>;
x.setJEIItemSlot(0, 0, 'item_in');
x.setJEIDurationSlot(1,0,"duration", getVisSlots(11,1));
for i in 0 .. 11 {
  x.addJEICatalyst(<forestry:ffarm:3>.withTag({FarmBlock: i}));
}

static fertilizers as IItemStack[] = [
/*Inject_js(
(()=>{
let t = config('forestry/farm.cfg').fertilizers.items
  .map(l=>l.split(';'))
let max =       Math.max(...t.map(l=>l[1]))
let qnt = max / Math.min(...t.map(l=>l[1])) + 1
return t
  .sort((a,b)=>b[1]-a[1])
  .map(([id,value])=>`  <${id}> * ${
    Math.min(64, Math.max(1, qnt * max / value | 0))
  },`)
  .join('\n')
})()
)*/
  <thermalfoundation:fertilizer:2> * 7,
  <mysticalagriculture:mystical_fertilizer> * 8,
  <mysticalagriculture:fertilized_essence> * 13,
  <thermalfoundation:fertilizer:1> * 14,
  <industrialforegoing:fertilizer> * 15,
  <botania:fertilizer> * 17,
  <forestry:fertilizer_compound> * 21,
  <actuallyadditions:item_fertilizer> * 42,
  <ic2:crop_res:2> * 42,
  <thermalfoundation:fertilizer> * 42,
/**/
];

for input in fertilizers {
  x.addJEIRecipe(AssemblyRecipe.create(function(container) {})
    .requireItem("item_in", input)
  );
}