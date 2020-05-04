import 'dart:convert';
import 'dart:io';


import 'package:dio/dio.dart';

import 'model/item_model.dart';

class ApiProvider {
 final Dio dio;

  ApiProvider(this.dio);


  fetchPost() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts/1');


   var itemModel = ItemModel.fromJson(response.data); //we don't need to decode the response to json as dio already had done that for us

    return itemModel;
  }
}
