import 'package:chaty/features/auth/presentation/bloc/cubit/register_cubit.dart';
import 'package:chaty/features/auth/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 86, 238, 225),
        title: Text(
          'Register',
          style: AppStyle.style20Bold,
        ),
      ),
      body: SafeArea(
          child: BlocProvider(
        create: (context) => getIt<RegisterCubit>(),
        child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              width: double.infinity,
              child: Column(
                children: [
                  RegisterForm(),
                  Row(
                    children: [
                      const Text("Have an Account ?"),
                      TextButton(
                        onPressed: () {
                          Get.to(const LoginScreen());
                        },
                        child: const Text("Login"),
                      )
                    ],
                  ),
                ],
              )),
        ),
      )),
    );
  }
}
