var Apropos = require('../../models/livres/apropos');

exports.render = async function (req, res) {
  var defaultComponent = new Apropos(req, res);

  await defaultComponent.initialize();

  res.render('tmpl/apropos.html', {});
} 