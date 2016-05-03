import 'package:angular2/core.dart';

import 'dart:async';
//import 'package:http/http.dart' as http;
import 'package:youtube_dart_angular2/entities/user.dart';
import 'package:youtube_dart_angular2/components/mock_user.dart';

@Injectable()
class AuthService {
//final String CLIENT_ID = '718637650333-fd4d1dd8hj25o9dke4bj6rve41k1n00n.apps.googleusercontent.com';
//final String AUTH_SCOPE = 'https://www.googleapis.com/auth/youtube';
//final String REVOKE_TOKEN_URL = 'https://accounts.google.com/o/oauth2/revoke?token=';
//
//GAuth.setClient(CLIENT_ID);
//GAuth.setScope(AUTH_SCOPE);

//Future<bool> login() async => GAuth.login().then(setAuthToken);

Future<User> getUser() async => USER;
//
//Future<bool> isLoggedIn() async => GData.isLogin();
//
//Future<bool> checkAuth() async => GAuth.checkAuth();

//Future<String> logout() async => {
//var token = GAuth.getToken().$$state.value.access_token;
//GData.isLogin(false);
//
//return fetch(
//  REVOKE_TOKEN_URL + token,
//  headers: {
//  'Content-Type': 'application/json',
//  'Accept': 'application/json'
//});
//}

//Future<Map> setAuthToken() async => {
//    String token = GAuth.getToken().$$state.value.access_token;
//    return http.defaults.headers.common['Authorization'] = 'Bearer ' + token;
//}

}
