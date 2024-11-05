class UserModel {
  final String name;
  final String email;

  factory UserModel.empty() => UserModel(name: "", email: "");

  UserModel({required this.name,required this.email});
}
