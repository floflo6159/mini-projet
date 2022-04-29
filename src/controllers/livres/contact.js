var Contact = require('../../models/livres/contact');

exports.render = async function (req, res) {
  var defaultComponent = new Contact(req, res);

  await defaultComponent.initialize();

  res.render('tmpl/contact.html', {});
} 