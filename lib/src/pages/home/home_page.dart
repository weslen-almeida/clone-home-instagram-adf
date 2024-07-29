import 'package:flutter/material.dart';
import 'package:myapp/src/components/feed_component.dart';

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
        body: FeedComponent()
        // ListView.builder(
        //   itemCount: 1,
        //   itemBuilder: (context, index) {
        //     return FeedComponent();
        //   },
        // ),
        );
  }
}
