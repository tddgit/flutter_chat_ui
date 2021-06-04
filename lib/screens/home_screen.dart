import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/constants/app_consts.dart';
import 'package:flutter_chat_ui/models/message.dart';
import 'package:flutter_chat_ui/models/user.dart';
import 'package:flutter_chat_ui/widgets/category_selector.dart';
import 'package:flutter_chat_ui/widgets/favorite_contacts.dart';
import 'package:flutter_chat_ui/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  List<Message> messages;
  List<User> favorites;
  List<String> categories;

  HomeScreen(
      {required this.messages,
      required this.favorites,
      required this.categories});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            iconSize: AppConsts.iconSizeAppBar,
            onPressed: () => 'TODO on pressed', //TODO: add onPressed function
            // ignore: long-method
          ),
          title: const Text(
            AppConsts.homeScreenTitle,
            style: TextStyle(
              fontSize: 28,
              // ignore: long-method
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              iconSize: AppConsts.iconSizeAppBar,
              color: Colors.white,
              onPressed: () => 'TODO on pressed', //TODO: add onPressed function
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(widget.categories),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    FavoriteContacts(widget.favorites),
                    RecentChats(widget.messages),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
