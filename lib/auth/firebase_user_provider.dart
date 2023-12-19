import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class InsurezyFirebaseUser {
  InsurezyFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

InsurezyFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<InsurezyFirebaseUser> insurezyFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<InsurezyFirebaseUser>(
      (user) {
        currentUser = InsurezyFirebaseUser(user);
        return currentUser!;
      },
    );
