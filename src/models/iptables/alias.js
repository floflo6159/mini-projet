var sql = require('../db/db_mariadb');

var connexion = null;

class Alias {
  constructor(req, res) {
    this.req = req;
    this.res = res;

    connexion = new sql();

  }
  async initialize() {
    await connexion.startConnexion();

  }

  async getAliasList() {
    try {
      this.aliasList = await connexion.query("SELECT id, name, ipAddress, port FROM nat_alias");

      return this.aliasList;
    }
    catch (anError) {
      console.log('Error to get alias list !');

      // See error from SQL Client
      //console.log(anError);
    }
  }
  getAlias() {
    return this.aliasList;
  }
}

module.exports = Alias;
