var sql = require('../db/db_mariadb');

var connexion = null;

class Nat {
  constructor(req, res) {
    this.req = req;
    this.res = res;

    connexion = new sql();

  }
  async initialize() {
    await connexion.startConnexion();
    await this.getNatList();
  }

  async getNatList() {
    try {
      this.natList = await connexion.query("SELECT * FROM nat_rules");

    }
    catch (anError) {
      console.log('Error to get nat list !');

      // See error from SQL Client
      //console.log(anError);
    }
  }
  getNat() {
    return this.natList;
  }
}

module.exports = Nat;
