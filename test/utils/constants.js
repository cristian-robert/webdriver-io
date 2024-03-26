class Constants {
  static get couponCode() {
    return 'friends100';
  }

  //database connection constants
    static get databaseHost() {
    return 'localhost';
  }

    static get databasePort() {
        return '3306';
    }

    static get databaseUser() {
        return 'root';
    }

    static get databasePassword() {
        return 'password';
    }

    static get database() {
        return 'wordpress';
    }

}

module.exports = Constants;