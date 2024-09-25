import 'package:chaty/core/di/dependency_injection.dart';
import 'package:chaty/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/all_conversataion.dart';
import '../bloc/cubit/home_cubit.dart';
import '../widgets/conversation_list.dart';

class AllCahtsTap extends StatelessWidget {
  const AllCahtsTap({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..gerAllConversation(),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All My Chats',
              style: AppStyle.style20Bold,
            ),
            BlocConsumer<HomeCubit, HomeState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.maybeWhen(
                  error: (e) => const SizedBox.shrink(),
                  loading: () => const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  getChatsSuccess: (allConversations) {
                    final List<Conversation> conversations =
                        allConversations.data;
                    print(conversations.length);
                    return Expanded(
                      child: ListView.builder(
                        itemCount: conversations.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(top: 16),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ConversationList(
                            name: conversations[index].userTwo.name ?? "",
                            messageText:
                                conversations[index].messages.first.message ??
                                    "",
                            imageUrl: conversations[index].userOne.image ?? "",
                            time: "",
                            isMessageRead:
                                (index == 0 || index == 3) ? true : false,
                          );
                        },
                      ),
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
