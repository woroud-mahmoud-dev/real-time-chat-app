import 'package:chaty/core/di/dependency_injection.dart';
import 'package:chaty/features/home/domain/entities/all_active_users_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../core/services/local/cache_helper.dart';
import '../../../../core/utils/shared_pref_const.dart';
import '../bloc/cubit/user_chats_cubit.dart';

class ChatScreen extends StatefulWidget {
  final ActiveUser user;
  final int? chatId;
  ChatScreen({super.key, required this.user, this.chatId});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollToEnd();

    super.initState();
  }

  Future<void> scrollToEnd() async {
    await Future.delayed(const Duration(
        milliseconds: 300)); // Delay for the list to rebuild with new data
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UserChatsCubit>()..getAllChatMessages(widget.chatId),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          widget.user.name ?? "",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Online",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.settings,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: BlocConsumer<UserChatsCubit, UserChatsState>(
          listener: (context, state) {
            state.maybeWhen(orElse: () {
              EasyLoading.dismiss();
              scrollToEnd();
            }, getAllMessagesSucees: () {
              EasyLoading.dismiss();
              context.read<UserChatsCubit>().messageController.clear();
              scrollToEnd();
            },
                //    loading: () => EasyLoading.show(),
                lestenSuccess: () {
              EasyLoading.dismiss();
              scrollToEnd();
              context.read<UserChatsCubit>().messageController.clear();
            }, sendMessageSuccess: (re) {
              scrollToEnd();
              // EasyLoading.dismiss();
              // EasyLoading.showSuccess("Send Message Done");

              context.read<UserChatsCubit>().messageController.clear();
            });
          },
          builder: (context, state) {
            return Stack(
              children: <Widget>[
                ListView.builder(
                  controller: _scrollController,
                  itemCount: context.read<UserChatsCubit>().messages.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 10, bottom: 60),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(
                          left: 14, right: 14, top: 10, bottom: 10),
                      child: Align(
                        alignment: (context
                                    .read<UserChatsCubit>()
                                    .messages[index]
                                    .userId ==
                                CacheHelper.getData(
                                  key: SharedPrefConst.userId,
                                ).toString()
                            ? Alignment.topLeft
                            : Alignment.topRight),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (context
                                        .read<UserChatsCubit>()
                                        .messages[index]
                                        .userId !=
                                    CacheHelper.getData(
                                      key: SharedPrefConst.userId,
                                    ).toString()
                                ? const Color.fromARGB(255, 219, 235, 242)
                                : const Color.fromARGB(255, 144, 249, 242)),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            context
                                .read<UserChatsCubit>()
                                .messages[index]
                                .message,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                    height: 60,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextField(
                            controller: context
                                .read<UserChatsCubit>()
                                .messageController,
                            decoration: const InputDecoration(
                                hintText: "Write message...",
                                hintStyle: TextStyle(color: Colors.black54),
                                border: InputBorder.none),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            context
                                .read<UserChatsCubit>()
                                .sendMessageOrStartChat(
                                    chatId: widget.chatId,
                                    user2Id: widget.user.id);
                          },
                          backgroundColor: Colors.blue,
                          elevation: 0,
                          child: const Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
