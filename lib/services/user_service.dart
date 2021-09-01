import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:web_project/helpers/constants.dart';
import 'package:web_project/models/user.dart';

class UserService{
  String collection = "users";

  void createUser({
    String id,
    String name,
    String photo
  }){
    firebaseFirestore.collection(collection).doc(id).set(
      {
        'id': id,
        'name': name,
        'photo': photo
      }
    );
  }

  Future<UserModel> getUserByIDd(String id) =>
    firebaseFirestore
        .collection(collection)
        .doc(id)
        .get()
        .then(
          (user) => UserModel.fromSnapshot(user)
        );
  

  Future<bool> doesUserExist(String id) async =>
    firebaseFirestore
        .collection(collection)
        .doc(id)
        .get()
        .then(
          (value) => value.exists
        );

  Future<List<UserModel>> getAll() async=>
    firebaseFirestore
        .collection(collection)
        .get()
        .then(
          (result){
            List<UserModel> users = [];
            for(DocumentSnapshot user in result.docs)
              users.add(UserModel.fromSnapshot(user));
            
            return users;
          }
        );
  
}