// Forked from https://github.com/klokantech/gl-style-package-spec/blob/master/task/test.js

var fs = require('fs-extra');
var mbgl = require('@mapbox/mapbox-gl-style-spec');
var execSync = require('child_process').execSync;
var checkFonts = require('./check-fonts');
var langFallback = require('./lang-fallback.js');

var stylePath = 'src/components/Map/style/style.json';
var styleString = fs.readFileSync(stylePath, 'utf8');
var style = JSON.parse(styleString);

var errors = mbgl.validate(style);
if(errors && errors.length) {
  console.error(
      'ERROR: The style is not valid according to mapbox-gl-style-spec.');
  console.error(errors);
  process.exit(1);
}

checkFonts(style);

if(!style.sources.openmaptiles) {
  console.log('WARNING: Style does not contain "openmaptiles" source.');
}
if(!style.metadata['openmaptiles:version']) {
  console.log('WARNING: Style does not contain "openmaptiles:version" metadata.');
}

var formattedStyleString = mbgl.format(style);
if(styleString.trim() !== formattedStyleString.trim()) {
  console.log(
    'WARNING: Style is not formatted. You should use "gl-style-format"\n' +
    'before commit. See https://github.com/mapbox/mapbox-gl-style-spec');
}

var langCfgPath = '../lang-fallback.json';
if(fs.existsSync(langCfgPath)) {
  var langCfgStr = fs.readFileSync(langCfgPath, 'utf8');
  var langCfg = JSON.parse(langCfgStr);
  langFallback.test(langCfg);
}
