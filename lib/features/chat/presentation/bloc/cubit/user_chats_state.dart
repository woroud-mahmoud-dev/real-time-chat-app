part of 'user_chats_cubit.dart';

@freezed
class UserChatsState with _$UserChatsState {
  const factory UserChatsState.initial() = _Initial;
  const factory UserChatsState.loading() = Loading;
  const factory UserChatsState.lestenSuccess() = ListenSuceess;
  const factory UserChatsState.getAllMessagesSucees() = GetAllMessagesSucees;

  const factory UserChatsState.sendMessageSuccess(
      MessageResponse messageResponse) = SendMessageResponse;
  const factory UserChatsState.error(String errormesg) = Error;
}
