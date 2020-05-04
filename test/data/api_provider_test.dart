// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:flutter_network_unit_test/data/api_provider.dart';
import 'package:flutter_test/flutter_test.dart';


main() {
  test('api real test', () async{
    final ApiProvider apiProvider = ApiProvider(new Dio());//real api call






    final item = await apiProvider.fetchPost();
    expect(item.id, 1);



  });

//dio doesn't provide any MockDIo object for us for doing mock test we need help of mockito
}
