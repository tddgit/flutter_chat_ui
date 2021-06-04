import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/constants/app_consts.dart';
import 'package:flutter_chat_ui/screens/home_screen.dart';

import 'data/contacts.dart';
import 'data/messages.dart';

//Stopped on 41:00
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: AppConsts.appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          accentColor: const Color(0xFFFEF9EB),
        ),
        home: HomeScreen(
          messages: messages,
          favorites: favorites,
          categories: AppConsts.categories,
        ),
      );
}
