
var Nat = require('../../models/livres/nat');

exports.render = async function (req, res) {
  var defaultComponent = new Nat(req, res);

  await defaultComponent.initialize();
  
  var natList = await defaultComponent.getNatList();

  res.render('tmpl/header.html', { items: natList});
}
