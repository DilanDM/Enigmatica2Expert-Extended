const fs = require('fs')
const curseforge = require('mc-curseforge-api')
const {injectInFile} = require('../lib/utils.js')
const _ = require('lodash')

const arrayUnion = (arr1, arr2, identifier) => {
  const array = [...arr1, ...arr2]

  return _.uniqBy(array, identifier)  
}

const e2e  = JSON.parse(fs.readFileSync('../Enigmatica 2 Expert/minecraftinstance.json', 'utf8')).installedAddons
const e2ee = JSON.parse(fs.readFileSync('./minecraftinstance.json', 'utf8')).installedAddons
const union = arrayUnion(e2e, e2ee, 'addonID')

const map_e2e  = {};  e2e.forEach(e=>map_e2e [e.addonID] = true)
const map_e2ee = {}; e2ee.forEach(e=>map_e2ee[e.addonID] = true)

console.log(`  💟 Asking Curseforge API for ${union.length} mods ...`)

Promise.all(union.map(m=>curseforge.getMod(m.addonID))).then(cursedUnion => {
  console.log(`  💟 Curseforge API returns ${cursedUnion.length} mods ...`)
  // cursedUnion.sort((a,b) => a.name.localeCompare(b.name))
  cursedUnion.sort((a,b) => b.downloads - a.downloads)

  let result = {
    BOTH:     cursedUnion.filter(a => map_e2e[a.id] && map_e2ee[a.id]),
    EXTENDED: cursedUnion.filter(a =>!map_e2e[a.id] && map_e2ee[a.id]),
    REMOVED:  cursedUnion.filter(a => map_e2e[a.id] &&!map_e2ee[a.id]),
  }
  
  for (const [key, rawList] of Object.entries(result)) {
    let list = rawList.map(l=>
      `<img src="${l.logo?.thumbnailUrl}" width="50"> | **\`${l.name}\`** <br> ${l.summary}`
      )

    injectInFile('MODS.md', 
    `<!-- Automatic generated list ${key} -->\n`,
    '\n<!-- End of list -->',
    ['Icon | Summary','------:|:------',...list].join('\n')
    )
  }
})
.catch(error => {
  console.error(error.message)
})