import 'package:chatapp/models/user.dart' as app;
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on Firebase User
  app.User _userFromFirebaseUser(User user) {
    return user != null ? app.User(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<app.User> get user {
    return _auth.authStateChanges()
    //.map((User user) => _userFromFirebaseUser(user));
    .map(_userFromFirebaseUser);
  }
  // sign in anon
  Future signInAnon() async {
    try {
      User user = (await _auth.signInAnonymously()).user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      return null;
    }
  }

  // sign in with email & password
  Future signIn({String email, String password}) async {
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  // register with email & password

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

}