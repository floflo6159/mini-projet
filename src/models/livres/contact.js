var sql = require('../db/db_mariadb');

var connexion = null;

class Contact {
  constructor(req, res) {
    this.req = req;
    this.res = res;

    connexion = new sql();

  }
  async initialize() {
    await connexion.startConnexion();

  }

}

module.exports = Contact;