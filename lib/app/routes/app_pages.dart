import 'package:contador/app/modules/cadastro/cadastro_binding.dart';
import 'package:contador/app/modules/cadastro/cadastro_page.dart';
import 'package:contador/app/modules/home/home_binding.dart';
import 'package:contador/app/modules/home/home_page.dart';
import 'package:get/get.dart';

import 'app_routes.dart';


class AppPages {

  AppPages._();

  static final routes = <GetPage>[
    GetPage(name: Routes.HOME, page: () => const HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.CADASTRO, page: () => const CadastroPage(), binding: CadastroBinding()),
  ];



}