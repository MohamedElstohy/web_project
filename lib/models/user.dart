import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  static const ID = "id";
  static const NAME = "name";
  static const PHOTO = "photo";

  String _id;
  String _name;
  String _photo;
  
  String get id => _id;
  String get name => _name;
  String get photo => _photo;

  UserModel.fromSnapshot(DocumentSnapshot snapshot){
    Map<String , dynamic> _body = snapshot.data() as Map<String, dynamic>;
    _name = _body[NAME];
    _photo = _body[PHOTO];
    _id = _body[ID];
  }
}