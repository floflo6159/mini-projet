
var Nat = require('../../models/iptables/nat');

exports.render = async function (req, res) {
  var defaultComponent = new Nat(req, res);

  await defaultComponent.initialize();
  
  var natList = defaultComponent.getNatList();

    console.log(natList)
  res.render('tmpl/nat.html', { items: natList});
}
