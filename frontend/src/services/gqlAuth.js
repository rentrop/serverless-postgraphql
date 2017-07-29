import { isTokenExpired } from './jwtHelper'

module.exports = {
  isAuthenticated() {
    var token = localStorage.getItem('jwt_user_token');
    if(token === null || token === "null") return false;
    return !isTokenExpired(token);
  },

  signout(cb) {
    localStorage.removeItem('jwt_user_token');
    cb.call();
  }
}
