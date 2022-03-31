var db = require('mariadb');

var connexion = null;
var options = {};

class DbMariaDB {
  constructor() { 
    options = {
      host: 'localhost',
      user: 'website-account',
      password: 'password-db-univ01',
      database: 'website-account'
    };
  }

  async startConnexion() {
    connexion = await db.createConnection(options);
  }
  
  async query(aQuery, anArgList) {
    return await connexion.query( aQuery, anArgList);
  }
  async close() {
    await connexion.end();
  }
}

module.exports = DbMariaDB;