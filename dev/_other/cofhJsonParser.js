/* 
Making batch changing inside JSON files of COFH-World
*/

const replace = require('replace-in-file')

replace.sync({
  files: 'config/cofh/world/*.json',
  from: /("dimension".*?\n?.*?"restriction".*?\n?.*?"blacklist".*?\n?.*?"value"[^\]]+?)(\[[^\]]+?\])/gm,
  to: (...args) => {
    const captureArr = new Set(eval(`${args[2]}`))
    captureArr.add(111)
    const arr = JSON.stringify([...captureArr].sort())
    console.log('arr :>> ', arr, args.pop())
    return `${args[1]}${arr}`
  },
  // dry: true
})