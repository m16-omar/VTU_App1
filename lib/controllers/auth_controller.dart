import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> createNewUser(
      String email, String fullname, String password) async {
    String res = 'some error occured';

    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      res = 'success';
    } catch (e) {
      res = e.toString();
    }

    return res;
  }
}
