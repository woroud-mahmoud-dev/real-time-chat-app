import 'package:chaty/features/chat/presentation/pages/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../domain/entities/all_active_users_entity.dart';

class ActiveUsresList extends StatefulWidget {
  final List<ActiveUser> activeUsres;

  ActiveUsresList({
    super.key,
    required this.activeUsres,
  });
  @override
  _ActiveUsresListState createState() => _ActiveUsresListState();
}

class _ActiveUsresListState extends State<ActiveUsresList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.activeUsres.length,
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 16),
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.to(() => ChatScreen(
                  user: widget.activeUsres[index],
                ));
          },
          child: Container(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                            NetworkImage(widget.activeUsres[index].image ?? ""),
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
                                widget.activeUsres[index].name ?? "",
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              // Text(
                              //   widget.messageText,
                              //   style: TextStyle(
                              //       fontSize: 13,
                              //       color: Colors.grey.shade600,
                              //       fontWeight: widget.isMessageRead
                              //           ? FontWeight.bold
                              //           : FontWeight.normal),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Text(
                // "",
                //   style: TextStyle(
                //       fontSize: 12,
                //       fontWeight: widget.isMessageRead
                //           ? FontWeight.bold
                //           : FontWeight.normal),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
