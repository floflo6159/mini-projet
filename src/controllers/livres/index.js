
var Index = require('../../models/livres/index');

exports.render = async function (req, res) {
  var defaultComponent = new Index(req, res);

  await defaultComponent.initialize();
  
  var list = await defaultComponent.getIndexList();

  res.render('tmpl/index.html', { items: list});
}
