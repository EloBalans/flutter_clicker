import 'package:firebase_auth/firebase_auth.dart';
import 'package:game_01/models/user.dart';
import 'package:game_01/services/database.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user){
    return user !=null ? User(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged
    .map(_userFromFirebaseUser);
  }

  Future signIn(String email, String password) async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email.trim(), password: password.trim());
      FirebaseUser user = result.user;

     
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e);
       switch (e.code) {
        case "ERROR_INVALID_EMAIL":
          return e.message;
          break;
        default:
          return null;
      }
    }

  }

  

  


  Future register(String email, String password, String username) async {
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email.trim(), password: password.trim());
      FirebaseUser user = result.user;
      await DatabaseService(uid: user.uid).updateUserData(username, 0, 0, 0, 'amnesia',1,0,10,10,10);
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e);
       switch (e.code) {
        case "ERROR_INVALID_EMAIL":
          return "zły email";
          break;
        case 'ERROR_USER_NOT_FOUND':
          return "nie ma takiego gracza";
          break;
        default:
          return null;
      }
    }

  }
  

  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
  

}