
import 'package:contador/app/data/provider/provider.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class MyApiClientBinding implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => MyApiClient(), fenix: true);
  }


}