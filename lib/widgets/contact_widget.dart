import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/models/user.dart';
import 'package:flutter_chat_ui/screens/chat_screen.dart';

class ContactsWidget extends StatelessWidget {
  final List<User> favorites;

  const ContactsWidget(
    this.favorites,
  );

  @override
  Widget build(BuildContext context) => Container(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: favorites.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () => print('Tapped on contact'),
            // onTap: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => ChatScreen(
            //       user: favorites[index],
            //     )
            //   )
            // ),
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChatScreen(favorites[index]),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(favorites[index].imageUrl),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      favorites[index].name,
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<User>('favorites', favorites));
  }
}
