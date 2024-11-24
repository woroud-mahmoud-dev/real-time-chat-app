import 'package:chaty/features/auth/presentation/pages/active_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../bloc/cubit/register_cubit.dart';

class RegisterListener extends StatelessWidget {
  const RegisterListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Suceess || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            EasyLoading.show(status: 'Loading ...', dismissOnTap: false);
          },
          success: () {
            EasyLoading.dismiss();
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const ActiveAccountScreen()));
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
