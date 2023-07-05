

class UserModel {

  final String name;
  final int idade;
  final String? id;

  UserModel({
    required this.name,
    required this.idade,
    this.id,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      idade: json['idade'],
      id: json['id'],
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'idade': idade,
      'id': id,
    };
  }

}