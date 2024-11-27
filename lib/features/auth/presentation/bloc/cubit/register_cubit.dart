import 'package:chaty/features/auth/domain/entities/register_request_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failuers.dart';
import '../../../../../core/services/local/cache_helper.dart';
import '../../../../../core/utils/shared_pref_const.dart';
import '../../../domain/use_cases/register.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.registerUserUseCase})
      : super(const RegisterState.initial());
  final RegisterUserUseCase registerUserUseCase;
  final registerFormKey = GlobalKey<FormState>();
  static RegisterCubit get(context) => BlocProvider.of(context);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  resgiterNewUser() async {
    emit(const RegisterState.loading());
    final userResponse = await registerUserUseCase(RegisterRequestBody(
      email: emailController.text,
      name: nameController.text,
      password: passwordController.text,
      phone: phoneController.text,
      // image: null,
    ));
    userResponse.fold((l) => emit(RegisterState.error(_mapFailureToMessage(l))),
        (r) {
      CacheHelper.saveData(
          key: SharedPrefConst.apiToken, value: r.accessToken );
      emit(const RegisterState.success());
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case const (OfflineFailure):
        return 'No Internet Connection';
      case const (ServerFailure):
        return 'Server Error ,Please try again later !';
      case const (WrongDataFailure):
        return ' Error ,Please try again later !';
      default:
        return ' UnExpexted Error ,Please try again later !';
    }
  }
}
