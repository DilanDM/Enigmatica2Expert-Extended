/* 

  This file will be evaluated when Patchouli.js generating book

*/

const {loadJson, renameDeep} = require('../utils.js');



// Extract item list from loot data
const defaultLoot_json = loadJson("../config/betterquesting/DefaultLoot.json");
const lootboxes = {};
const bareLoot = {}
for (const [k,v1] of Object.entries(defaultLoot_json["groups:9"])) {
  var currRarity = {
    weight: v1["weight:3"],
    rewards: []
  };
  lootboxes[v1["name:8"]] = currRarity;

  var currBareLoot = [];
  bareLoot[v1["name:8"]] = currBareLoot;

  for (const [k,v2] of Object.entries(v1["rewards:9"])) {
    var currReward = {
      weight: v2["weight:3"],
      items: {}
    };
    currRarity.rewards.push(currReward);

    for (const [k,v] of Object.entries(v2["items:9"])) {
      var itemName = v["id:8"] + (v["Damage:2"]!=0?(":"+v["Damage:2"]):"");
      var itemCount = v["Count:3"];
      var itemTag = v["tag:10"] ? renameDeep(v["tag:10"], key => key.split(":").shift()) : undefined;
      var tagAsString = itemTag ? JSON.stringify(itemTag) : "";

      var resultString = itemName+"<count_here>"+tagAsString;

      currReward.items[resultString] = (currReward.items[resultString] || 0) + itemCount;
    }

    for (const [k,v] of Object.entries(currReward.items)) {
      currBareLoot.push([
        k.replace("<count_here>", v>1 ? "#"+v : ""),
        currReward.weight
      ])
    }
  }
}

var location = {
  category: "Knowledge",
  subcategory: "Quest and loot",
	entry:"Lootboxes",
	icon:	"bq_standard:loot_chest",
}

Patchouli_js({
  ...location,
	type:	"spotlight_advanced",
	item4: "bq_standard:loot_chest",
  item3: "bq_standard:loot_chest:25",
  item2: "bq_standard:loot_chest:50",
  item1: "bq_standard:loot_chest:75",
  item0: "bq_standard:loot_chest:100",
	uneven: true,
	_text: `Items that drops from different lootboxes`,
})

for (const [k,v] of Object.entries(bareLoot)) {
  Patchouli_js(paged({
      ...location,
      type:	"grid",
      title: k
    }, 42, v
  ))
}