import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MacropayTyCFirebaseUser {
  MacropayTyCFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

MacropayTyCFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MacropayTyCFirebaseUser> macropayTyCFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<MacropayTyCFirebaseUser>(
        (user) => currentUser = MacropayTyCFirebaseUser(user));
