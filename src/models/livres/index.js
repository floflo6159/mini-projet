var sql = require('../db/db_mariadb');

var connexion = null;

class Index {
  constructor(req, res) {
    this.req = req;
    this.res = res;

    connexion = new sql();

  }
  async initialize() {
    await connexion.startConnexion();

  }

  async getIndexList() {
    try {
      this.indexList = await connexion.query("SELECT idLivre, Titre, Auteur, Genre, Description FROM Livre");

      return this.indexList;
    }
    catch (anError) {
      console.log('Error to get index list !');

      // See error from SQL Client
      console.log(anError);
    }
  }
  getIndex() {
    return this.indexList;
  }
}

module.exports = Index;
