import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MMPAppFirebaseUser {
  MMPAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MMPAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MMPAppFirebaseUser> mMPAppFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MMPAppFirebaseUser>(
      (user) {
        currentUser = MMPAppFirebaseUser(user);
        return currentUser!;
      },
    );
