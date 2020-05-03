class ItemModel {
  int _userId;
  int _id;
  String _title;
  String _body;

  int get userId => _userId;

  int get id => _id;

  String get title => _title;

  String get body => _body;

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    _userId = parsedJson['userId'];
    _id = parsedJson['id'];
    _title = parsedJson['title'];
    _body = parsedJson['body'];
  }
}
