import 'package:flutter/material.dart';

class AppBarInstagram extends StatelessWidget {
  const AppBarInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        AppBar(
          title: const Text('Instagram header'),
        ),
      ],
    );
  }
}
