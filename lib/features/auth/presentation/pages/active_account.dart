import 'package:chaty/features/auth/presentation/widgets/otp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/dependency_injection.dart';
import '../bloc/cubit/verify_cubit.dart';

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
        title: const Text('Enter Code To Active Account'),
      ),
      body: BlocProvider(
        create: (context) => getIt<ActiveAccountCubit>(),
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
