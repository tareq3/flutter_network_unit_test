// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';


import 'package:flutter_network_unit_test/data/api_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

main() {
  test('api real test', () async{
    final ApiProvider apiProvider = ApiProvider(new Client());//real api call






    final item = await apiProvider.fetchPost();
    expect(item.id, 1);



  });

  test('api fake test', () async{

    //Fake response creation
    final client =new  MockClient((request) async {
      final mapJson= {'id': 123};
      return new  Response(json.encode(mapJson), 200);
    }) ;

    final ApiProvider apiProvider = ApiProvider(client);





    final item = await apiProvider.fetchPost();
    expect(item.id, 123);



  });
}
