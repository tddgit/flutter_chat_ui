import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/message.dart';
import 'package:flutter_chat_ui/screens/chat_screen.dart';

import 'chat_tile.dart';

class RecentChats extends StatelessWidget {
  List<Message> messages;

  RecentChats(this.messages);

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30), // ignore: no-equal-arguments
            ),
          ),
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = messages[index];

              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatScreen(chat.sender),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5, right: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: chat.isUnread ? Color(0xFFFFEFEE) : Colors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft:
                          Radius.circular(20), // ignore: no-equal-arguments
                    ),
                  ),
                  child: ChatTile(chat),
                ),
              );
            },
          ),
        ),
      );
}
