
class RegisterRequestBody {
  final String name;
  // final File? image;
  final String phone;
  final String email;
  final String password;
  // final String fcm;

  RegisterRequestBody(
      {required this.phone,
      required this.password,
      // required this.fcm,
      // this.image,
      required this.email,
      required this.name});
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'phone': phone,
        'email': email,
        'password': password,
        // 'image': image,
        // 'fcm': fcm,
      };
}
