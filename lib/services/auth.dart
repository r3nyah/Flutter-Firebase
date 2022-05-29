import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sing in anon
  Future loginAno() async {
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
      User user = userCredential.user!;
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }
  }
