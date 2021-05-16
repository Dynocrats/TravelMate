import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_signin/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthBloc {
  final authService = AuthService();
  final googleSignin = GoogleSignIn(scopes: ['email']);
  final fb = FacebookLogin();
  User gUser;
  User fbUser;

  Stream<User> get currentUser => authService.currentUser;

  Future<User> loginGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await googleSignin.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(  
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken
      );

      //Firebase Sign in
      final result = await authService.signInWithCredential(credential);

      gUser = result.user;

      print('${gUser.displayName}');

      saveLoginUser();

    } catch(error){
      print(error);
    }

  }

  Future<User> loginFacebook() async {
    print('Starting Facebook Login');

    final res = await fb.logIn(
        permissions: [
          FacebookPermission.publicProfile,
          FacebookPermission.email
        ]
    );

    switch(res.status){
      case FacebookLoginStatus.success:
        print('It worked');

        //Get Token
        final FacebookAccessToken fbToken = res.accessToken;

        //Convert to Auth Credential
        final AuthCredential credential
        = FacebookAuthProvider.credential(fbToken.token);

        //User Credential to Sign in with Firebase
        final result = await authService.signInWithCredential(credential);

        fbUser = result.user;

        print('${fbUser.displayName} is now logged in');

        saveLoginUser();

        break;

      case FacebookLoginStatus.cancel:
        print('The user canceled the login');
        break;
      case FacebookLoginStatus.error:
        print('There was an error');
        break;
    }
  }

  logout() {
    authService.logout();

  }

  logoutGoogle() {
    googleSignin.signOut();
  }

  logoutFB() {
    fb.logOut();
  }

  Future saveLoginUser() async{
    final user = FirebaseAuth.instance.currentUser;
    final db = FirebaseFirestore.instance;

    await db.collection('users').doc(user.uid).set({
      'userName': user.displayName,
      'userEmail': user.email,
      'userImageUrl': user.photoURL,
      'userType': 'traveller'
    });

    print(user);
  }
}