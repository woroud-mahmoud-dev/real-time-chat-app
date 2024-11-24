import 'package:chaty/features/auth/presentation/bloc/cubit/login_cubit.dart';
import 'package:chaty/features/home/presentation/pages/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class LoginListener extends StatelessWidget {
  const LoginListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Suceess || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            EasyLoading.show(status: 'Loading ...', dismissOnTap: false);
          },
          success: () {
            EasyLoading.dismiss();
            Get.offAll(const HomeScreen());
          },
          error: (error) {
            EasyLoading.showError(error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
