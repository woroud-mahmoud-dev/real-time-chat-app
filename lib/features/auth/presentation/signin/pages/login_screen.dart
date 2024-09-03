import 'package:chaty/features/auth/presentation/signup/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/utils.dart';
import '../../signup/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 86, 238, 225),
        title: Text(
          'Login',
          style: AppStyle.style20Bold,
        ),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 117, 240, 230),
              Color.fromARGB(255, 54, 213, 200),
              Color.fromARGB(255, 51, 241, 225),
              //  Color.fromARGB(255, 37, 209, 143),
              //  AppColors.blueGreen2,
              Color.fromARGB(255, 73, 188, 255),
              AppColors.blueGreenMain,
            ])),
        width: double.infinity,
        child: Column(
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
            CustomTextField(
              controller: controller,
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
              controller: controller,
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
              onTapped: () {},
            ),
          ],
        ),
      )),
    );
  }
}
