import 'package:chaty/features/auth/presentation/bloc/cubit/login_cubit.dart';
import 'package:chaty/features/auth/presentation/pages/register_screen.dart';
import 'package:chaty/features/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 86, 238, 225),
        title: Text(
          'Login',
          style: AppStyle.style20Bold,
        ),
      ),
      body: SafeArea(
          child: BlocProvider(
        create: (context) => getIt<LoginCubit>(),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            width: double.infinity,
            child: Column(
              children: [
                const LoginForm(),
                Row(
                  children: [
                    const Text("Don't have an Account ?"),
                    TextButton(
                      onPressed: () {
                        Get.to(RegisterScreen());
                      },
                      child: const Text("Register"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
