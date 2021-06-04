// EXAMPLE MESSAGES IN CHAT SCREEN
import 'package:flutter_chat_ui/data/users.dart';
import 'package:flutter_chat_ui/models/message.dart';

List<Message> messages = <Message>[
  Message(
    sender: james,
    time: '5:30 PM',
    text: "Hey, how's it going? What did you do today?",
    isLiked: true,
    isUnread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    isUnread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: "How's the doggo?",
    isLiked: false,
    isUnread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    isUnread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    isUnread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    isUnread: true,
  ),
];
