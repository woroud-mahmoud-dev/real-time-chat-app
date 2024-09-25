part of 'user_chats_cubit.dart';

@freezed
class UserChatsState with _$UserChatsState {
  const factory UserChatsState.initial() = _Initial;
  const factory UserChatsState.loading() = Loading;
  const factory UserChatsState.success(
      AllActiveUsersResponseEntity activeUsersResponseEntity) = Suceess;
  const factory UserChatsState.getChatsSuccess(
      AllConversationsResponse allConversationsResponse) = getChatsSucceess;
  const factory UserChatsState.sendMessageSuccess(
      MessageResponse messageResponse) = SendMessageResponse;
  const factory UserChatsState.error(String errormesg) = Error;
}
