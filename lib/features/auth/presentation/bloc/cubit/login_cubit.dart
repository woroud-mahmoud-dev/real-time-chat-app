import 'package:chaty/core/utils/shared_pref_const.dart';
import 'package:chaty/features/auth/domain/entities/login_request_body.dart';
import 'package:chaty/features/auth/domain/use_cases/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

import '../../../../../core/error/failuers.dart';
import '../../../../../core/services/local/cache_helper.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginUseCas}) : super(const LoginState.initial());
  final loginFormKey = GlobalKey<FormState>();
  static LoginCubit get(context) => BlocProvider.of(context);
  final LoginUseCase loginUseCas;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  loginUser() async {
    emit(const LoginState.loading());
    final userResponse = await loginUseCas(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));
    userResponse.fold((l) {
      print(l);
      if (l is NotVerifedFailure) {
        emit(LoginState.unVerfiy(_mapFailureToMessage(l)));
      } else {
        emit(LoginState.error(_mapFailureToMessage(l)));
      }
    }, (r) {
      CacheHelper.saveData(
          key: SharedPrefConst.apiToken, value: r.accessToken ?? "");
      debugPrint("save Token : ===========>");
      debugPrint(CacheHelper.getData(key: SharedPrefConst.apiToken));
      debugPrint("save Token : ===========> Done ======================");

      emit(const LoginState.success());
    });
  }
  String? fcmToken;
  Future<void> getFcmToken() async {
    // Get FCM token
    String? token = await FirebaseMessaging.instance.getToken();

    fcmToken = token;
    print("FCM Token: $fcmToken"); // Print the FCM token in the console
  }
  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case const (OfflineFailure):
        return 'No Internet Connection';
      case const (NotVerifedFailure):
        return 'Your Account IS not Verified';
      case const (ServerFailure):
        return 'Server Error ,Please try again later !';
      case const (WrongDataFailure):
        return ' Error ,Please try again later !';
      default:
        return ' UnExpexted Error ,Please try again later !';
    }
  }
}
