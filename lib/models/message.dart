import 'package:flutter_chat_ui/models/user.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool isUnread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.isUnread,
  });
}
