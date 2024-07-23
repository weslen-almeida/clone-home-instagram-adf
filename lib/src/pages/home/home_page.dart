import 'package:flutter/material.dart';
import 'package:myapp/src/components/app_bar.dart';
import 'package:myapp/src/components/circle_avatar_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: const [
          BottomAppBar(
            child: Row(
              children: [
                BottomAppBar(
                  child: Icon(Icons.favorite_border),
                ),
                BottomAppBar(
                  child: Icon(Icons.voice_chat_rounded),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            children: [
              Row(
                children: [
                  const CircleAvatarComponent()
                ],
              ),
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
