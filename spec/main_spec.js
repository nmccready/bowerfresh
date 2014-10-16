var fs = require('fs');
var sh = require('execSync');
var assert = require('assert');

describe('bowerfresh index.js', function() {
  beforeEach(function() {
    sh.run('bower install');
    assert(fs.existsSync('bower_components/ns2/bower.json'));
  });
  it("should remove dependency", function() {
    require('../index.js')
    assert.notEqual(fs.existsSync('bower_components/ns2/bower.json'));
  });
  it("should remove dependency from cache", function() {
    require('../index.js')
    var out = sh.exec('bower cache list | grep ns2').stdout;
    assert(out, '');
  });
});