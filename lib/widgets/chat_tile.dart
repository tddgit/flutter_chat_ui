import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/message.dart';
import 'package:flutter_chat_ui/widgets/chat_tile_right_side.dart';

class ChatTile extends StatelessWidget {
  final Message chat;

  const ChatTile(this.chat);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(chat.sender.imageUrl),
              ),
              const SizedBox(width: 10),
              Column(
                children: <Widget>[
                  Text(
                    chat.sender.name,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text(
                      chat.text,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              ChatTileRightSide(chat),
            ],
          ),
        ],
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Message>('chat', chat));
  }
}
