import 'package:get/get_connect/connect.dart';
import 'package:task_app/Repository/Endpoint.dart';

import '../Model/LoginModel.dart';

class Repository extends GetConnect {
  @override
  void onInit() {
    httpClient.timeout = const Duration(seconds: 10);
    super.onInit();
  }

  Future<LoginModel> loginUser(
    String email,
    int password,
  ) async {
    String endpoint = EndpointConfig.getEndpoint(ENDPOINT.LOGIN);

    Map<String, dynamic> data = {
      'email': email,
      'password': password,
    };

    var formData = FormData(data);
    print('yvuulj bui data $data');
    print('endpoint $endpoint');
    final response = await post(endpoint, formData);
    print('response.statusCode ${response.statusCode}');
    print('response $response');
    if (response.statusCode == 200) {
      print('login nice ${response.bodyString.toString()}');
      return loginModelFromJson(response.bodyString.toString());
    } else {
      print('login miaa ${response.bodyString.toString()}');
      return loginModelFromJson(response.bodyString.toString());
    }
  }
}
