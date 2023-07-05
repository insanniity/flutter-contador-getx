import 'dart:convert';

import 'package:contador/app/data/models/user_model.dart';
import 'package:contador/app/data/provider/provider.dart';
import 'package:contador/app/data/repositories/cadastro_repository/repository_interface.dart';

class CadastroRepository implements ICadastroRepository{
  final MyApiClient _myAppClient;

  CadastroRepository({required MyApiClient myApiClient}) : _myAppClient = myApiClient;

  @override
  Future<UserModel> saveUser({required String name, required int idade}) async {
    final response = await _myAppClient.post<String>('/users', {'name': name, 'idade': idade});
    if(response.statusCode == 200){
      final data = jsonDecode(response.body!) as Map<String, dynamic>;
      return UserModel.fromJson(data);
    }
    return UserModel(name: '', idade: 0);
  }

}