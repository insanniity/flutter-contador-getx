import 'package:contador/app/data/models/user_model.dart';
import 'package:contador/app/data/repositories/cadastro_repository/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class CadastroController {

  final int count = Get.arguments;
  final CadastroRepository _repository;

  final nameController = TextEditingController();
  final idadeController = TextEditingController();
  final listUser = <UserModel>[].obs;

  CadastroController({required CadastroRepository repository}) : _repository = repository;

  Future<void> addUser() async {
    final user = await _repository.saveUser(name: nameController.text, idade: int.parse(idadeController.text));
    if(user.id == null){
      Get.snackbar('Erro', 'Erro ao salvar usuário');
    }else{
      listUser.add(user);
      Get.snackbar('Sucesso', 'Usuário salvo com sucesso');
    }
  }


}