import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const colorHeader = Colors.white;

    return AppBar(
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
                child: Icon(Icons.messenger_outline_rounded),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
