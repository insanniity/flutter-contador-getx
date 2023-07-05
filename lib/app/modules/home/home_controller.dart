import 'package:contador/app/routes/app_routes.dart';
import 'package:get/get.dart';



class HomeController extends GetxController {

  int count = 0;
  RxInt count2 = 0.obs;

  void setValor() {
    count++;
    update();
  }

  void setValor2() {
    count2++;
  }

  void accessNextPage() {
    Get.toNamed(Routes.CADASTRO, arguments: count);
  }

}