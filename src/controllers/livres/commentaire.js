
var Commentaire = require('../../models/livres/commentaire');

exports.render = async function (req, res) {
  var defaultComponent = new Commentaire(req, res);

  await defaultComponent.initialize();
  
  var commentaireList = await defaultComponent.getCommentaireList();

  res.render('tmpl/commentaire.html', { items: commentaireList});
}
