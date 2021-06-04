import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/user.dart';
import 'package:flutter_chat_ui/widgets/contact_widget.dart';

class FavoriteContacts extends StatelessWidget {
  final List<User> favorites;

  FavoriteContacts(this.favorites);

  @override
  Widget build(BuildContext context) => GestureDetector(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Favorite Contacts',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.more_horiz,
                      ),
                      iconSize: 30,
                      color: Colors.blueGrey,
                      onPressed: () =>
                          print('TODO: add onPressed'), //TODO: add onPressed
                    ),
                  ],
                ),
              ),
              ContactsWidget(favorites),
            ],
          ),
        ),
      );
}
