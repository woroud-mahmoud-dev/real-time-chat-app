import 'package:bloc/bloc.dart';
import 'package:chaty/features/home/domain/entities/all_active_users_entity.dart';
import 'package:chaty/features/home/domain/entities/all_conversataion.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/services/network/failuers.dart';
import '../../../domain/use_cases/get_all_active_users.dart';
import '../../../domain/use_cases/get_all_chats.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.getUserContacts, required this.getUserChats})
      : super(const HomeState.initial());
  final GetAllActiveUsers getUserContacts;
  final GetAllChats getUserChats;
  final messageController = TextEditingController();
  getAllActiveUsers() async {
    emit(const HomeState.loading());
    final response = await getUserContacts();
    response.fold((l) {
      print(l);
      if (l is UnAuthraizedFailure) {
        emit(const HomeState.error(''));
      } else {
        emit(const HomeState.error(''));
      }
    }, (r) {
      emit(HomeState.success(r));
    });
  }

  gerAllConversation() async {
    emit(const HomeState.loading());
    final response = await getUserChats();
    response.fold((l) {
      emit(const HomeState.error(''));
    }, (r) {
      emit(HomeState.getChatsSuccess(r));
    });
  }
}
