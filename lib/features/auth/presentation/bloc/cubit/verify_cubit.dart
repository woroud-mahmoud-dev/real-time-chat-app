import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failuers.dart';
import '../../../domain/use_cases/active_account.dart';
import '../../../domain/use_cases/resend_code.dart';

part 'verify_state.dart';
part 'verify_cubit.freezed.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit({required this.resendActiveCode, required this.activeAccount})
      : super(const VerifyState.initial());
  final TextEditingController pinController = TextEditingController();
  final ResendActiveCode resendActiveCode;
  final ActiveAccountUseCase activeAccount;
  activeAccountUser() async {
    emit(const VerifyState.loading());
    final userResponse = await activeAccount(pinController.text);
    userResponse.fold((l) => emit(VerifyState.error(_mapFailureToMessage(l))),
        (r) => emit(const VerifyState.success()));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case const (OfflineFailure):
        return 'No Internet Connection';
      case const (NotVerifedFailure):
        return 'Your Account IS not Verified';
      case const (ServerFailure):
        return 'Server Error ,Please try again later !';
      case const (WrongDataFailure):
        return ' Error ,Please try again later !';
      default:
        return ' UnExpexted Error ,Please try again later !';
    }
  }
}
