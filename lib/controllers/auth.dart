import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:web_project/helpers/constants.dart';
import 'package:web_project/models/user.dart';
import 'package:web_project/services/user_service.dart';

enum Status {Uninitialized , Authenticated , Authenticating, Unauthenticated}

class AuthProvider{
  User _user;
  Status _status = Status.Uninitialized;
  UserService _service = UserService();

  UserModel _userModel;
  GoogleSignIn _googleSignIn = GoogleSignIn();

  UserModel get userModel => _userModel;
  User get user => _user;
  Status get status => _status;

  AuthProvider.init(){
    _fireSetUp();
  }


  _fireSetUp() async{
    await initialization.then((value){
      // auth.authStateChanges().listen((event) {});
    });
  }
  Future<Map<String , dynamic>> signInWithGoogle() async{
    try{
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken
      );

      await auth.signInWithCredential(credential).then((userCredential) async{
        _user = userCredential.user;
        if(!await _service.doesUserExist(_user.uid)){
          _service.createUser(
            id: _user.uid,
            name: _user.displayName,
            photo: _user.photoURL
          );
          await initializeUserModel();
        } else{
          await initializeUserModel();
        }
      });
      return {'success':true , 'message':'success'};
    } catch(e){
      return {'success':false , 'message':e.toString()};
    }
  }

  Future<bool> initializeUserModel() async{

  }

}