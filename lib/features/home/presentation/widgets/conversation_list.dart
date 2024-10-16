import 'package:chaty/features/home/domain/entities/all_active_users_entity.dart';
import 'package:get/route_manager.dart';

import '../../../chat/presentation/pages/chat_screen.dart';
import '../../domain/entities/all_conversataion.dart';
import 'package:flutter/material.dart';

class ConversationList extends StatelessWidget {
  final List<Conversation> conversations;

  const ConversationList({
    super.key,
    required this.conversations,
  });
  @override
  Widget build(BuildContext context) {
    if (conversations.isEmpty) {
      return const Expanded(child: Text('No Conversation yet!'));
    } else {
      return ListView.builder(
        itemCount: conversations.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(() => ChatScreen(
                  chatId: conversations[index].id,
                  user: ActiveUser(
                    isChatExist: true,
                    chatId: conversations[index].id,
                    email: conversations[index].userTwo.name,
                    emailCode: conversations[index].userTwo.name,
                    id: conversations[index].userTwo.id,
                    image: conversations[index].userTwo.name,
                    name: conversations[index].userTwo.name,
                    phone: conversations[index].userTwo.phone,
                  )));
            },
            child: Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://th.bing.com/th/id/OIP.byenSyw81CvjeS10wk49sgHaET?w=289&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                          maxRadius: 30,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  conversations[index].userTwo.name,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  conversations[index].messages.first.message,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Text(
                  //   time,
                  //   style: TextStyle(
                  //       fontSize: 12,
                  //       fontWeight:
                  //           isMessageRead ? FontWeight.bold : FontWeight.normal),
                  // ),
                ],
              ),
            ),
          );
        }),
      );
    }
  }
}
