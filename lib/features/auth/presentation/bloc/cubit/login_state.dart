part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success() = Suceess;
  const factory LoginState.unVerfiy(String errormesg) = UnVerfiy;
  const factory LoginState.error(String errormesg) = Error;
}
