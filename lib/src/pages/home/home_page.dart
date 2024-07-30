import 'package:flutter/material.dart';
import 'package:myapp/src/components/circle_avatar_component.dart';
import 'package:myapp/src/components/feed_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const colorHeader = Colors.white;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorHeader,
        title: const Text('Instagram'),
        actions: const [
          BottomAppBar(
            color: colorHeader,
            child: Row(
              children: [
                BottomAppBar(
                  color: colorHeader,
                  child: Icon(Icons.favorite_border),
                ),
                BottomAppBar(
                  color: colorHeader,
                  child: Icon(Icons.voice_chat_rounded),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const CircleAvatarComponent(),
          Divider(height: 1, color: Colors.grey[300],),
          const FeedComponent(),
        ],
      )
    );
  }
}
