class UserModel {
  final String? name;
  final String? email;
  final String? password;
  final String? phone;
  final String? id;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    this.id,
  });
}
