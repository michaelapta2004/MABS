/// This class defines the variables used in the [login_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LoginModel {
  int id;
  String email;
  String username;
  String phone;

  LoginModel({
    required this.id,
    required this.email,
    required this.username,
    required this.phone,
  });

  factory LoginModel.createFromJson(Map<String, dynamic> json) {
    return LoginModel(
      id: json["id"],
      email: json["email"],
      username: json["username"],
      phone: json["phone"],
    );
  }
}
