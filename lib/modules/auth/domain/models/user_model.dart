class LoginUserModel {
  final String name;
  final String email;

  factory LoginUserModel.empty() => LoginUserModel(name: "", email: "");

  LoginUserModel({required this.name,required this.email});
}

class UserDataModel {
  final String userId;

  UserDataModel({required this.userId});
}
