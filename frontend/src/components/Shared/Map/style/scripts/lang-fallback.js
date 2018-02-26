// Forked from https://github.com/klokantech/gl-style-package-spec/blob/master/task/lang-fallback.js

exports.test = function(cfg) {
  var lf = cfg['layer-filter'];
  if (!lf) {
    throw new Error('lang-fallback.layer-filter must be defined');
  }
  if (!(lf instanceof Array)) {
    throw new Error('lang-fallback.layer-filter: expected Array');
  }
  if (
    lf.length < 3 ||
    lf[0] != 'in' ||
    lf[1] != 'layout.text-field' ||
    lf.some(function(item) {
      return typeof item != 'string';
    })
  ) {
    throw new Error(
      'lang-fallback.layer-filter: expected filter ["in", "layout.text-field", "value1", ...]',
    );
  }
  var decs = cfg['decorators'];
  if (!decs) {
    throw new Error('lang-fallback.decorators must be defined');
  }
  if (!(decs instanceof Array)) {
    throw new Error('lang-fallback.decorators: expected Array');
  }
  decs.forEach(function(dec, idx) {
    var postfix = dec['layer-name-postfix'] || '';
    if (typeof postfix != 'string') {
      throw new Error(
        'lang-fallback.decorators[].layer-name-postfix: expected string, null, or undefined',
      );
    }
    decs.slice(idx + 1).forEach(function(dec2) {
      var postfix2 = dec2['layer-name-postfix'] || '';
      if (postfix == postfix2) {
        throw new Error(
          'lang-fallback.decorators[].layer-name-postfix: expected unique values: ' +
            [postfix, postfix2].join(', '),
        );
      }
    });

    var tf = dec['layout.text-field'];
    if (typeof tf != 'string') {
      throw new Error(
        'lang-fallback.decorators[].layout.text-field: expected string',
      );
    }
    var fap = dec['filter-all-part'];
    if (!(fap instanceof Array)) {
      throw new Error(
        'lang-fallback.decorators[].filter-all-part: expected Array',
      );
    }
  });
};

exports.decorate = function(style, cfg) {
  var layers = style.layers;
  var lf = cfg['layer-filter'];
  var decorators = cfg['decorators'];
  var lfProp = lf[1];
  var lfValues = lf.slice(2);

  for (var i = layers.length - 1; i >= 0; i--) {
    var layer = layers[i];
    if (
      !(
        lf[0] === 'in' &&
        lfProp === 'layout.text-field' &&
        layer.layout &&
        layer.layout['text-field'] &&
        lfValues.indexOf(layer.layout['text-field']) >= 0
      )
    ) {
      continue;
    }
    for (var j = decorators.length - 1; j >= 0; j--) {
      var decorator = decorators[j];
      var postfix = decorator['layer-name-postfix'] || '';
      postfix = postfix.replace(/(^-+|-+$)/g, '');

      if (j > 0) {
        var newLayer = JSON.parse(JSON.stringify(layer));
        layers.splice(i + 1, 0, newLayer);
      } else {
        newLayer = layer;
      }
      newLayer.id += postfix ? '-' + postfix : '';
      newLayer.layout['text-field'] = decorator['layout.text-field'];
      if (newLayer.layout['symbol-placement'] === 'line') {
        newLayer.layout['text-field'] = newLayer.layout['text-field'].replace(
          '\n',
          ' ',
        );
      }
      var filterPart = decorator['filter-all-part'].concat();
      if (!newLayer.filter) {
        newLayer.filter = filterPart;
      } else if (newLayer.filter[0] == 'all') {
        newLayer.filter.push(filterPart);
      } else {
        newLayer.filter = ['all', newLayer.filter, filterPart];
      }
    }
  }
};
