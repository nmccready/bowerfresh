var fs = require('fs');
var sh = require('execSync')

var str = fs.readFileSync('bower.json', 'utf8');
// console.log(str);
var bowerObj = JSON.parse(str);

commands = ["bower uninstall", "bower cache clean"];
bowerObj["sofresh"].forEach(function(dep) {
  commands.forEach(function(cmd) {
    run = cmd + ' ' + dep;
    console.log(sh.exec(run).stdout);
  });
});