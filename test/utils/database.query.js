const mysql = require('mysql');
const constants = require('../utils/constants');
class DatabaseQuery {
    constructor() {
        this.connection = mysql.createConnection({
            host: constants.databaseHost,
            port: constants.databasePort,
            user: constants.databaseUser,
            password: constants.databasePassword,
            database: constants.database
        });
    }

    async connect() {
        this.connection.connect(function (err) {
            if (err) throw err;
            console.log("Connected!");
        });
    }

    async disconnect() {
        this.connection.end();
    }

    // make a query to a selected table
    async query(sql) {
        return new Promise((resolve, reject) => {
            this.connection.query(sql, function (err, result) {
                if (err) reject(err);
                resolve(result);
            });
        });
    }
}

module.exports = new DatabaseQuery();