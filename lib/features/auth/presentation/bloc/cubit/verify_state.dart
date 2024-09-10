part of 'verify_cubit.dart';

@freezed
class VerifyState with _$VerifyState {
  const factory VerifyState.initial() = _Initial;
  const factory VerifyState.loading() = Loading;
  const factory VerifyState.success() = Suceess;
  const factory VerifyState.error(String errormesg) = Error;
}
