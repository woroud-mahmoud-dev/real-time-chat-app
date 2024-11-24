import 'package:chaty/features/auth/presentation/pages/active_account.dart';
import 'package:chaty/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../home/presentation/pages/homeScreen.dart';
import '../bloc/cubit/login_cubit.dart';
import '../widgets/custom_button.dart';
import 'login_listener.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading ||
          current is Suceess ||
          current is Error ||
          current is UnVerfiy,
      listener: (context, state) {
        state.whenOrNull(
          unVerfiy: (mes) {
            EasyLoading.dismiss();
            Get.offAll(const ActiveAccountScreen());
          },
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
      builder: (context, state) {
        return Column(
          children: [
            const LoginListener(),
            const Center(
              child: Icon(
                Icons.chat_sharp,
                size: 80,
                color: Color.fromARGB(255, 35, 128, 168),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomTextField(
              controller: context.read<LoginCubit>().emailController,
              validator: (value) {
                if (value == null || value.toString().isEmpty) {
                  return "required";
                }
                return null;
              },
              title: "email",
              hint: "",
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              controller: context.read<LoginCubit>().passwordController,
              validator: (value) {
                if (value == null || value.toString().isEmpty) {
                  return "required";
                }
                return null;
              },
              title: "password",
              hint: "",
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              title: 'login'.toUpperCase(),
              textColor: const Color.fromARGB(255, 35, 128, 168),
              onTapped: () {
                context.read<LoginCubit>().loginUser();
              },
            ),
          ],
        );
      },
    );
  }
}
