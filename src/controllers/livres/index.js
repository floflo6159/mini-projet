
var Index = require('../../models/iptables/index');

exports.render = async function (req, res) {
  var defaultComponent = new Index(req, res);

  await defaultComponent.initialize();
  
  var list = await defaultComponent.IndexList();

  res.render('tmpl/Index.html', { items: list});
}
