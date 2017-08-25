import decode from 'jwt-decode';
import { isTokenExpired } from './jwtHelper';

module.exports = {
  isAuthenticated() {
    var token = localStorage.getItem('jwt_user_token');
    if(token === null || token === "null") return false;
    return !isTokenExpired(token);
  },

  getRole() {
    var token = localStorage.getItem('jwt_user_token');
    if(token === null || token === "null") return false;
    return isTokenExpired(token) ? false : decode(token).role;
  },

  roleAuthorized(permittedRoles) {
    return permittedRoles.includes(this.getRole());
  },

  signout(cb) {
    localStorage.removeItem('jwt_user_token');
    cb.call();
  }
}
