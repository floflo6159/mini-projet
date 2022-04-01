
var Alias = require('../../models/iptables/alias');

exports.render = async function (req, res) {
  var defaultComponent = new Alias(req, res);

  await defaultComponent.initialize();
  
  var list = await defaultComponent.getAliasList();

  res.render('tmpl/alias.html', { items: list});
}
