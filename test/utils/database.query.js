const mysql = require('mysql2/promise');
const constants = require('../utils/constants');

class DatabaseQuery {
    constructor() {
        // Since we're using the promise version of mysql2, the connection
        // creation is slightly different. We directly assign the promise
        // returned by createConnection to this.connection.
        this.connectionPromise = mysql.createConnection({
            host: constants.databaseHost,
            port: constants.databasePort,
            user: constants.databaseUser,
            password: constants.databasePassword,
            database: constants.database
        });
    }

    async connect() {
        try {
            this.connection = await this.connectionPromise;
            console.log("Connected!");
        } catch (err) {
            console.error('Connection error', err);
            throw err;
        }
    }

    async disconnect() {
        if (this.connection) {
            await this.connection.end();
        }
    }

    async query(sql) {
        if (!this.connection) {
            await this.connect();
        }
        return this.connection.query(sql);
    }
}

module.exports = new DatabaseQuery();
