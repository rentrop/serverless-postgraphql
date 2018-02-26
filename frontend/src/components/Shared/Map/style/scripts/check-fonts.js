// Forked from https://github.com/klokantech/gl-style-package-spec/blob/master/task/check-fonts.js

var checkFonts = function(style) {
  var layersMissingFontSpec = [];

  style.layers.forEach(function(layer) {
    if (
      layer.layout &&
      layer.layout['text-field'] &&
      (!layer.layout['text-font'] || layer.layout['text-font'].length === 0)
    ) {
      layersMissingFontSpec.push(layer.id);
    }
  });

  if (layersMissingFontSpec.length > 0) {
    console.error(
      'ERROR: The following layers specify "text-field", but no "text-font":',
    );
    console.error('    ' + layersMissingFontSpec.join(', '));
    process.exit(1);
  }
};

module.exports = exports = checkFonts;
