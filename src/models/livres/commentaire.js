var sql = require('../db/db_mariadb');

var connexion = null;

class Commentaire {
  constructor(req, res) {
    this.req = req;
    this.res = res;

    connexion = new sql();

  }
  async initialize() {
    await connexion.startConnexion();

  }

  async getCommentaireList() {
    try {
      this.commentaireList = await connexion.query("SELECT idCommentaire, Commentaire, Pseudo FROM Commentaire");

      return this.commentaireList;
    }
    catch (anError) {
      console.log('Error to get commentaire list !');

      // See error from SQL Client
      //console.log(anError);
    }
  }
  getCommentaire() {
    return this.commentaireList;
  }
}

module.exports = Commentaire;
