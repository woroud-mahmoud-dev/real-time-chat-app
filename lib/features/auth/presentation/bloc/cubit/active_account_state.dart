part of 'active_account_cubit.dart';

@freezed
class ActiveAccountState with _$ActiveAccountState {
  const factory ActiveAccountState.initial() = _Initial;
  const factory ActiveAccountState.loading() = Loading;
  const factory ActiveAccountState.success() = Suceess;
  const factory ActiveAccountState.error(String errormesg) = Error;
}
