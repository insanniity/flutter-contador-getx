import 'package:contador/app/data/models/user_model.dart';


abstract class ICadastroRepository {
  // Future<List<CadastroModel>> findAll();
  // Future<CadastroModel> findById(int id);
  Future<UserModel> saveUser({required String name, required int idade});
  // Future<CadastroModel> deleteById(int id);
}