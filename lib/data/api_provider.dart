import 'dart:convert';

import 'package:http/http.dart';

import 'model/item_model.dart';

class ApiProvider {
  Client client ;

  ApiProvider(this.client);


  fetchPost() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    ItemModel itemModel = ItemModel.fromJson(json.decode(response.body));
    print(itemModel.id);
    return itemModel;
  }
}
