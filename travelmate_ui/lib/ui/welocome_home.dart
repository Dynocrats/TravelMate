import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TravelMate"),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Text("Google-Signin"),
              onPressed: () => _gSigin(),
                          color: Colors.red,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Text("Signin with Email"),
              onPressed: () {},
              color: Colors.orange,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Text("Create Account"),
              onPressed: () {},
              color: Colors.purpleAccent,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Text('Signout'),
              onPressed: () => _logout(),
              color: Colors.redAccent,
            ),
          ),

          Image.network(_imageUrl == null || _imageUrl.isEmpty ? "https://picsum.photos/250?image=9" : _imageUrl)
        ],
      ),
      )
      
    );
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User> _gSigin() async {
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken
    );

    UserCredential googleUserCredential = await _auth.signInWithCredential(credential);

    User user = googleUserCredential.user;
    print(user.displayName);
    print(user.photoURL);

    setState(() {
      _imageUrl = user.photoURL;
    });

    return user;

  }

  _logout() {
    setState(() {
      _googleSignIn.signOut();
      _imageUrl = null;
    });
  }
}