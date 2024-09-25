import 'package:chaty/core/utils/utils.dart';
import 'package:chaty/features/auth/presentation/bloc/cubit/active_account_cubit.dart';
import 'package:chaty/features/home/presentation/pages/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/route_manager.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpWidget extends StatelessWidget {
  final bool isCodeFalse;
  final void Function(String)? onCompleted;

  const OtpWidget({super.key, required this.isCodeFalse, this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ActiveAccountCubit, ActiveAccountState>(
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
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: PinCodeTextField(
                  appContext: context,
                  controller: context.read<ActiveAccountCubit>().pinController,
                  length: 5,
                  autoFocus: true,
                  cursorColor: AppColors.blueGreenMain,
                  keyboardType: TextInputType.number,
                  enableActiveFill: true,
                  onCompleted: (String code) {
                    context.read<ActiveAccountCubit>().activeUserAccount();
                  },
                  textStyle: const TextStyle(
                    color: AppColors.blueGreenMain,
                    fontSize: 22,
                    height: 1,
                  ),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    fieldWidth: 50,
                    fieldHeight: 50,
                    selectedColor: AppColors.blueGreenMain,
                    fieldOuterPadding:
                        const EdgeInsets.symmetric(horizontal: 5),
                    activeFillColor: Color.fromARGB(255, 149, 82, 82),
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Color.fromARGB(255, 149, 82, 82),
                    disabledColor: AppColors.blueGray,
                    activeColor: Colors.red,
                    inactiveColor: Color.fromARGB(255, 149, 82, 82),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
