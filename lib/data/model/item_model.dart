import 'package:equatable/equatable.dart';

class ItemModel extends Equatable{
  int userId;
  int id;
  String title;
  String body;



  ItemModel({this.userId, this.id, this.title, this.body}){}

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    userId = parsedJson['userId'];
    id = parsedJson['id'];
    title = parsedJson['title'];
    body = parsedJson['body'];
  }

  @override
  // TODO: implement props
  List<Object> get props => [userId,id,title,body];
}
