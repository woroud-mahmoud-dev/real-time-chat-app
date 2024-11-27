import 'package:chaty/core/services/local/cache_helper.dart';
import 'package:chaty/core/utils/shared_pref_const.dart';
import 'package:chaty/features/auth/presentation/widgets/otp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/dependency_injection.dart';
import '../bloc/cubit/active_account_cubit.dart';

class ActiveAccountScreen extends StatefulWidget {
  const ActiveAccountScreen({super.key});

  @override
  _ActiveAccountScreenState createState() => _ActiveAccountScreenState();
}

class _ActiveAccountScreenState extends State<ActiveAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Enter the code to activate your account'),
      ),
      body: BlocProvider(
        create: (context) => getIt<ActiveAccountCubit>(),
        child: const SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              OtpWidget(
                isCodeFalse: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
