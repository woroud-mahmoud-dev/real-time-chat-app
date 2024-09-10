import 'package:chaty/features/auth/presentation/widgets/otp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/dependency_injection.dart';
import '../bloc/cubit/verify_cubit.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter OTP'),
      ),
      body: BlocProvider(
        create: (context) => getIt<VerifyCubit>(),
        child: Container(
          width: double.infinity,
          child: const Column(
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
