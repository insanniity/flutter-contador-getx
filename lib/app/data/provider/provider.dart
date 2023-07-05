import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

class MyApiClient extends GetConnect {

  final String _baseUrl = 'https://jsonplaceholder.typicode.com';

  @override
  void onInit() {
    httpClient.baseUrl = _baseUrl;
    httpClient.timeout = const Duration(seconds: 30);
    httpClient.addRequestModifier((Request request) async {
      request.headers.clear();
      request.headers['Content-Type'] = 'application/json';
      request.headers['Accept'] = 'application/json';
      return request;
    });
    super.onInit();
  }


}