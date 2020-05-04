// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:flutter_network_unit_test/data/api_provider.dart';
import 'package:flutter_network_unit_test/data/model/item_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class ApiProviderMock extends Mock implements ApiProvider{}
main() {

  ApiProviderMock apiProviderMock;

  setUp((){
    apiProviderMock= ApiProviderMock();

  });

  group("test apis", (){
    final resModel = ItemModel(id: 10);
    test("test my api", () async{
    //  final responsePayload = jsonEncode({"id":2});
    //  final httpResponse = ResponseBody.fromString(responsePayload, 200);


      when(apiProviderMock.fetchPost()).thenAnswer((realInvocation) async=> resModel);
      final response = await apiProviderMock.fetchPost();

      expect(response,resModel);
    },
    );

  });

  test('api real test', () async{
    final ApiProvider apiProvider = ApiProvider(new Dio());//real api call






    final item = await apiProvider.fetchPost();
    expect(item.id, 1);



  });

//dio doesn't provide any MockDIo object for us for doing mock test we need help of mockito

}
