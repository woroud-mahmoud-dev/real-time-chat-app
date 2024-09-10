import 'package:chaty/features/auth/presentation/bloc/cubit/register_cubit.dart';
import 'package:chaty/features/auth/presentation/pages/active_account.dart';
import 'package:chaty/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

import '../widgets/custom_button.dart';
import 'register_listener.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            EasyLoading.show(status: 'Loading ...', dismissOnTap: false);
          },
          success: () {
            EasyLoading.dismiss();
            Get.offAll(const ActiveAccountScreen());
          },
          error: (error) {
            EasyLoading.showError(error);
          },
        );
      },
      builder: (context, state) {
        return Column(
          children: [
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
              height: 10.h,
            ),
            CustomTextField(
              controller: context.read<RegisterCubit>().nameController,
              validator: (value) {
                if (value == null || value.toString().isEmpty) {
                  return "required";
                }
                return null;
              },
              title: "name",
              hint: "",
              textInputType: TextInputType.text,
            ),
            CustomTextField(
              controller: context.read<RegisterCubit>().phoneController,
              validator: (value) {
                if (value == null || value.toString().isEmpty) {
                  return "required";
                }
                return null;
              },
              title: "Phone number",
              hint: "",
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              controller: context.read<RegisterCubit>().emailController,
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
              controller: context.read<RegisterCubit>().passwordController,
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
            const RegisterListener(),
            CustomButton(
              title: 'register'.toUpperCase(),
              textColor: const Color.fromARGB(255, 35, 128, 168),
              onTapped: () {
                context.read<RegisterCubit>().resgiterNewUser();
              },
            ),
          ],
        );
      },
    );
  }
}
