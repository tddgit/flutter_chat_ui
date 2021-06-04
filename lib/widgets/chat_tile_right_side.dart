import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/message.dart';

class ChatTileRightSide extends StatelessWidget {
  final Message chat;

  ChatTileRightSide(this.chat);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          chat.time,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        chat.isUnread
            ? Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'NEW',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              )
            : const Text(''),

        // ignore: long-method
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Message>('chat', chat));
  }
}
