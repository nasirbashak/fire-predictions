import 'package:firebase_auth/firebase_auth.dart';
import 'package:fireprediction/models/user.dart';


class AuthService{

   FirebaseAuth _auth ;

  AuthService(){
    _auth =  FirebaseAuth.instance;
  }

  User _createUserFromFB(FirebaseUser user){

    return User(name : user.displayName, uid:user.uid) ;
  }



  //sign in annonimously
  Future<dynamic> signInAnnon() async{

    try{
      AuthResult result =  await _auth.signInAnonymously();
      FirebaseUser user = result.user;

      return _createUserFromFB(user);

    }catch(e){
      print(e.toString());
      return e.toString();

    }
  }




  //signin with email and password
  Future<dynamic> signInwithEmailandPassword(String email,String password) async{
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;

      return _createUserFromFB(user);

    }catch(e){
      print(e.toString());
      return e.toString();

    }
  }

   //register
   Future<dynamic> registerWithEmaillAndPassword(String email, String password) async{

     try{
       AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
       FirebaseUser user = result.user;

       //DatabaseService _database = DatabaseService(uid:user.uid);

       //_database.updateUserData('0', 'New Brew Crew Member', 100);

       return _createUserFromFB(user);
     }catch(e){
       print(e.toString());
       return e.toString();
     }
   }



  //sign out
  Future signout() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());

      return null;
    }
  }




  }