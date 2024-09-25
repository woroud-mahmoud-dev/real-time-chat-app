part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(
      AllActiveUsersResponseEntity activeUsersResponseEntity) = Suceess;
  const factory HomeState.getChatsSuccess(
      AllConversationsResponse allConversationsResponse) = getChatsSucceess;

  const factory HomeState.error(String errormesg) = Error;
}
