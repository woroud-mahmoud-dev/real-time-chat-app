import 'package:dio/dio.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.contentType = 'application/json'
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.validateStatus = (_) => true;
      // addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  // static void addDioInterceptor() {
  //   dio?.interceptors.add(InterceptorsWrapper(
  //     onResponse: (response, handler) {
  //       print(response.data);
  //       // Check for unauthorized response status code
  //       if (response.statusCode == 401) {
  //         // Navigate to the login screen using
  //         Get.to(() => LoginScreen());
  //       }
  //       return handler.next(response);
  //     },
  //   ));

  //   dio?.interceptors.add(
  //     PrettyDioLogger(
  //       requestBody: true,
  //       requestHeader: true,
  //       responseHeader: true,
  //     ),
  //   );
  // }
  // static void addDioInterceptor() {
  //   dio?.interceptors.add(
  //     PrettyDioLogger(
  //       requestBody: true,
  //       requestHeader: true,
  //       responseHeader: true,
  //     ),
  //   );
  // }
}
