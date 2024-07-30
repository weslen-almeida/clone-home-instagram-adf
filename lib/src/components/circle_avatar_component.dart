import 'package:flutter/material.dart';

class CircleAvatarComponent extends StatelessWidget {
  const CircleAvatarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    //   return const Row(
    //     children: [
    //       Padding(
    //         padding: EdgeInsets.all(8),
    //         child: ImageAvatar(
    //           urlImage:
    //               'https://conteudo.imguol.com.br/c/entretenimento/ce/2018/10/05/rowan-atkinson-como-mr-bean-1538790413341_v2_900x506.png',
    //         ),
    //       ),
    //       ImageAvatar(
    //         urlImage:
    //             'https://www.einerd.com.br/wp-content/uploads/2016/09/eddie-murphy.jpg',
    //       ),
    //       SizedBox(
    //         width: 8,
    //       ),
    //       ImageAvatar(
    //         urlImage:
    //             'https://cdn.britannica.com/84/200584-050-7EC3F3F6/Jim-Carrey-2012.jpg',
    //       ),
    //     ],
    //   );
    // }
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Exemplo com 10 histórias
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // CircleAvatar(
                //   radius: 30,
                //   backgroundImage: NetworkImage(
                //       'https://via.placeholder.com/150'), // Imagem de exemplo
                // ),
                // SizedBox(height: 4),
                ImageAvatar(
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
