class LoginRequestBody {
  final String password;
  final String email;

  LoginRequestBody({
    required this.password,
    required this.email,
  });
  Map<String, dynamic> toJson() => <String, dynamic>{
        'password': password,
        'email': email,
      };
}
