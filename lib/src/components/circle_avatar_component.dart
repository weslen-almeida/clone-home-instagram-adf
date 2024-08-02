import 'package:flutter/material.dart';

class CircleAvatarComponent extends StatelessWidget {
  const CircleAvatarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Exemplo com 10 histórias
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                const ImageAvatar(
                  urlImage:
                      'https://www.einerd.com.br/wp-content/uploads/2016/09/eddie-murphy.jpg',
                ),
                Text('User $index'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 70,
          height: 70,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.purple, Colors.red],
                begin: Alignment.topCenter),
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
      ],
    );
  }
}
